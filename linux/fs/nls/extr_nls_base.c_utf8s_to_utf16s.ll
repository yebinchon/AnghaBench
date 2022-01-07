; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_base.c_utf8s_to_utf16s.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_base.c_utf8s_to_utf16s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@PLANE_SIZE = common dso_local global i32 0, align 4
@SURROGATE_PAIR = common dso_local global i32 0, align 4
@SURROGATE_BITS = common dso_local global i32 0, align 4
@SURROGATE_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8s_to_utf16s(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %10, align 8
  store i32* %15, i32** %12, align 8
  br label %16

16:                                               ; preds = %109, %5
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %22, %19, %16
  %27 = phi i1 [ false, %19 ], [ false, %16 ], [ %25, %22 ]
  br i1 %27, label %28, label %110

28:                                               ; preds = %26
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %96

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @utf8_to_utf32(i32* %34, i32 %35, i32* %14)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %118

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @PLANE_SIZE, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %110

57:                                               ; preds = %53
  %58 = load i32, i32* @PLANE_SIZE, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %12, align 8
  %63 = ptrtoint i32* %61 to i32
  %64 = load i32, i32* @SURROGATE_PAIR, align 4
  %65 = load i32, i32* %14, align 4
  %66 = ashr i32 %65, 10
  %67 = load i32, i32* @SURROGATE_BITS, align 4
  %68 = and i32 %66, %67
  %69 = or i32 %64, %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @put_utf16(i32 %63, i32 %69, i32 %70)
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %12, align 8
  %74 = ptrtoint i32* %72 to i32
  %75 = load i32, i32* @SURROGATE_PAIR, align 4
  %76 = load i32, i32* @SURROGATE_LOW, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @SURROGATE_BITS, align 4
  %80 = and i32 %78, %79
  %81 = or i32 %77, %80
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @put_utf16(i32 %74, i32 %81, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, 2
  store i32 %85, i32* %11, align 4
  br label %95

86:                                               ; preds = %42
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %12, align 8
  %89 = ptrtoint i32* %87 to i32
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @put_utf16(i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %86, %57
  br label %109

96:                                               ; preds = %28
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %12, align 8
  %99 = ptrtoint i32* %97 to i32
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %7, align 8
  %102 = load i32, i32* %100, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @put_utf16(i32 %99, i32 %102, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %96, %95
  br label %16

110:                                              ; preds = %56, %26
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %110, %39
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @utf8_to_utf32(i32*, i32, i32*) #1

declare dso_local i32 @put_utf16(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

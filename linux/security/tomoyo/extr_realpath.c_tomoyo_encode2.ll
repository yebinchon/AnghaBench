; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_realpath.c_tomoyo_encode2.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_realpath.c_tomoyo_encode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tomoyo_encode2(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %128

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %50, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %11, align 1
  %28 = load i8, i8* %11, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 92
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %7, align 4
  br label %49

34:                                               ; preds = %22
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sgt i32 %36, 32
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp slt i32 %40, 127
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %48

45:                                               ; preds = %38, %34
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %18

53:                                               ; preds = %18
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 10
  %58 = load i32, i32* @GFP_NOFS, align 4
  %59 = call i8* @kzalloc(i32 %57, i32 %58)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  store i8* null, i8** %3, align 8
  br label %128

63:                                               ; preds = %53
  %64 = load i8*, i8** %9, align 8
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %4, align 8
  store i8* %65, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %123, %63
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %126

70:                                               ; preds = %66
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %12, align 1
  %76 = load i8, i8* %12, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 92
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  store i8 92, i8* %80, align 1
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  store i8 92, i8* %82, align 1
  br label %122

84:                                               ; preds = %70
  %85 = load i8, i8* %12, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp sgt i32 %86, 32
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp slt i32 %90, 127
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i8, i8* %12, align 1
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %9, align 8
  store i8 %93, i8* %94, align 1
  br label %121

96:                                               ; preds = %88, %84
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  store i8 92, i8* %97, align 1
  %99 = load i8, i8* %12, align 1
  %100 = zext i8 %99 to i32
  %101 = ashr i32 %100, 6
  %102 = add nsw i32 %101, 48
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i8, i8* %12, align 1
  %107 = zext i8 %106 to i32
  %108 = ashr i32 %107, 3
  %109 = and i32 %108, 7
  %110 = add nsw i32 %109, 48
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %9, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i8, i8* %12, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 7
  %117 = add nsw i32 %116, 48
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %9, align 8
  store i8 %118, i8* %119, align 1
  br label %121

121:                                              ; preds = %96, %92
  br label %122

122:                                              ; preds = %121, %79
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %66

126:                                              ; preds = %66
  %127 = load i8*, i8** %10, align 8
  store i8* %127, i8** %3, align 8
  br label %128

128:                                              ; preds = %126, %62, %16
  %129 = load i8*, i8** %3, align 8
  ret i8* %129
}

declare dso_local i8* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

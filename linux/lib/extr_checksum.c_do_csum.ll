; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_checksum.c_do_csum.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_checksum.c_do_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @do_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_csum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %124

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 1, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %20, %13
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %99

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = and i64 2, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = bitcast i8* %37 to i16*
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %4, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %36, %31
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 4
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, -4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8* %55, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %72, %50
  %57 = load i8*, i8** %3, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ugt i32 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %56
  %73 = load i8*, i8** %3, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ult i8* %73, %74
  br i1 %75, label %56, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 65535
  %82 = load i32, i32* %6, align 4
  %83 = lshr i32 %82, 16
  %84 = add i32 %81, %83
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %76, %47
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, 2
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i8*, i8** %3, align 8
  %91 = bitcast i8* %90 to i16*
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i32
  %94 = load i32, i32* %6, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  store i8* %97, i8** %3, align 8
  br label %98

98:                                               ; preds = %89, %85
  br label %99

99:                                               ; preds = %98, %28
  %100 = load i32, i32* %4, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load i8*, i8** %3, align 8
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl i32 %106, 8
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %103, %99
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @from32to16(i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32, i32* %6, align 4
  %117 = lshr i32 %116, 8
  %118 = and i32 %117, 255
  %119 = load i32, i32* %6, align 4
  %120 = and i32 %119, 255
  %121 = shl i32 %120, 8
  %122 = or i32 %118, %121
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %115, %110
  br label %124

124:                                              ; preds = %123, %12
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @from32to16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

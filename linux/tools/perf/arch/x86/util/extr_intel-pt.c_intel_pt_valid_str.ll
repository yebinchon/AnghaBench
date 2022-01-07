; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_valid_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_valid_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @intel_pt_valid_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_valid_str(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 1
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %87, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ule i32 %14, 64
  br i1 %15, label %16, label %92

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %50 [
    i32 0, label %23
    i32 1, label %35
    i32 2, label %48
    i32 3, label %49
  ]

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %28, %30
  %32 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %27, i64 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %20, %23
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %40, %42
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %39, i64 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %51

48:                                               ; preds = %20
  store i32 3, i32* %9, align 4
  br label %51

49:                                               ; preds = %20
  store i32 4, i32* %9, align 4
  br label %51

50:                                               ; preds = %20
  br label %51

51:                                               ; preds = %50, %49, %48, %35
  br label %86

52:                                               ; preds = %16
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %80 [
    i32 3, label %54
    i32 4, label %67
  ]

54:                                               ; preds = %52
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %59, %61
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %58, i64 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %81

67:                                               ; preds = %52
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %72, %74
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %71, i64 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %81

80:                                               ; preds = %52
  br label %81

81:                                               ; preds = %80, %67, %54
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %84, %81
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %13

92:                                               ; preds = %13
  ret void
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

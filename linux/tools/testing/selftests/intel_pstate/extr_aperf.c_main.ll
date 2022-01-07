; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/intel_pstate/extr_aperf.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/intel_pstate/extr_aperf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeb = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"/dev/cpu/%d/msr\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"/dev/cpu/%d/msr: %s\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to set cpu affinity\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"runTime: %4.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"freq: %7.0f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.timeb, align 4
  %20 = alloca %struct.timeb, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @usage(i8* %30)
  store i32 1, i32* %3, align 4
  br label %140

32:                                               ; preds = %2
  store i64 0, i64* @errno, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strtol(i8* %35, i8** null, i32 10)
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* @errno, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @usage(i8* %42)
  store i32 1, i32* %3, align 4
  br label %140

44:                                               ; preds = %32
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %49 = load i32, i32* @O_RDONLY, align 4
  %50 = call i32 @open(i8* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* @errno, align 8
  %57 = call i8* @strerror(i64 %56)
  %58 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %55, i8* %57)
  %59 = load i32, i32* @KSFT_SKIP, align 4
  store i32 %59, i32* %3, align 4
  br label %140

60:                                               ; preds = %44
  %61 = call i32 @CPU_ZERO(i32* %24)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @CPU_SET(i32 %62, i32* %24)
  %64 = call i64 @sched_setaffinity(i32 0, i32 4, i32* %24)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %140

68:                                               ; preds = %60
  %69 = call i32 @ftime(%struct.timeb* %19)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @pread(i32 %70, i64* %11, i32 8, i32 16)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @pread(i32 %72, i64* %14, i32 8, i32 231)
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @pread(i32 %74, i64* %17, i32 8, i32 232)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %82, %68
  %77 = load i32, i32* %6, align 4
  %78 = icmp ult i32 %77, -1879048193
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @sqrt(i32 %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %76

85:                                               ; preds = %76
  %86 = call i32 @ftime(%struct.timeb* %20)
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @pread(i32 %87, i64* %12, i32 8, i32 16)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @pread(i32 %89, i64* %15, i32 8, i32 231)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @pread(i32 %91, i64* %18, i32 8, i32 232)
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = sub nsw i64 %93, %94
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %14, align 8
  %98 = sub nsw i64 %96, %97
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %17, align 8
  %101 = sub nsw i64 %99, %100
  store i64 %101, i64* %16, align 8
  %102 = getelementptr inbounds %struct.timeb, %struct.timeb* %19, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 1000
  %105 = getelementptr inbounds %struct.timeb, %struct.timeb* %19, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %104, %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %21, align 8
  %109 = getelementptr inbounds %struct.timeb, %struct.timeb* %20, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 1000
  %112 = getelementptr inbounds %struct.timeb, %struct.timeb* %20, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %22, align 8
  %116 = load i64, i64* %22, align 8
  %117 = load i64, i64* %21, align 8
  %118 = sub nsw i64 %116, %117
  store i64 %118, i64* %23, align 8
  %119 = load i64, i64* %23, align 8
  %120 = sitofp i64 %119 to double
  %121 = fmul double 1.000000e+00, %120
  %122 = fdiv double %121, 1.000000e+03
  %123 = fptosi double %122 to i64
  %124 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %123)
  %125 = load i64, i64* %10, align 8
  %126 = sitofp i64 %125 to double
  %127 = load i64, i64* %13, align 8
  %128 = sitofp i64 %127 to double
  %129 = fmul double 1.000000e+00, %128
  %130 = load i64, i64* %16, align 8
  %131 = sitofp i64 %130 to double
  %132 = fmul double 1.000000e+00, %131
  %133 = fdiv double %129, %132
  %134 = fdiv double %126, %133
  %135 = load i64, i64* %23, align 8
  %136 = sitofp i64 %135 to double
  %137 = fdiv double %134, %136
  %138 = fptosi double %137 to i64
  %139 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %85, %66, %53, %39, %27
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ftime(%struct.timeb*) #1

declare dso_local i32 @pread(i32, i64*, i32, i32) #1

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_verify_hwp_req_self_consistency.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_verify_hwp_req_self_consistency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_hwp_request = type { i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"cpu%d: requested hwp-min %d > hwp_max %d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"cpu%d: requested hwp-desired %d > hwp_max %d\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"cpu%d: requested hwp-desired %d < requested hwp_min %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_hwp_req_self_consistency(i32 %0, %struct.msr_hwp_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msr_hwp_request*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.msr_hwp_request* %1, %struct.msr_hwp_request** %4, align 8
  %5 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %6 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %9 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %15 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %18 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16, i64 %19)
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %23 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %28 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %31 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %37 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %40 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %35, i64 %38, i64 %41)
  br label %43

43:                                               ; preds = %34, %26, %21
  %44 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %45 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %50 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %53 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %59 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %4, align 8
  %62 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @errx(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 %60, i64 %63)
  br label %65

65:                                               ; preds = %56, %48, %43
  ret i32 0
}

declare dso_local i32 @errx(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

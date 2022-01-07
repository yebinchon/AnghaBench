; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_update_hwp_request_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_update_hwp_request_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.msr_hwp_request = type { i32, i32, i32, i32, i32 }
%struct.msr_hwp_cap = type { i32 }

@first_cpu_in_pkg = common dso_local global i32* null, align 8
@MSR_HWP_REQUEST_PKG = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"old: \00", align 1
@update_hwp_min = common dso_local global i64 0, align 8
@req_update = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@update_hwp_max = common dso_local global i64 0, align 8
@update_hwp_desired = common dso_local global i64 0, align 8
@update_hwp_window = common dso_local global i64 0, align 8
@update_hwp_epp = common dso_local global i64 0, align 8
@MSR_HWP_CAPABILITIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@force = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"new: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_hwp_request_pkg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msr_hwp_request, align 4
  %4 = alloca %struct.msr_hwp_cap, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32*, i32** @first_cpu_in_pkg, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MSR_HWP_REQUEST_PKG, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @read_hwp_request(i32 %13, %struct.msr_hwp_request* %3, i32 %14)
  %16 = load i64, i64* @debug, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @print_hwp_request_pkg(i32 %19, %struct.msr_hwp_request* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i64, i64* @update_hwp_min, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 4), align 4
  %26 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %3, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* @update_hwp_max, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 3), align 4
  %32 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %3, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* @update_hwp_desired, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 2), align 4
  %38 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %3, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* @update_hwp_window, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 1), align 4
  %44 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %3, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64, i64* @update_hwp_epp, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 0), align 4
  %50 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %3, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MSR_HWP_CAPABILITIES, align 4
  %54 = call i32 @read_hwp_cap(i32 %52, %struct.msr_hwp_cap* %4, i32 %53)
  %55 = load i64, i64* @debug, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @print_hwp_cap(i32 %58, %struct.msr_hwp_cap* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32, i32* @force, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @check_hwp_request_v_hwp_capabilities(i32 %64, %struct.msr_hwp_request* %3, %struct.msr_hwp_cap* %4)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @verify_hwp_req_self_consistency(i32 %67, %struct.msr_hwp_request* %3)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @write_hwp_request(i32 %69, %struct.msr_hwp_request* %3, i32 %70)
  %72 = load i64, i64* @debug, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @read_hwp_request(i32 %75, %struct.msr_hwp_request* %3, i32 %76)
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @print_hwp_request_pkg(i32 %78, %struct.msr_hwp_request* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %66
  ret i32 0
}

declare dso_local i32 @read_hwp_request(i32, %struct.msr_hwp_request*, i32) #1

declare dso_local i32 @print_hwp_request_pkg(i32, %struct.msr_hwp_request*, i8*) #1

declare dso_local i32 @read_hwp_cap(i32, %struct.msr_hwp_cap*, i32) #1

declare dso_local i32 @print_hwp_cap(i32, %struct.msr_hwp_cap*, i8*) #1

declare dso_local i32 @check_hwp_request_v_hwp_capabilities(i32, %struct.msr_hwp_request*, %struct.msr_hwp_cap*) #1

declare dso_local i32 @verify_hwp_req_self_consistency(i32, %struct.msr_hwp_request*) #1

declare dso_local i32 @write_hwp_request(i32, %struct.msr_hwp_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

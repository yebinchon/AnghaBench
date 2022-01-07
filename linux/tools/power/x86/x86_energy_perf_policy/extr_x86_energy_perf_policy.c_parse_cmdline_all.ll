; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_all.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@force = common dso_local global i32 0, align 4
@update_hwp_enable = common dso_local global i32 0, align 4
@req_update = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@has_epb = common dso_local global i64 0, align 8
@new_epb = common dso_local global i32 0, align 4
@turbo_update_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_cmdline_all(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @force, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @force, align 4
  store i32 1, i32* @update_hwp_enable, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @parse_optarg_string(i8* %5)
  %7 = call i32 @parse_cmdline_hwp_min(i32 %6)
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 4), align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @parse_optarg_string(i8* %8)
  %10 = call i32 @parse_cmdline_hwp_max(i32 %9)
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 3), align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @parse_optarg_string(i8* %11)
  %13 = call i32 @parse_cmdline_hwp_epp(i32 %12)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 2), align 4
  %14 = load i64, i64* @has_epb, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @parse_optarg_string(i8* %17)
  %19 = call i32 @parse_cmdline_epb(i32 %18)
  store i32 %19, i32* @new_epb, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @parse_optarg_string(i8* %21)
  %23 = call i32 @parse_cmdline_turbo(i32 %22)
  store i32 %23, i32* @turbo_update_value, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @parse_optarg_string(i8* %24)
  %26 = call i32 @parse_cmdline_hwp_desired(i32 %25)
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 1), align 4
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @parse_optarg_string(i8* %27)
  %29 = call i32 @parse_cmdline_hwp_window(i32 %28)
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @parse_cmdline_hwp_min(i32) #1

declare dso_local i32 @parse_optarg_string(i8*) #1

declare dso_local i32 @parse_cmdline_hwp_max(i32) #1

declare dso_local i32 @parse_cmdline_hwp_epp(i32) #1

declare dso_local i32 @parse_cmdline_epb(i32) #1

declare dso_local i32 @parse_cmdline_turbo(i32) #1

declare dso_local i32 @parse_cmdline_hwp_desired(i32) #1

declare dso_local i32 @parse_cmdline_hwp_window(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

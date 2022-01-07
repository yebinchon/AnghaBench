; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_clos_enable.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_clos_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmd_help = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Enable core-power for a package/die\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\09Clos Enable: Specify priority type with [--priority|-p]\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\09\09 0: Proportional, 1: Ordered\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"cpufreq subsystem and core-power enable will interfere with each other!\0A\00", align 1
@outf = common dso_local global i32 0, align 4
@max_target_cpus = common dso_local global i64 0, align 8
@enable_clos_qos_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_clos_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_clos_enable() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = load i64, i64* @cmd_help, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @exit(i32 0) #3
  unreachable

12:                                               ; preds = %0
  %13 = call i64 (...) @cpufreq_sysfs_present()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @outf, align 4
  %20 = call i32 @isst_ctdp_display_information_start(i32 %19)
  %21 = load i64, i64* @max_target_cpus, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @enable_clos_qos_config, align 4
  %25 = call i32 @for_each_online_target_cpu_in_set(i32 %24, i32* null, i32* null, i32* null, i32* %1)
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @enable_clos_qos_config, align 4
  %28 = call i32 @for_each_online_package_in_set(i32 %27, i32* null, i32* null, i32* null, i32* %1)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @outf, align 4
  %31 = call i32 @isst_ctdp_display_information_end(i32 %30)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @cpufreq_sysfs_present(...) #1

declare dso_local i32 @isst_ctdp_display_information_start(i32) #1

declare dso_local i32 @for_each_online_target_cpu_in_set(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @for_each_online_package_in_set(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @isst_ctdp_display_information_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

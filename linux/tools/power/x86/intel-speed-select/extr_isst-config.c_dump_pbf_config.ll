; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_dump_pbf_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_dump_pbf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmd_help = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Print Intel(R) Speed Select Technology base frequency configuration for a TDP level\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\09Arguments: -l|--level : Specify tdp level\0A\00", align 1
@tdp_level = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid command: specify tdp_level\0A\00", align 1
@max_target_cpus = common dso_local global i64 0, align 8
@dump_pbf_config_for_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_pbf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pbf_config() #0 {
  %1 = load i64, i64* @cmd_help, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @exit(i32 0) #3
  unreachable

9:                                                ; preds = %0
  %10 = load i32, i32* @tdp_level, align 4
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @outf, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %9
  %17 = load i32, i32* @outf, align 4
  %18 = call i32 @isst_ctdp_display_information_start(i32 %17)
  %19 = load i64, i64* @max_target_cpus, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @dump_pbf_config_for_cpu, align 4
  %23 = call i32 @for_each_online_target_cpu_in_set(i32 %22, i32* null, i32* null, i32* null, i32* null)
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @dump_pbf_config_for_cpu, align 4
  %26 = call i32 @for_each_online_package_in_set(i32 %25, i32* null, i32* null, i32* null, i32* null)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @outf, align 4
  %29 = call i32 @isst_ctdp_display_information_end(i32 %28)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

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

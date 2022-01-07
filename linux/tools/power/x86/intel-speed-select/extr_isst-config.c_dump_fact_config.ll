; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_dump_fact_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_dump_fact_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmd_help = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [123 x i8] c"Print complete Intel Speed Select Technology turbo frequency configuration for a TDP level. Other arguments are optional.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\09Arguments: -l|--level : Specify tdp level\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\09Arguments: -b|--bucket : Bucket index to dump\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"\09Arguments: -r|--trl-type : Specify trl type: sse|avx2|avx512\0A\00", align 1
@tdp_level = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid command: specify tdp_level\0A\00", align 1
@max_target_cpus = common dso_local global i64 0, align 8
@dump_fact_config_for_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_fact_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_fact_config() #0 {
  %1 = load i64, i64* @cmd_help, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 @exit(i32 0) #3
  unreachable

13:                                               ; preds = %0
  %14 = load i32, i32* @tdp_level, align 4
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @outf, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %13
  %21 = load i32, i32* @outf, align 4
  %22 = call i32 @isst_ctdp_display_information_start(i32 %21)
  %23 = load i64, i64* @max_target_cpus, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @dump_fact_config_for_cpu, align 4
  %27 = call i32 @for_each_online_target_cpu_in_set(i32 %26, i32* null, i32* null, i32* null, i32* null)
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @dump_fact_config_for_cpu, align 4
  %30 = call i32 @for_each_online_package_in_set(i32 %29, i32* null, i32* null, i32* null, i32* null)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @outf, align 4
  %33 = call i32 @isst_ctdp_display_information_end(i32 %32)
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

; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_dump_clos_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_dump_clos_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmd_help = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Print Intel Speed Select Technology core power configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\09Arguments: [-c | --clos]: Specify clos id\0A\00", align 1
@current_clos = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid clos id\0A\00", align 1
@outf = common dso_local global i32 0, align 4
@max_target_cpus = common dso_local global i64 0, align 8
@dump_clos_config_for_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_clos_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_clos_config() #0 {
  %1 = load i64, i64* @cmd_help, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @exit(i32 0) #3
  unreachable

9:                                                ; preds = %0
  %10 = load i32, i32* @current_clos, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @current_clos, align 4
  %14 = icmp sgt i32 %13, 3
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %9
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @exit(i32 0) #3
  unreachable

19:                                               ; preds = %12
  %20 = load i32, i32* @outf, align 4
  %21 = call i32 @isst_ctdp_display_information_start(i32 %20)
  %22 = load i64, i64* @max_target_cpus, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @dump_clos_config_for_cpu, align 4
  %26 = call i32 @for_each_online_target_cpu_in_set(i32 %25, i32* null, i32* null, i32* null, i32* null)
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @dump_clos_config_for_cpu, align 4
  %29 = call i32 @for_each_online_package_in_set(i32 %28, i32* null, i32* null, i32* null, i32* null)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @outf, align 4
  %32 = call i32 @isst_ctdp_display_information_end(i32 %31)
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

; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_clos_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_clos_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmd_help = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Set core-power configuration for one of the four clos ids\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\09Specify targeted clos id with [--clos|-c]\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\09Specify clos EPP with [--epp|-e]\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\09Specify clos Proportional Priority [--weight|-w]\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\09Specify clos min with [--min|-n]\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\09Specify clos max with [--max|-m]\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"\09Specify clos desired with [--desired|-d]\0A\00", align 1
@current_clos = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Invalid clos id\0A\00", align 1
@clos_epp = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"clos epp is not specified, default: 0\0A\00", align 1
@clos_prop_prio = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [52 x i8] c"clos frequency weight is not specified, default: 0\0A\00", align 1
@clos_min = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"clos min is not specified, default: 0\0A\00", align 1
@clos_max = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"clos max is not specified, default: 0xff\0A\00", align 1
@clos_desired = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"clos desired is not specified, default: 0\0A\00", align 1
@outf = common dso_local global i32 0, align 4
@max_target_cpus = common dso_local global i64 0, align 8
@set_clos_config_for_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_clos_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_clos_config() #0 {
  %1 = load i64, i64* @cmd_help, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %18 = call i32 @exit(i32 0) #3
  unreachable

19:                                               ; preds = %0
  %20 = load i32, i32* @current_clos, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @current_clos, align 4
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %28 = call i32 @exit(i32 0) #3
  unreachable

29:                                               ; preds = %22
  %30 = load i32, i32* @clos_epp, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @clos_epp, align 4
  %34 = icmp sgt i32 %33, 15
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* @clos_epp, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @clos_prop_prio, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @clos_prop_prio, align 4
  %43 = icmp sgt i32 %42, 15
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* @clos_prop_prio, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* @clos_min, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  store i64 0, i64* @clos_min, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @clos_max, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  store i32 255, i32* @clos_max, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* @clos_desired, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* @clos_desired, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @outf, align 4
  %67 = call i32 @isst_ctdp_display_information_start(i32 %66)
  %68 = load i64, i64* @max_target_cpus, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @set_clos_config_for_cpu, align 4
  %72 = call i32 @for_each_online_target_cpu_in_set(i32 %71, i32* null, i32* null, i32* null, i32* null)
  br label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @set_clos_config_for_cpu, align 4
  %75 = call i32 @for_each_online_package_in_set(i32 %74, i32* null, i32* null, i32* null, i32* null)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @outf, align 4
  %78 = call i32 @isst_ctdp_display_information_end(i32 %77)
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

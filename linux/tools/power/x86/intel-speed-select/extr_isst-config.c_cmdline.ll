; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }

@cmdline.long_options = internal global [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 -128, i32 0, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8 -127, i32 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32 0, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8 -127, i32 0, i32 105 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8 -128, i32 0, i32 111 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32 0, i32 118 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"+c:df:hio:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@debug_flag = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Debug Mode ON\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@out_format_json = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"Must run as root\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"Feature name and|or command not specified\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Intel(R) Speed Select Technology\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Executing on CPU model:%d[0x%x]\0A\00", align 1
@cpu_model = common dso_local global i32 0, align 4
@present_cpumask = common dso_local global i32 0, align 4
@target_cpumask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @progname, align 8
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32, i32* %3, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = call i32 @getopt_long_only(i32 %12, i8** %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @cmdline.long_options, i64 0, i64 0), i32* %6)
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %47

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %44 [
    i32 99, label %18
    i32 100, label %21
    i32 102, label %23
    i32 104, label %29
    i32 105, label %31
    i32 111, label %33
    i32 118, label %42
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @optarg, align 4
  %20 = call i32 @parse_cpu_command(i32 %19)
  br label %46

21:                                               ; preds = %16
  store i32 1, i32* @debug_flag, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %46

23:                                               ; preds = %16
  %24 = load i32, i32* @optarg, align 4
  %25 = call i32 @strncmp(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 1, i32* @out_format_json, align 4
  br label %28

28:                                               ; preds = %27, %23
  br label %46

29:                                               ; preds = %16
  %30 = call i32 (...) @usage()
  br label %46

31:                                               ; preds = %16
  %32 = call i32 (...) @isst_print_platform_information()
  br label %46

33:                                               ; preds = %16
  %34 = load i32, i32* @outf, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @outf, align 4
  %38 = call i32 @fclose(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @optarg, align 4
  %41 = call i32 @fopen_or_exit(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 %41, i32* @outf, align 4
  br label %46

42:                                               ; preds = %16
  %43 = call i32 (...) @print_version()
  br label %46

44:                                               ; preds = %16
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %42, %39, %31, %29, %28, %21, %18
  br label %11

47:                                               ; preds = %11
  %48 = call i64 (...) @geteuid()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %53 = call i32 @exit(i32 0) #3
  unreachable

54:                                               ; preds = %47
  %55 = load i32, i32* @optind, align 4
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %56, 2
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %62 = call i32 @exit(i32 0) #3
  unreachable

63:                                               ; preds = %54
  %64 = call i32 (...) @update_cpu_model()
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %66 = load i32, i32* @cpu_model, align 4
  %67 = load i32, i32* @cpu_model, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %66, i32 %67)
  %69 = call i32 (...) @set_max_cpu_num()
  %70 = call i32 (...) @set_cpu_present_cpu_mask()
  %71 = call i32 (...) @set_cpu_target_cpu_mask()
  %72 = call i32 (...) @isst_fill_platform_info()
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %80

76:                                               ; preds = %63
  %77 = load i32, i32* %3, align 4
  %78 = load i8**, i8*** %4, align 8
  %79 = call i32 @process_command(i32 %77, i8** %78)
  br label %80

80:                                               ; preds = %76, %75
  %81 = load i32, i32* @present_cpumask, align 4
  %82 = call i32 @free_cpu_set(i32 %81)
  %83 = load i32, i32* @target_cpumask, align 4
  %84 = call i32 @free_cpu_set(i32 %83)
  ret void
}

declare dso_local i32 @getopt_long_only(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @parse_cpu_command(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @isst_print_platform_information(...) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @fopen_or_exit(i32, i8*) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @update_cpu_model(...) #1

declare dso_local i32 @set_max_cpu_num(...) #1

declare dso_local i32 @set_cpu_present_cpu_mask(...) #1

declare dso_local i32 @set_cpu_target_cpu_mask(...) #1

declare dso_local i32 @isst_fill_platform_info(...) #1

declare dso_local i32 @process_command(i32, i8**) #1

declare dso_local i32 @free_cpu_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

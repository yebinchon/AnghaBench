; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_parse_cmd_args.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_parse_cmd_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }

@parse_cmd_args.long_options = internal global [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8 -128, i32 0, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32 0, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32 0, i32 111 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8 -128, i32 0, i32 114 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8 -128, i32 0, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8 -128, i32 0, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 -128, i32 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8 -128, i32 0, i32 101 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8 -128, i32 0, i32 110 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8 -128, i32 0, i32 109 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8 -128, i32 0, i32 112 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8 -128, i32 0, i32 119 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"bucket\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"trl-type\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"trl\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"clos\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"desired\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"epp\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"b:l:t:c:d:e:n:m:p:w:ho\00", align 1
@optarg = common dso_local global i32 0, align 4
@fact_bucket = common dso_local global i8* null, align 8
@cmd_help = common dso_local global i32 0, align 4
@tdp_level = common dso_local global i8* null, align 8
@force_online_offline = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@fact_trl = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"sse\00", align 1
@fact_avx = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"avx2\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"avx512\00", align 1
@outf = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"Invalid sse,avx options\0A\00", align 1
@current_clos = common dso_local global i8* null, align 8
@clos_desired = common dso_local global i8* null, align 8
@clos_epp = common dso_local global i8* null, align 8
@clos_min = common dso_local global i8* null, align 8
@clos_max = common dso_local global i8* null, align 8
@clos_priority_type = common dso_local global i8* null, align 8
@clos_prop_prio = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"no match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8**)* @parse_cmd_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cmd_args(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @optind, align 4
  br label %12

12:                                               ; preds = %75, %3
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %6, align 8
  %15 = call i32 @getopt_long(i32 %13, i8** %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @parse_cmd_args.long_options, i64 0, i64 0), i32* %8)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %76

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %73 [
    i32 98, label %19
    i32 104, label %22
    i32 108, label %23
    i32 111, label %26
    i32 116, label %27
    i32 114, label %30
    i32 99, label %52
    i32 100, label %55
    i32 101, label %58
    i32 110, label %61
    i32 109, label %64
    i32 112, label %67
    i32 119, label %70
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @optarg, align 4
  %21 = call i8* @atoi(i32 %20)
  store i8* %21, i8** @fact_bucket, align 8
  br label %75

22:                                               ; preds = %17
  store i32 1, i32* @cmd_help, align 4
  br label %75

23:                                               ; preds = %17
  %24 = load i32, i32* @optarg, align 4
  %25 = call i8* @atoi(i32 %24)
  store i8* %25, i8** @tdp_level, align 8
  br label %75

26:                                               ; preds = %17
  store i32 1, i32* @force_online_offline, align 4
  br label %75

27:                                               ; preds = %17
  %28 = load i32, i32* @optarg, align 4
  %29 = call i32 @sscanf(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* @fact_trl)
  br label %75

30:                                               ; preds = %17
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @strncmp(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 3)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 1, i32* @fact_avx, align 4
  br label %51

35:                                               ; preds = %30
  %36 = load i32, i32* @optarg, align 4
  %37 = call i32 @strncmp(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 2, i32* @fact_avx, align 4
  br label %50

40:                                               ; preds = %35
  %41 = load i32, i32* @optarg, align 4
  %42 = call i32 @strncmp(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 4, i32* @fact_avx, align 4
  br label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @outf, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %34
  br label %75

52:                                               ; preds = %17
  %53 = load i32, i32* @optarg, align 4
  %54 = call i8* @atoi(i32 %53)
  store i8* %54, i8** @current_clos, align 8
  br label %75

55:                                               ; preds = %17
  %56 = load i32, i32* @optarg, align 4
  %57 = call i8* @atoi(i32 %56)
  store i8* %57, i8** @clos_desired, align 8
  br label %75

58:                                               ; preds = %17
  %59 = load i32, i32* @optarg, align 4
  %60 = call i8* @atoi(i32 %59)
  store i8* %60, i8** @clos_epp, align 8
  br label %75

61:                                               ; preds = %17
  %62 = load i32, i32* @optarg, align 4
  %63 = call i8* @atoi(i32 %62)
  store i8* %63, i8** @clos_min, align 8
  br label %75

64:                                               ; preds = %17
  %65 = load i32, i32* @optarg, align 4
  %66 = call i8* @atoi(i32 %65)
  store i8* %66, i8** @clos_max, align 8
  br label %75

67:                                               ; preds = %17
  %68 = load i32, i32* @optarg, align 4
  %69 = call i8* @atoi(i32 %68)
  store i8* %69, i8** @clos_priority_type, align 8
  br label %75

70:                                               ; preds = %17
  %71 = load i32, i32* @optarg, align 4
  %72 = call i8* @atoi(i32 %71)
  store i8* %72, i8** @clos_prop_prio, align 8
  br label %75

73:                                               ; preds = %17
  %74 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %70, %67, %64, %61, %58, %55, %52, %51, %27, %26, %23, %22, %19
  br label %12

76:                                               ; preds = %12
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

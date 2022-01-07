; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@cmdline.long_options = internal global [18 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 -128, i32 0, i32 97 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32 0, i32 99 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32 0, i32 112 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8 -128, i32 0, i32 68 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8 -128, i32 0, i32 66 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32 0, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8 -127, i32 0, i32 101 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8 -127, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8 -128, i32 0, i32 80 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8 -128, i32 0, i32 109 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8 -128, i32 0, i32 77 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8 -127, i32 0, i32 114 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8 -128, i32 0, i32 116 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8 -128, i32 0, i32 117 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8 -127, i32 0, i32 118 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8 -128, i32 0, i32 119 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pkg\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hwp-desired\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"epb\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"hwp-enable\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"hwp-epp\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"hwp-min\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"hwp-max\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"turbo-enable\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"hwp-use-pkg\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"hwp-window\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [27 x i8] c"+a:c:dD:E:e:f:m:M:rt:u:vw:\00", align 1
@optarg = common dso_local global i8* null, align 8
@new_epb = common dso_local global i32 0, align 4
@update_hwp_enable = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@force = common dso_local global i32 0, align 4
@req_update = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@turbo_update_value = common dso_local global i32 0, align 4
@update_hwp_use_pkg = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"stray parameter '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmdline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @progname, align 8
  br label %10

10:                                               ; preds = %80, %2
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32 @getopt_long_only(i32 %11, i8** %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([18 x %struct.option], [18 x %struct.option]* @cmdline.long_options, i64 0, i64 0), i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %81

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %78 [
    i32 97, label %17
    i32 66, label %20
    i32 99, label %24
    i32 101, label %27
    i32 104, label %28
    i32 100, label %30
    i32 102, label %35
    i32 68, label %38
    i32 109, label %42
    i32 77, label %46
    i32 112, label %50
    i32 80, label %53
    i32 114, label %57
    i32 116, label %58
    i32 117, label %62
    i32 118, label %71
    i32 119, label %74
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i32 @parse_cmdline_all(i8* %18)
  br label %80

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @parse_optarg_string(i8* %21)
  %23 = call i32 @parse_cmdline_epb(i32 %22)
  store i32 %23, i32* @new_epb, align 4
  br label %80

24:                                               ; preds = %15
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i32 @parse_cmdline_cpu(i8* %25)
  br label %80

27:                                               ; preds = %15
  store i32 1, i32* @update_hwp_enable, align 4
  br label %80

28:                                               ; preds = %15
  %29 = call i32 (...) @usage()
  br label %80

30:                                               ; preds = %15
  %31 = load i32, i32* @debug, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @debug, align 4
  %33 = load i32, i32* @verbose, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @verbose, align 4
  br label %80

35:                                               ; preds = %15
  %36 = load i32, i32* @force, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @force, align 4
  br label %80

38:                                               ; preds = %15
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @parse_optarg_string(i8* %39)
  %41 = call i32 @parse_cmdline_hwp_desired(i32 %40)
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 5), align 4
  br label %80

42:                                               ; preds = %15
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @parse_optarg_string(i8* %43)
  %45 = call i32 @parse_cmdline_hwp_min(i32 %44)
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 4), align 4
  br label %80

46:                                               ; preds = %15
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @parse_optarg_string(i8* %47)
  %49 = call i32 @parse_cmdline_hwp_max(i32 %48)
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 3), align 4
  br label %80

50:                                               ; preds = %15
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i32 @parse_cmdline_pkg(i8* %51)
  br label %80

53:                                               ; preds = %15
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 @parse_optarg_string(i8* %54)
  %56 = call i32 @parse_cmdline_hwp_epp(i32 %55)
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 2), align 4
  br label %80

57:                                               ; preds = %15
  br label %80

58:                                               ; preds = %15
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i32 @parse_optarg_string(i8* %59)
  %61 = call i32 @parse_cmdline_turbo(i32 %60)
  store i32 %61, i32* @turbo_update_value, align 4
  br label %80

62:                                               ; preds = %15
  %63 = load i32, i32* @update_hwp_use_pkg, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @update_hwp_use_pkg, align 4
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i32 @atoi(i8* %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 0), align 4
  br label %70

69:                                               ; preds = %62
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 0), align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %80

71:                                               ; preds = %15
  %72 = call i32 (...) @print_version()
  %73 = call i32 @exit(i32 0) #3
  unreachable

74:                                               ; preds = %15
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 @parse_optarg_string(i8* %75)
  %77 = call i32 @parse_cmdline_hwp_window(i32 %76)
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @req_update, i32 0, i32 1), align 4
  br label %80

78:                                               ; preds = %15
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %78, %74, %70, %58, %57, %53, %50, %46, %42, %38, %35, %30, %28, %27, %24, %20, %17
  br label %10

81:                                               ; preds = %10
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @optind, align 4
  %84 = add nsw i32 %83, 1
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i8**, i8*** %4, align 8
  %88 = load i32, i32* @optind, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @parse_optarg_string(i8* %91)
  %93 = call i32 @parse_cmdline_epb(i32 %92)
  store i32 %93, i32* @new_epb, align 4
  br label %94

94:                                               ; preds = %86, %81
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @optind, align 4
  %97 = add nsw i32 %96, 1
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8**, i8*** %4, align 8
  %102 = load i32, i32* @optind, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* %106)
  %108 = call i32 (...) @usage()
  br label %109

109:                                              ; preds = %99, %94
  ret void
}

declare dso_local i32 @getopt_long_only(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @parse_cmdline_all(i8*) #1

declare dso_local i32 @parse_cmdline_epb(i32) #1

declare dso_local i32 @parse_optarg_string(i8*) #1

declare dso_local i32 @parse_cmdline_cpu(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @parse_cmdline_hwp_desired(i32) #1

declare dso_local i32 @parse_cmdline_hwp_min(i32) #1

declare dso_local i32 @parse_cmdline_hwp_max(i32) #1

declare dso_local i32 @parse_cmdline_pkg(i8*) #1

declare dso_local i32 @parse_cmdline_hwp_epp(i32) #1

declare dso_local i32 @parse_cmdline_turbo(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @print_version(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @parse_cmdline_hwp_window(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

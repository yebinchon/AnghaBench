; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-help.c_cmd_help.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-help.c_cmd_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"print all available commands\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"show man page\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"web\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"show manual in web browser\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"show info page\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"buildid-cache\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"buildid-list\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"evlist\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"bench\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"timechart\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"annotate\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"kallsyms\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"kmem\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"kvm\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"inject\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__const.cmd_help.builtin_help_subcommands = private unnamed_addr constant [24 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* null], align 16
@.str.31 = private unnamed_addr constant [49 x i8] c"perf help [--all] [--man|--web|--info] [command]\00", align 1
@__const.cmd_help.builtin_help_usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0), i8* null], align 16
@.str.32 = private unnamed_addr constant [6 x i8] c"perf-\00", align 1
@main_cmds = common dso_local global i32 0, align 4
@other_cmds = common dso_local global i32 0, align 4
@perf_help_config = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [14 x i8] c"\0A Usage: %s\0A\0A\00", align 1
@perf_usage_string = common dso_local global i8* null, align 8
@.str.34 = private unnamed_addr constant [14 x i8] c"perf commands\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c" %s\0A\0A\00", align 1
@perf_more_info_string = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"\0A usage: %s\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\0A %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_help(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x %struct.option], align 16
  %9 = alloca [24 x i8*], align 16
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 130, i32* %7, align 4
  %12 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %8, i64 0, i64 0
  %13 = call i32 @OPT_BOOLEAN(i8 signext 97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.option, %struct.option* %12, i64 1
  %16 = call i32 @OPT_SET_UINT(i8 signext 109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 130)
  %17 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %19 = call i32 @OPT_SET_UINT(i8 signext 119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 128)
  %20 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %22 = call i32 @OPT_SET_UINT(i8 signext 105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 131)
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %25 = call i32 (...) @OPT_END()
  %26 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast [24 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([24 x i8*]* @__const.cmd_help.builtin_help_subcommands to i8*), i64 192, i1 false)
  %28 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_help.builtin_help_usage to i8*), i64 16, i1 false)
  %29 = call i32 @load_command_list(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i32* @main_cmds, i32* @other_cmds)
  %30 = load i32, i32* @perf_help_config, align 4
  %31 = call i32 @perf_config(i32 %30, i32* %7)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %83

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %8, i64 0, i64 0
  %40 = getelementptr inbounds [24 x i8*], [24 x i8*]* %9, i64 0, i64 0
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %42 = call i32 @parse_options_subcommand(i32 %37, i8** %38, %struct.option* %39, i8** %40, i8** %41, i32 0)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i8*, i8** @perf_usage_string, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* %46)
  %48 = call i32 @list_commands(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i32* @main_cmds, i32* @other_cmds)
  %49 = load i8*, i8** @perf_more_info_string, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* %49)
  store i32 0, i32* %3, align 4
  br label %83

51:                                               ; preds = %36
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** @perf_usage_string, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %57)
  %59 = call i32 (...) @list_common_cmds_help()
  %60 = load i8*, i8** @perf_more_info_string, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* %60)
  store i32 0, i32* %3, align 4
  br label %83

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %80 [
    i32 130, label %64
    i32 131, label %69
    i32 128, label %74
    i32 129, label %79
  ]

64:                                               ; preds = %62
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @show_man_page(i8* %67)
  store i32 %68, i32* %11, align 4
  br label %81

69:                                               ; preds = %62
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @show_info_page(i8* %72)
  store i32 %73, i32* %11, align 4
  br label %81

74:                                               ; preds = %62
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @show_html_page(i8* %77)
  store i32 %78, i32* %11, align 4
  br label %81

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %62, %79
  store i32 -1, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %74, %69, %64
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %56, %45, %34
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @OPT_BOOLEAN(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_SET_UINT(i8 signext, i8*, i32*, i8*, i32) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @load_command_list(i8*, i32*, i32*) #1

declare dso_local i32 @perf_config(i32, i32*) #1

declare dso_local i32 @parse_options_subcommand(i32, i8**, %struct.option*, i8**, i8**, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @list_commands(i8*, i32*, i32*) #1

declare dso_local i32 @list_common_cmds_help(...) #1

declare dso_local i32 @show_man_page(i8*) #1

declare dso_local i32 @show_info_page(i8*) #1

declare dso_local i32 @show_html_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

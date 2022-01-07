; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"perf\00", align 1
@PREFIX = common dso_local global i32 0, align 4
@PERF_EXEC_PATH = common dso_local global i32 0, align 4
@EXEC_PATH_ENVIRONMENT = common dso_local global i32 0, align 4
@PERF_PAGER_ENVIRONMENT = common dso_local global i32 0, align 4
@libperf_print = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"perf-help\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"PERF_CONFIG\00", align 1
@config_exclusive_filename = common dso_local global i32 0, align 4
@perf_default_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"perf-\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [78 x i8] c"trace command not available: missing audit-libs devel package at build time.\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\0A usage: %s\0A\0A\00", align 1
@perf_usage_string = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"\0A %s\0A\0A\00", align 1
@perf_more_info_string = common dso_local global i8* null, align 8
@main.done_help = internal global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to run command '%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @STRERR_BUFSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @PREFIX, align 4
  %16 = load i32, i32* @PERF_EXEC_PATH, align 4
  %17 = load i32, i32* @EXEC_PATH_ENVIRONMENT, align 4
  %18 = call i32 @exec_cmd_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @PERF_PAGER_ENVIRONMENT, align 4
  %20 = call i32 @pager_init(i32 %19)
  %21 = load i32, i32* @libperf_print, align 4
  %22 = call i32 @libperf_init(i32 %21)
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @extract_argv0_path(i8* %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %30

30:                                               ; preds = %29, %2
  %31 = call i32 @time(i32* null)
  %32 = call i32 @srandom(i32 %31)
  %33 = call i32 @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* @config_exclusive_filename, align 4
  %34 = load i32, i32* @perf_default_config, align 4
  %35 = call i32 @perf_config(i32 %34, i32* null)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %126

40:                                               ; preds = %30
  %41 = call i32 @set_buildid_dir(i32* null)
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strstarts(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = call i32 @handle_internal_command(i32 %51, i8** %52)
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -5
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %45, %40
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strstarts(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0))
  br label %125

66:                                               ; preds = %59
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %5, align 8
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %4, align 4
  %71 = call i32 @handle_options(i8*** %5, i32* %4, i32* null)
  %72 = call i32 (...) @commit_pager_choice()
  %73 = load i32, i32* %4, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %66
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strstarts(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %85, i8** %83, align 8
  br label %86

86:                                               ; preds = %81, %75
  br label %93

87:                                               ; preds = %66
  %88 = load i8*, i8** @perf_usage_string, align 8
  %89 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %88)
  %90 = call i32 (...) @list_common_cmds_help()
  %91 = load i8*, i8** @perf_more_info_string, align 8
  %92 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %91)
  br label %125

93:                                               ; preds = %86
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %7, align 8
  %97 = call i32 (...) @test_attr__init()
  %98 = call i32 (...) @setup_path()
  %99 = call i32 (...) @pthread__block_sigwinch()
  %100 = call i32 (...) @perf_debug_setup()
  br label %101

101:                                              ; preds = %117, %93
  br label %102

102:                                              ; preds = %101
  %103 = call i32 @run_argv(i32* %4, i8*** %5)
  %104 = load i64, i64* @errno, align 8
  %105 = load i64, i64* @ENOENT, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %118

108:                                              ; preds = %102
  %109 = load i32, i32* @main.done_help, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %7, align 8
  %113 = call i8* @help_unknown_cmd(i8* %112)
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  store i8* %113, i8** %115, align 8
  store i8* %113, i8** %7, align 8
  store i32 1, i32* @main.done_help, align 4
  br label %117

116:                                              ; preds = %108
  br label %118

117:                                              ; preds = %111
  br label %101

118:                                              ; preds = %116, %107
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = load i64, i64* @errno, align 8
  %122 = trunc i64 %12 to i32
  %123 = call i8* @str_error_r(i64 %121, i8* %14, i32 %122)
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %120, i8* %123)
  br label %125

125:                                              ; preds = %118, %87, %63
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %126

126:                                              ; preds = %125, %38
  %127 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @exec_cmd_init(i8*, i32, i32, i32) #2

declare dso_local i32 @pager_init(i32) #2

declare dso_local i32 @libperf_init(i32) #2

declare dso_local i8* @extract_argv0_path(i8*) #2

declare dso_local i32 @srandom(i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @getenv(i8*) #2

declare dso_local i32 @perf_config(i32, i32*) #2

declare dso_local i32 @set_buildid_dir(i32*) #2

declare dso_local i64 @strstarts(i8*, i8*) #2

declare dso_local i32 @handle_internal_command(i32, i8**) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @handle_options(i8***, i32*, i32*) #2

declare dso_local i32 @commit_pager_choice(...) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @list_common_cmds_help(...) #2

declare dso_local i32 @test_attr__init(...) #2

declare dso_local i32 @setup_path(...) #2

declare dso_local i32 @pthread__block_sigwinch(...) #2

declare dso_local i32 @perf_debug_setup(...) #2

declare dso_local i32 @run_argv(i32*, i8***) #2

declare dso_local i8* @help_unknown_cmd(i8*) #2

declare dso_local i8* @str_error_r(i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

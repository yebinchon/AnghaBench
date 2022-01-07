; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_run_builtin.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_run_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_struct = type { i32, i32 (i32, i8**)*, i32 }
%struct.stat = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@use_browser = common dso_local global i32 0, align 4
@use_pager = common dso_local global i32 0, align 4
@RUN_SETUP = common dso_local global i32 0, align 4
@USE_PAGER = common dso_local global i32 0, align 4
@perf_env = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"write failure on standard output: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unknown write failure on standard output\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"close failed on standard output: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_struct*, i32, i8**)* @run_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_builtin(%struct.cmd_struct* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cmd_struct* %0, %struct.cmd_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* @STRERR_BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* @use_browser, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %21 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @check_browser_config(i32 %22)
  store i32 %23, i32* @use_browser, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @use_pager, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %29 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RUN_SETUP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %36 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @check_pager_config(i32 %37)
  store i32 %38, i32* @use_pager, align 4
  br label %39

39:                                               ; preds = %34, %27, %24
  %40 = load i32, i32* @use_pager, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %44 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @USE_PAGER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* @use_pager, align 4
  br label %50

50:                                               ; preds = %49, %42, %39
  %51 = call i32 (...) @commit_pager_choice()
  %52 = call i32 @perf_env__init(i32* @perf_env)
  %53 = load i32, i32* %6, align 4
  %54 = load i8**, i8*** %7, align 8
  %55 = call i32 @perf_env__set_cmdline(i32* @perf_env, i32 %53, i8** %54)
  %56 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %57 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %56, i32 0, i32 1
  %58 = load i32 (i32, i8**)*, i32 (i32, i8**)** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i8**, i8*** %7, align 8
  %61 = call i32 %58(i32 %59, i8** %60)
  store i32 %61, i32* %8, align 4
  %62 = call i32 (...) @perf_config__exit()
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @exit_browser(i32 %63)
  %65 = call i32 @perf_env__exit(i32* @perf_env)
  %66 = call i32 (...) @bpf__clear()
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 255
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %119

72:                                               ; preds = %50
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fileno(i32 %73)
  %75 = call i64 @fstat(i32 %74, %struct.stat* %9)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %119

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @S_ISFIFO(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @S_ISSOCK(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %78
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %119

89:                                               ; preds = %83
  store i32 1, i32* %8, align 4
  %90 = load i32, i32* @stdout, align 4
  %91 = call i64 @fflush(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* @errno, align 4
  %96 = trunc i64 %14 to i32
  %97 = call i8* @str_error_r(i32 %95, i8* %16, i32 %96)
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %97)
  br label %117

99:                                               ; preds = %89
  %100 = load i32, i32* @stdout, align 4
  %101 = call i64 @ferror(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %117

106:                                              ; preds = %99
  %107 = load i32, i32* @stdout, align 4
  %108 = call i64 @fclose(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* @stderr, align 4
  %112 = load i32, i32* @errno, align 4
  %113 = trunc i64 %14 to i32
  %114 = call i8* @str_error_r(i32 %112, i8* %16, i32 %113)
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  br label %117

116:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %110, %103, %93
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %119

119:                                              ; preds = %117, %88, %77, %69
  %120 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_browser_config(i32) #2

declare dso_local i32 @check_pager_config(i32) #2

declare dso_local i32 @commit_pager_choice(...) #2

declare dso_local i32 @perf_env__init(i32*) #2

declare dso_local i32 @perf_env__set_cmdline(i32*, i32, i8**) #2

declare dso_local i32 @perf_config__exit(...) #2

declare dso_local i32 @exit_browser(i32) #2

declare dso_local i32 @perf_env__exit(i32*) #2

declare dso_local i32 @bpf__clear(...) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32) #2

declare dso_local i64 @S_ISFIFO(i32) #2

declare dso_local i64 @S_ISSOCK(i32) #2

declare dso_local i64 @fflush(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @str_error_r(i32, i8*, i32) #2

declare dso_local i64 @ferror(i32) #2

declare dso_local i64 @fclose(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

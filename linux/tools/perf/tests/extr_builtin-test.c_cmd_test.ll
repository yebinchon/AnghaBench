; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_builtin-test.c_cmd_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_builtin-test.c_cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.option = type { i32 }
%struct.intlist = type { i32 }

@.str = private unnamed_addr constant [91 x i8] c"perf test [<options>] [{list <test-name-fragment>|[<test-name-fragments>|<test-numbers>]}]\00", align 1
@__const.cmd_test.test_usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tests\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"tests to skip\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"be more verbose (show symbol address, etc)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dont-fork\00", align 1
@dont_fork = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Do not fork for testcase\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@__const.cmd_test.test_subcommands = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_test(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [4 x %struct.option], align 16
  %9 = alloca [2 x i8*], align 16
  %10 = alloca %struct.intlist*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_test.test_usage to i8*), i64 16, i1 false)
  store i8* null, i8** %7, align 8
  %13 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %8, i64 0, i64 0
  %14 = call i32 @OPT_STRING(i8 signext 115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %17 = call i32 @OPT_INCR(i8 signext 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* @verbose, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %20 = call i32 @OPT_BOOLEAN(float 7.000000e+01, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* @dont_fork, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %23 = call i32 (...) @OPT_END()
  %24 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_test.test_subcommands to i8*), i64 16, i1 false)
  store %struct.intlist* null, %struct.intlist** %10, align 8
  %26 = call i32 (...) @hists__init()
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  br label %68

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %8, i64 0, i64 0
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %37 = call i32 @parse_options_subcommand(i32 %32, i8** %33, %struct.option* %34, i8** %35, i8** %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %38, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = call i32 @perf_test__list(i32 %48, i8** %50)
  store i32 %51, i32* %3, align 4
  br label %68

52:                                               ; preds = %40, %31
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 4
  %53 = call i64 @symbol__init(i32* null)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %68

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  %61 = call %struct.intlist* @intlist__new(i8* %60)
  store %struct.intlist* %61, %struct.intlist** %10, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @rlimit__bump_memlock()
  %64 = load i32, i32* %4, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = load %struct.intlist*, %struct.intlist** %10, align 8
  %67 = call i32 @__cmd_test(i32 %64, i8** %65, %struct.intlist* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %55, %46, %29
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i8**, i8*, i8*) #2

declare dso_local i32 @OPT_INCR(i8 signext, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_BOOLEAN(float, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @hists__init(...) #2

declare dso_local i32 @parse_options_subcommand(i32, i8**, %struct.option*, i8**, i8**, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @perf_test__list(i32, i8**) #2

declare dso_local i64 @symbol__init(i32*) #2

declare dso_local %struct.intlist* @intlist__new(i8*) #2

declare dso_local i32 @rlimit__bump_memlock(...) #2

declare dso_local i32 @__cmd_test(i32, i8**, %struct.intlist*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

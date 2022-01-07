; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-list.c_cmd_buildid_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-list.c_cmd_buildid_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"with-hits\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Show only DSOs with hits\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@input_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"input file name\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"don't complain, do it\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Show current kernel build id\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"be more verbose\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"perf buildid-list [<options>]\00", align 1
@__const.cmd_buildid_list.buildid_list_usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i8* null], align 16
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_buildid_list(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x %struct.option], align 16
  %10 = alloca [2 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %12 = call i32 @OPT_BOOLEAN(i8 signext 72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %15 = call i32 @OPT_STRING(i8 signext 105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* @input_name, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %18 = call i32 @OPT_BOOLEAN(i8 signext 102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %21 = call i32 @OPT_BOOLEAN(i8 signext 107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %24 = call i32 @OPT_INCR(i8 signext 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* @verbose, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %27 = call i32 (...) @OPT_END()
  %28 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_buildid_list.buildid_list_usage to i8*), i64 16, i1 false)
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %34 = call i32 @parse_options(i32 %30, i8** %31, %struct.option* %32, i8** %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = call i32 (...) @setup_pager()
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load i32, i32* @stdout, align 4
  %40 = call i64 @sysfs__fprintf_build_id(i32 %39)
  %41 = icmp sgt i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @perf_session__list_build_ids(i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @OPT_BOOLEAN(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @OPT_INCR(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_options(i32, i8**, %struct.option*, i8**, i32) #1

declare dso_local i32 @setup_pager(...) #1

declare dso_local i64 @sysfs__fprintf_build_id(i32) #1

declare dso_local i32 @perf_session__list_build_ids(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

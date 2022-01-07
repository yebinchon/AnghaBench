; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-evlist.c_cmd_evlist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-evlist.c_cmd_evlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_attr_details = type { i32, i32, i32, i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@input_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Input file name\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Show the sample frequency\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Show all event attr details\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Show event group information\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"don't complain, do it\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"trace-fields\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Show tracepoint fields\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"perf evlist [<options>]\00", align 1
@__const.cmd_evlist.evlist_usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* null], align 16
@.str.14 = private unnamed_addr constant [53 x i8] c"--group option is not compatible with other options\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_evlist(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.perf_attr_details, align 4
  %6 = alloca [7 x %struct.option], align 16
  %7 = alloca [2 x i8*], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = bitcast %struct.perf_attr_details* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 20, i1 false)
  %9 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %6, i64 0, i64 0
  %10 = call i32 @OPT_STRING(i8 signext 105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @input_name, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.option, %struct.option* %9, i64 1
  %13 = getelementptr inbounds %struct.perf_attr_details, %struct.perf_attr_details* %5, i32 0, i32 1
  %14 = call i32 @OPT_BOOLEAN(float 7.000000e+01, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %12, i64 1
  %17 = getelementptr inbounds %struct.perf_attr_details, %struct.perf_attr_details* %5, i32 0, i32 0
  %18 = call i32 @OPT_BOOLEAN(float 1.180000e+02, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = getelementptr inbounds %struct.perf_attr_details, %struct.perf_attr_details* %5, i32 0, i32 2
  %22 = call i32 @OPT_BOOLEAN(float 1.030000e+02, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %25 = getelementptr inbounds %struct.perf_attr_details, %struct.perf_attr_details* %5, i32 0, i32 3
  %26 = call i32 @OPT_BOOLEAN(float 1.020000e+02, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %29 = getelementptr inbounds %struct.perf_attr_details, %struct.perf_attr_details* %5, i32 0, i32 4
  %30 = call i32 @OPT_BOOLEAN(float 0.000000e+00, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %33 = call i32 (...) @OPT_END()
  %34 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %35, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_evlist.evlist_usage to i8*), i64 16, i1 false)
  %36 = load i32, i32* %3, align 4
  %37 = load i8**, i8*** %4, align 8
  %38 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %6, i64 0, i64 0
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %40 = call i32 @parse_options(i32 %36, i8** %37, %struct.option* %38, i8** %39, i32 0)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %45 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %6, i64 0, i64 0
  %46 = call i32 @usage_with_options(i8** %44, %struct.option* %45)
  br label %47

47:                                               ; preds = %43, %2
  %48 = getelementptr inbounds %struct.perf_attr_details, %struct.perf_attr_details* %5, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.perf_attr_details, %struct.perf_attr_details* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.perf_attr_details, %struct.perf_attr_details* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %61 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %6, i64 0, i64 0
  %62 = call i32 @usage_with_options_msg(i8** %60, %struct.option* %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %55, %47
  %64 = load i32, i32* @input_name, align 4
  %65 = call i32 @__cmd_evlist(i32 %64, %struct.perf_attr_details* %5)
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i32*, i8*, i8*) #2

declare dso_local i32 @OPT_BOOLEAN(float, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @parse_options(i32, i8**, %struct.option*, i8**, i32) #2

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #2

declare dso_local i32 @usage_with_options_msg(i8**, %struct.option*, i8*) #2

declare dso_local i32 @__cmd_evlist(i32, %struct.perf_attr_details*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-data.c_cmd_data_convert.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-data.c_cmd_data_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data_convert_opts = type { i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"be more verbose\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@input_name = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"input file name\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"don't complain, do it\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Convert all events\00", align 1
@.str.9 = private unnamed_addr constant [149 x i8] c"No conversion support compiled in. perf should be compiled with environment variables LIBBABELTRACE=1 and LIBBABELTRACE_DIR=/path/to/libbabeltrace/\0A\00", align 1
@data_convert_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_data_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_data_convert(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.perf_data_convert_opts, align 4
  %7 = alloca [5 x %struct.option], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = bitcast %struct.perf_data_convert_opts* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %7, i64 0, i64 0
  %10 = call i32 @OPT_INCR(i8 signext 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* @verbose, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.option, %struct.option* %9, i64 1
  %13 = call i32 @OPT_STRING(i8 signext 105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** @input_name, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.option, %struct.option* %12, i64 1
  %16 = getelementptr inbounds %struct.perf_data_convert_opts, %struct.perf_data_convert_opts* %6, i32 0, i32 0
  %17 = call i32 @OPT_BOOLEAN(float 1.020000e+02, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %20 = getelementptr inbounds %struct.perf_data_convert_opts, %struct.perf_data_convert_opts* %6, i32 0, i32 1
  %21 = call i32 @OPT_BOOLEAN(float 0.000000e+00, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %24 = call i32 (...) @OPT_END()
  %25 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @OPT_INCR(i8 signext, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i8**, i8*, i8*) #2

declare dso_local i32 @OPT_BOOLEAN(float, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @pr_err(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

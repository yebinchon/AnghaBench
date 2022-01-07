; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c_cmd_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c_cmd_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@input_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"input file name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"be more verbose (show symbol address, etc)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"dump-raw-trace\00", align 1
@dump_trace = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"dump raw trace in ASCII\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@force = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"don't complain, do it\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@info_threads = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"dump thread list in perf.data\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@info_map = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"map of lock instances (address:name table)\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@sort_key = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"acquired\00", align 1
@.str.15 = private unnamed_addr constant [85 x i8] c"key for sorting (acquired / contended / avg_wait / wait_total / wait_max / wait_min)\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"perf lock info [<options>]\00", align 1
@__const.cmd_lock.info_usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@.str.17 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"perf lock report [<options>]\00", align 1
@__const.cmd_lock.report_usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* null], align 16
@LOCKHASH_SIZE = common dso_local global i32 0, align 4
@lockhash_table = common dso_local global i64 0, align 8
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@report_lock_ops = common dso_local global i32 0, align 4
@trace_handler = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_lock(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x %struct.option], align 16
  %7 = alloca [3 x %struct.option], align 4
  %8 = alloca [2 x %struct.option], align 4
  %9 = alloca [2 x i8*], align 16
  %10 = alloca [5 x i8*], align 16
  %11 = alloca [2 x i8*], align 16
  %12 = alloca [2 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %6, i64 0, i64 0
  %16 = call i32 @OPT_STRING(i8 signext 105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @input_name, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %19 = call i32 @OPT_INCR(i8 signext 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* @verbose, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %22 = call i32 @OPT_BOOLEAN(i8 signext 68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* @dump_trace, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %25 = call i32 @OPT_BOOLEAN(i8 signext 102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* @force, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %28 = call i32 (...) @OPT_END()
  %29 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %7, i64 0, i64 0
  %31 = call i32 @OPT_BOOLEAN(i8 signext 116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* @info_threads, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %32 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %34 = call i32 @OPT_BOOLEAN(i8 signext 109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32* @info_map, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %37 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %6, i64 0, i64 0
  %38 = call i32 @OPT_PARENT(%struct.option* %37)
  %39 = getelementptr inbounds %struct.option, %struct.option* %36, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %41 = call i32 @OPT_STRING(i8 signext 107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32* @sort_key, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.15, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.option, %struct.option* %40, i64 1
  %44 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %6, i64 0, i64 0
  %45 = call i32 @OPT_PARENT(%struct.option* %44)
  %46 = getelementptr inbounds %struct.option, %struct.option* %43, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %47, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_lock.info_usage to i8*), i64 16, i1 false)
  %48 = bitcast [5 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %48, i8 0, i64 40, i1 false)
  %49 = bitcast i8* %48 to [5 x i8*]*
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8** %50, align 16
  %51 = getelementptr inbounds [5 x i8*], [5 x i8*]* %49, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8** %51, align 8
  %52 = getelementptr inbounds [5 x i8*], [5 x i8*]* %49, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8** %52, align 16
  %53 = getelementptr inbounds [5 x i8*], [5 x i8*]* %49, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** %53, align 8
  %54 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %54, i8 0, i64 16, i1 false)
  %55 = bitcast [2 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %55, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_lock.report_usage to i8*), i64 16, i1 false)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %66, %2
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @LOCKHASH_SIZE, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i64, i64* @lockhash_table, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = call i32 @INIT_LIST_HEAD(i64 %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load i32, i32* %4, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %6, i64 0, i64 0
  %73 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %74 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %75 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %76 = call i32 @parse_options_subcommand(i32 %70, i8** %71, %struct.option* %72, i8** %73, i8** %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %81 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %6, i64 0, i64 0
  %82 = call i32 @usage_with_options(i8** %80, %struct.option* %81)
  br label %83

83:                                               ; preds = %79, %69
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 3)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %4, align 4
  %91 = load i8**, i8*** %5, align 8
  %92 = call i32 @__cmd_record(i32 %90, i8** %91)
  store i32 %92, i32* %3, align 4
  br label %160

93:                                               ; preds = %83
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strncmp(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 6)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %93
  store i32* @report_lock_ops, i32** @trace_handler, align 8
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i32, i32* %4, align 4
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %106 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %107 = call i32 @parse_options(i32 %103, i8** %104, %struct.option* %105, i8** %106, i32 0)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %112 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %113 = call i32 @usage_with_options(i8** %111, %struct.option* %112)
  br label %114

114:                                              ; preds = %110, %102
  br label %115

115:                                              ; preds = %114, %99
  %116 = call i32 @__cmd_report(i32 0)
  store i32 %116, i32* %14, align 4
  br label %157

117:                                              ; preds = %93
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %4, align 4
  %125 = load i8**, i8*** %5, align 8
  %126 = call i32 @cmd_script(i32 %124, i8** %125)
  store i32 %126, i32* %3, align 4
  br label %160

127:                                              ; preds = %117
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = load i32, i32* %4, align 4
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %7, i64 0, i64 0
  %140 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %141 = call i32 @parse_options(i32 %137, i8** %138, %struct.option* %139, i8** %140, i32 0)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %146 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %7, i64 0, i64 0
  %147 = call i32 @usage_with_options(i8** %145, %struct.option* %146)
  br label %148

148:                                              ; preds = %144, %136
  br label %149

149:                                              ; preds = %148, %133
  store i32* @report_lock_ops, i32** @trace_handler, align 8
  %150 = call i32 @__cmd_report(i32 1)
  store i32 %150, i32* %14, align 4
  br label %155

151:                                              ; preds = %127
  %152 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %153 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %6, i64 0, i64 0
  %154 = call i32 @usage_with_options(i8** %152, %struct.option* %153)
  br label %155

155:                                              ; preds = %151, %149
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156, %115
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %123, %89
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @OPT_INCR(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_BOOLEAN(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @OPT_PARENT(%struct.option*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i64) #1

declare dso_local i32 @parse_options_subcommand(i32, i8**, %struct.option*, i8**, i8**, i32) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @__cmd_record(i32, i8**) #1

declare dso_local i32 @parse_options(i32, i8**, %struct.option*, i8**, i32) #1

declare dso_local i32 @__cmd_report(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @cmd_script(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

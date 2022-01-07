; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_args.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_print_arg = type { i32, %struct.tep_print_arg*, %struct.TYPE_11__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i8*, %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_20__ = type { i8*, %struct.tep_print_arg* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { %struct.tep_print_arg*, %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_16__ = type { %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_15__ = type { i32, %struct.tep_print_arg* }
%struct.TYPE_14__ = type { i8*, i32, %struct.tep_print_arg* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"REC->%s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"__print_flags(\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c", %s, \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"__print_symbolic(\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"__print_hex(\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"__print_hex_str(\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"__print_array(\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"__get_str(%s)\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"__get_bitmask(%s)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_print_arg*)* @print_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_args(%struct.tep_print_arg* %0) #0 {
  %2 = alloca %struct.tep_print_arg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_seq, align 4
  store %struct.tep_print_arg* %0, %struct.tep_print_arg** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %6 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %153 [
    i32 132, label %8
    i32 140, label %10
    i32 137, label %16
    i32 136, label %22
    i32 129, label %42
    i32 135, label %58
    i32 134, label %70
    i32 133, label %82
    i32 130, label %99
    i32 138, label %99
    i32 139, label %105
    i32 128, label %111
    i32 131, label %121
  ]

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %154

10:                                               ; preds = %1
  %11 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %12 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %11, i32 0, i32 11
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %154

16:                                               ; preds = %1
  %17 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %18 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %17, i32 0, i32 10
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  br label %154

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %25 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load %struct.tep_print_arg*, %struct.tep_print_arg** %26, align 8
  call void @print_args(%struct.tep_print_arg* %27)
  %28 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %29 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  %33 = call i32 @trace_seq_init(%struct.trace_seq* %4)
  %34 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %35 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @print_fields(%struct.trace_seq* %4, i32 %37)
  %39 = call i32 @trace_seq_do_printf(%struct.trace_seq* %4)
  %40 = call i32 @trace_seq_destroy(%struct.trace_seq* %4)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %154

42:                                               ; preds = %1
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %44 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %45 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.tep_print_arg*, %struct.tep_print_arg** %46, align 8
  call void @print_args(%struct.tep_print_arg* %47)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %49 = call i32 @trace_seq_init(%struct.trace_seq* %4)
  %50 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %51 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @print_fields(%struct.trace_seq* %4, i32 %53)
  %55 = call i32 @trace_seq_do_printf(%struct.trace_seq* %4)
  %56 = call i32 @trace_seq_destroy(%struct.trace_seq* %4)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %154

58:                                               ; preds = %1
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %60 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %61 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load %struct.tep_print_arg*, %struct.tep_print_arg** %62, align 8
  call void @print_args(%struct.tep_print_arg* %63)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %65 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %66 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.tep_print_arg*, %struct.tep_print_arg** %67, align 8
  call void @print_args(%struct.tep_print_arg* %68)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %154

70:                                               ; preds = %1
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %72 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %73 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load %struct.tep_print_arg*, %struct.tep_print_arg** %74, align 8
  call void @print_args(%struct.tep_print_arg* %75)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %77 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %78 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load %struct.tep_print_arg*, %struct.tep_print_arg** %79, align 8
  call void @print_args(%struct.tep_print_arg* %80)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %154

82:                                               ; preds = %1
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %84 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %85 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 2
  %87 = load %struct.tep_print_arg*, %struct.tep_print_arg** %86, align 8
  call void @print_args(%struct.tep_print_arg* %87)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %89 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %90 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load %struct.tep_print_arg*, %struct.tep_print_arg** %91, align 8
  call void @print_args(%struct.tep_print_arg* %92)
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %94 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %95 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load %struct.tep_print_arg*, %struct.tep_print_arg** %96, align 8
  call void @print_args(%struct.tep_print_arg* %97)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %154

99:                                               ; preds = %1, %1
  %100 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %101 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %103)
  br label %154

105:                                              ; preds = %1
  %106 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %107 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %109)
  br label %154

111:                                              ; preds = %1
  %112 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %113 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %115)
  %117 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %118 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load %struct.tep_print_arg*, %struct.tep_print_arg** %119, align 8
  call void @print_args(%struct.tep_print_arg* %120)
  br label %154

121:                                              ; preds = %1
  %122 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %123 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %121
  %130 = load i32, i32* %3, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %129
  %135 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %136 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load %struct.tep_print_arg*, %struct.tep_print_arg** %137, align 8
  call void @print_args(%struct.tep_print_arg* %138)
  %139 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %140 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %142)
  %144 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %145 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load %struct.tep_print_arg*, %struct.tep_print_arg** %146, align 8
  call void @print_args(%struct.tep_print_arg* %147)
  %148 = load i32, i32* %3, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %134
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %134
  br label %154

153:                                              ; preds = %1
  br label %164

154:                                              ; preds = %152, %111, %105, %99, %82, %70, %58, %42, %22, %16, %10, %8
  %155 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %156 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %155, i32 0, i32 1
  %157 = load %struct.tep_print_arg*, %struct.tep_print_arg** %156, align 8
  %158 = icmp ne %struct.tep_print_arg* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %161 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %162 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %161, i32 0, i32 1
  %163 = load %struct.tep_print_arg*, %struct.tep_print_arg** %162, align 8
  call void @print_args(%struct.tep_print_arg* %163)
  br label %164

164:                                              ; preds = %153, %159, %154
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @trace_seq_init(%struct.trace_seq*) #1

declare dso_local i32 @print_fields(%struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_do_printf(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_destroy(%struct.trace_seq*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

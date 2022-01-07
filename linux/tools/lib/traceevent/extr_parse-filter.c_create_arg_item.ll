; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_create_arg_item.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_create_arg_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_format_field = type { i32 }
%struct.tep_event = type { i32 }
%struct.tep_filter_arg = type { %struct.TYPE_6__, i8*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.tep_format_field* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to allocate filter arg\00", align 1
@TEP_ERRNO__MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@TEP_FILTER_ARG_VALUE = common dso_local global i8* null, align 8
@TEP_FILTER_STRING = common dso_local global i32 0, align 4
@TEP_FILTER_CHAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate string filter arg\00", align 1
@TEP_FILTER_NUMBER = common dso_local global i32 0, align 4
@COMM = common dso_local global i32 0, align 4
@comm = common dso_local global %struct.tep_format_field zeroinitializer, align 4
@CPU = common dso_local global i32 0, align 4
@cpu = common dso_local global %struct.tep_format_field zeroinitializer, align 4
@TEP_FILTER_ARG_BOOLEAN = common dso_local global i8* null, align 8
@TEP_FILTER_FALSE = common dso_local global i32 0, align 4
@TEP_FILTER_ARG_FIELD = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"expected a value but found %s\00", align 1
@TEP_ERRNO__UNEXPECTED_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*, i8*, i32, %struct.tep_filter_arg**, i8*)* @create_arg_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_arg_item(%struct.tep_event* %0, i8* %1, i32 %2, %struct.tep_filter_arg** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tep_event*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tep_filter_arg**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tep_format_field*, align 8
  %13 = alloca %struct.tep_filter_arg*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.tep_filter_arg** %3, %struct.tep_filter_arg*** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call %struct.tep_filter_arg* (...) @allocate_arg()
  store %struct.tep_filter_arg* %14, %struct.tep_filter_arg** %13, align 8
  %15 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %16 = icmp eq %struct.tep_filter_arg* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 (i8*, i8*, ...) @show_error(i8* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %20, i32* %6, align 4
  br label %120

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %110 [
    i32 128, label %23
    i32 130, label %23
    i32 129, label %55
  ]

23:                                               ; preds = %21, %21
  %24 = load i8*, i8** @TEP_FILTER_ARG_VALUE, align 8
  %25 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %26 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 130
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @TEP_FILTER_STRING, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @TEP_FILTER_CHAR, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %36 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strdup(i8* %38)
  %40 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %41 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %44 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %33
  %49 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %50 = call i32 @free_arg(%struct.tep_filter_arg* %49)
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 (i8*, i8*, ...) @show_error(i8* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %53, i32* %6, align 4
  br label %120

54:                                               ; preds = %33
  br label %117

55:                                               ; preds = %21
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @isdigit(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load i8*, i8** @TEP_FILTER_ARG_VALUE, align 8
  %63 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %64 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @TEP_FILTER_NUMBER, align 4
  %66 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %67 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @strtoull(i8* %69, i32* null, i32 0)
  %71 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %72 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  br label %117

74:                                               ; preds = %55
  %75 = load %struct.tep_event*, %struct.tep_event** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call %struct.tep_format_field* @tep_find_any_field(%struct.tep_event* %75, i8* %76)
  store %struct.tep_format_field* %77, %struct.tep_format_field** %12, align 8
  %78 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  %79 = icmp ne %struct.tep_format_field* %78, null
  br i1 %79, label %102, label %80

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* @COMM, align 4
  %83 = call i32 @strcmp(i8* %81, i32 %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store %struct.tep_format_field* @comm, %struct.tep_format_field** %12, align 8
  br label %101

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* @CPU, align 4
  %89 = call i32 @strcmp(i8* %87, i32 %88)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store %struct.tep_format_field* @cpu, %struct.tep_format_field** %12, align 8
  br label %100

92:                                               ; preds = %86
  %93 = load i8*, i8** @TEP_FILTER_ARG_BOOLEAN, align 8
  %94 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %95 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @TEP_FILTER_FALSE, align 4
  %97 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %98 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %117

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %74
  %103 = load i8*, i8** @TEP_FILTER_ARG_FIELD, align 8
  %104 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %105 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  %107 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %108 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store %struct.tep_format_field* %106, %struct.tep_format_field** %109, align 8
  br label %117

110:                                              ; preds = %21
  %111 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %112 = call i32 @free_arg(%struct.tep_filter_arg* %111)
  %113 = load i8*, i8** %11, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 (i8*, i8*, ...) @show_error(i8* %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  %116 = load i32, i32* @TEP_ERRNO__UNEXPECTED_TYPE, align 4
  store i32 %116, i32* %6, align 4
  br label %120

117:                                              ; preds = %102, %92, %61, %54
  %118 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %13, align 8
  %119 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %10, align 8
  store %struct.tep_filter_arg* %118, %struct.tep_filter_arg** %119, align 8
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %110, %48, %17
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.tep_filter_arg* @allocate_arg(...) #1

declare dso_local i32 @show_error(i8*, i8*, ...) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free_arg(%struct.tep_filter_arg*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local %struct.tep_format_field* @tep_find_any_field(%struct.tep_event*, i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

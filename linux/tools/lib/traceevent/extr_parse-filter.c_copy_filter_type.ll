; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_copy_filter_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_copy_filter_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32 }
%struct.tep_filter_type = type { %struct.tep_filter_arg*, %struct.TYPE_3__* }
%struct.tep_filter_arg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.tep_event = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@TEP_FILTER_ARG_BOOLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event_filter*, %struct.tep_event_filter*, %struct.tep_filter_type*)* @copy_filter_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_filter_type(%struct.tep_event_filter* %0, %struct.tep_event_filter* %1, %struct.tep_filter_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tep_event_filter*, align 8
  %6 = alloca %struct.tep_event_filter*, align 8
  %7 = alloca %struct.tep_filter_type*, align 8
  %8 = alloca %struct.tep_filter_arg*, align 8
  %9 = alloca %struct.tep_event*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %5, align 8
  store %struct.tep_event_filter* %1, %struct.tep_event_filter** %6, align 8
  store %struct.tep_filter_type* %2, %struct.tep_filter_type** %7, align 8
  %13 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %14 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %19 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load %struct.tep_event_filter*, %struct.tep_event_filter** %5, align 8
  %24 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call %struct.tep_event* @tep_find_event_by_name(i32 %25, i8* %26, i8* %27)
  store %struct.tep_event* %28, %struct.tep_event** %9, align 8
  %29 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %30 = icmp ne %struct.tep_event* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %91

32:                                               ; preds = %3
  %33 = load %struct.tep_event_filter*, %struct.tep_event_filter** %6, align 8
  %34 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %35 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %34, i32 0, i32 0
  %36 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %35, align 8
  %37 = call i8* @arg_to_str(%struct.tep_event_filter* %33, %struct.tep_filter_arg* %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %91

41:                                               ; preds = %32
  %42 = load i8*, i8** %12, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %12, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %45, %41
  %50 = call %struct.tep_filter_arg* (...) @allocate_arg()
  store %struct.tep_filter_arg* %50, %struct.tep_filter_arg** %8, align 8
  %51 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %52 = icmp eq %struct.tep_filter_arg* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %91

54:                                               ; preds = %49
  %55 = load i32, i32* @TEP_FILTER_ARG_BOOLEAN, align 4
  %56 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %57 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %63 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %67 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.tep_event_filter*, %struct.tep_event_filter** %5, align 8
  %71 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %72 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.tep_filter_type* @add_filter_type(%struct.tep_event_filter* %70, i32 %73)
  store %struct.tep_filter_type* %74, %struct.tep_filter_type** %7, align 8
  %75 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %76 = icmp eq %struct.tep_filter_type* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %91

78:                                               ; preds = %69
  %79 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %80 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %81 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %80, i32 0, i32 0
  store %struct.tep_filter_arg* %79, %struct.tep_filter_arg** %81, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @free(i8* %82)
  store i32 0, i32* %4, align 4
  br label %91

84:                                               ; preds = %45
  %85 = load %struct.tep_event_filter*, %struct.tep_event_filter** %5, align 8
  %86 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @filter_event(%struct.tep_event_filter* %85, %struct.tep_event* %86, i8* %87, i32* null)
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @free(i8* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %84, %78, %77, %53, %40, %31
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.tep_event* @tep_find_event_by_name(i32, i8*, i8*) #1

declare dso_local i8* @arg_to_str(%struct.tep_event_filter*, %struct.tep_filter_arg*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.tep_filter_arg* @allocate_arg(...) #1

declare dso_local %struct.tep_filter_type* @add_filter_type(%struct.tep_event_filter*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @filter_event(%struct.tep_event_filter*, %struct.tep_event*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

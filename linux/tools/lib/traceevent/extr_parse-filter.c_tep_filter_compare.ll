; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_compare.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32, %struct.tep_filter_type* }
%struct.tep_filter_type = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_filter_compare(%struct.tep_event_filter* %0, %struct.tep_event_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tep_event_filter*, align 8
  %5 = alloca %struct.tep_event_filter*, align 8
  %6 = alloca %struct.tep_filter_type*, align 8
  %7 = alloca %struct.tep_filter_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %4, align 8
  store %struct.tep_event_filter* %1, %struct.tep_event_filter** %5, align 8
  %12 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %13 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tep_event_filter*, %struct.tep_event_filter** %5, align 8
  %16 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

20:                                               ; preds = %2
  %21 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %22 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.tep_event_filter*, %struct.tep_event_filter** %5, align 8
  %27 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %109

31:                                               ; preds = %25, %20
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %98, %31
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %35 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %101

38:                                               ; preds = %32
  %39 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %40 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %39, i32 0, i32 1
  %41 = load %struct.tep_filter_type*, %struct.tep_filter_type** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %41, i64 %43
  store %struct.tep_filter_type* %44, %struct.tep_filter_type** %6, align 8
  %45 = load %struct.tep_event_filter*, %struct.tep_event_filter** %5, align 8
  %46 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %47 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter* %45, i32 %48)
  store %struct.tep_filter_type* %49, %struct.tep_filter_type** %7, align 8
  %50 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %51 = icmp ne %struct.tep_filter_type* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %101

53:                                               ; preds = %38
  %54 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %55 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %60 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %101

66:                                               ; preds = %53
  %67 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %68 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %69 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i8* @arg_to_str(%struct.tep_event_filter* %67, %struct.TYPE_2__* %70)
  store i8* %71, i8** %8, align 8
  %72 = load %struct.tep_event_filter*, %struct.tep_event_filter** %5, align 8
  %73 = load %struct.tep_filter_type*, %struct.tep_filter_type** %7, align 8
  %74 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = call i8* @arg_to_str(%struct.tep_event_filter* %72, %struct.TYPE_2__* %75)
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %66
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i64 @strcmp(i8* %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %89

88:                                               ; preds = %79, %66
  store i32 1, i32* %10, align 4
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %101

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %32

101:                                              ; preds = %96, %65, %52, %32
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %104 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %109

108:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %107, %30, %19
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter*, i32) #1

declare dso_local i8* @arg_to_str(%struct.tep_event_filter*, %struct.TYPE_2__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

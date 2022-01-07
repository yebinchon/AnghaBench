; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c___set_synth_event_print_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c___set_synth_event_print_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_event = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s=%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c", REC->%s\00", align 1
@LEN_OR_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synth_event*, i8*, i32)* @__set_synth_event_print_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_synth_event_print_fmt(%struct.synth_event* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.synth_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.synth_event* %0, %struct.synth_event** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 0, %20 ]
  %23 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %81, %21
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.synth_event*, %struct.synth_event** %4, align 8
  %31 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %28
  %35 = load %struct.synth_event*, %struct.synth_event** %4, align 8
  %36 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @synth_field_fmt(i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %52, %53
  br label %56

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 0, %55 ]
  %58 = load %struct.synth_event*, %struct.synth_event** %4, align 8
  %59 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.synth_event*, %struct.synth_event** %4, align 8
  %70 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %68, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %76 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %67, i8* %75)
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %56
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %28

84:                                               ; preds = %28
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  br label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32 [ %94, %91 ], [ 0, %95 ]
  %98 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %88, i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %137, %96
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.synth_event*, %struct.synth_event** %4, align 8
  %106 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %140

109:                                              ; preds = %103
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %117, %118
  br label %121

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi i32 [ %119, %116 ], [ 0, %120 ]
  %123 = load %struct.synth_event*, %struct.synth_event** %4, align 8
  %124 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %125, i64 %127
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %113, i32 %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %131)
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %121
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %103

140:                                              ; preds = %103
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @synth_field_fmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

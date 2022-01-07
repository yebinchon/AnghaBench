; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_add_to_key.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_add_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i64, i32, i32, %struct.ftrace_event_field* }
%struct.ftrace_event_field = type { i64, i32, i64 }

@HIST_FIELD_FL_STRING = common dso_local global i32 0, align 4
@FILTER_DYN_STRING = common dso_local global i64 0, align 8
@FILTER_PTR_STRING = common dso_local global i64 0, align 8
@FILTER_STATIC_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.hist_field*, i8*)* @add_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_key(i8* %0, i8* %1, %struct.hist_field* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hist_field*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ftrace_event_field*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hist_field* %2, %struct.hist_field** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %12 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %15 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HIST_FIELD_FL_STRING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %4
  %21 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %22 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %21, i32 0, i32 3
  %23 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %22, align 8
  store %struct.ftrace_event_field* %23, %struct.ftrace_event_field** %10, align 8
  %24 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %10, align 8
  %25 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FILTER_DYN_STRING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %20
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %10, align 8
  %32 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %30, i64 %34
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 16
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  br label %61

40:                                               ; preds = %20
  %41 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %10, align 8
  %42 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FILTER_PTR_STRING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %9, align 8
  br label %60

49:                                               ; preds = %40
  %50 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %10, align 8
  %51 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FILTER_STATIC_STRING, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %10, align 8
  %57 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %46
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %64 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %65, 1
  %67 = icmp ugt i64 %62, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %70 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %68, %61
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %76 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @strncpy(i8* %79, i8* %80, i64 %81)
  br label %93

83:                                               ; preds = %4
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %86 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @memcpy(i8* %89, i8* %90, i64 %91)
  br label %93

93:                                               ; preds = %83, %73
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

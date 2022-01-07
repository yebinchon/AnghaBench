; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_strerror.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i8*, i32 }

@__TEP_ERRNO__START = common dso_local global i32 0, align 4
@__TEP_ERRNO__END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_filter_strerror(%struct.tep_event_filter* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_event_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @__TEP_ERRNO__START, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @__TEP_ERRNO__END, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  store i32 -1, i32* %5, align 4
  br label %45

19:                                               ; preds = %14
  %20 = load %struct.tep_event_filter*, %struct.tep_event_filter** %6, align 8
  %21 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.tep_event_filter*, %struct.tep_event_filter** %6, align 8
  %29 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %45

36:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %45

37:                                               ; preds = %19
  %38 = load %struct.tep_event_filter*, %struct.tep_event_filter** %6, align 8
  %39 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @tep_strerror(i32 %40, i32 %41, i8* %42, i64 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %37, %36, %35, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @tep_strerror(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

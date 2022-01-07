; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_remove_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_tep_filter_remove_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32, i32* }
%struct.tep_filter_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_filter_remove_event(%struct.tep_event_filter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tep_event_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_filter_type*, align 8
  %7 = alloca i64, align 8
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %9 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter* %14, i32 %15)
  store %struct.tep_filter_type* %16, %struct.tep_filter_type** %6, align 8
  %17 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %18 = icmp ne %struct.tep_filter_type* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %54

20:                                               ; preds = %13
  %21 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %22 = call i32 @free_filter_type(%struct.tep_filter_type* %21)
  %23 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %24 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %27 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = ptrtoint i32* %30 to i64
  %32 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %33 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %32, i64 1
  %34 = ptrtoint %struct.tep_filter_type* %33 to i64
  %35 = sub i64 %31, %34
  store i64 %35, i64* %7, align 8
  %36 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %37 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %38 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %37, i64 1
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @memmove(%struct.tep_filter_type* %36, %struct.tep_filter_type* %38, i64 %39)
  %41 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %42 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %46 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %49 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = call i32 @memset(i32* %52, i32 0, i32 4)
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %20, %19, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter*, i32) #1

declare dso_local i32 @free_filter_type(%struct.tep_filter_type*) #1

declare dso_local i32 @memmove(%struct.tep_filter_type*, %struct.tep_filter_type*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

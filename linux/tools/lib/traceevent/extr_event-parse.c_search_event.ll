; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_search_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_search_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32, i32 }
%struct.tep_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tep_event* (%struct.tep_handle*, i32, i8*, i8*)* @search_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tep_event* @search_event(%struct.tep_handle* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.tep_event*, align 8
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tep_event*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %4
  %14 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.tep_event* @tep_find_event(%struct.tep_handle* %14, i32 %15)
  store %struct.tep_event* %16, %struct.tep_event** %10, align 8
  %17 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %18 = icmp ne %struct.tep_event* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store %struct.tep_event* null, %struct.tep_event** %5, align 8
  br label %54

20:                                               ; preds = %13
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %26 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i8* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store %struct.tep_event* null, %struct.tep_event** %5, align 8
  br label %54

31:                                               ; preds = %23, %20
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %37 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i8* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store %struct.tep_event* null, %struct.tep_event** %5, align 8
  br label %54

42:                                               ; preds = %34, %31
  br label %52

43:                                               ; preds = %4
  %44 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call %struct.tep_event* @tep_find_event_by_name(%struct.tep_handle* %44, i8* %45, i8* %46)
  store %struct.tep_event* %47, %struct.tep_event** %10, align 8
  %48 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %49 = icmp ne %struct.tep_event* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store %struct.tep_event* null, %struct.tep_event** %5, align 8
  br label %54

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %42
  %53 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  store %struct.tep_event* %53, %struct.tep_event** %5, align 8
  br label %54

54:                                               ; preds = %52, %50, %41, %30, %19
  %55 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  ret %struct.tep_event* %55
}

declare dso_local %struct.tep_event* @tep_find_event(%struct.tep_handle*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.tep_event* @tep_find_event_by_name(%struct.tep_handle*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

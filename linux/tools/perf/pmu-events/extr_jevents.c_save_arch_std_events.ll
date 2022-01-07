; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_save_arch_std_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_save_arch_std_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ADD_EVENT_FIELD = common dso_local global i32 0, align 4
@arch_std_events = common dso_local global i32 0, align 4
@FREE_EVENT_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @save_arch_std_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_arch_std_events(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.event_struct*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  %25 = call %struct.event_struct* @malloc(i32 4)
  store %struct.event_struct* %25, %struct.event_struct** %24, align 8
  %26 = load %struct.event_struct*, %struct.event_struct** %24, align 8
  %27 = icmp ne %struct.event_struct* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %11
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %46

31:                                               ; preds = %11
  %32 = load %struct.event_struct*, %struct.event_struct** %24, align 8
  %33 = call i32 @memset(%struct.event_struct* %32, i32 0, i32 4)
  %34 = load i32, i32* @ADD_EVENT_FIELD, align 4
  %35 = call i32 @FOR_ALL_EVENT_STRUCT_FIELDS(i32 %34)
  %36 = load %struct.event_struct*, %struct.event_struct** %24, align 8
  %37 = getelementptr inbounds %struct.event_struct, %struct.event_struct* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %37, i32* @arch_std_events)
  store i32 0, i32* %12, align 4
  br label %46

39:                                               ; No predecessors!
  %40 = load i32, i32* @FREE_EVENT_FIELD, align 4
  %41 = call i32 @FOR_ALL_EVENT_STRUCT_FIELDS(i32 %40)
  %42 = load %struct.event_struct*, %struct.event_struct** %24, align 8
  %43 = call i32 @free(%struct.event_struct* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %39, %31, %28
  %47 = load i32, i32* %12, align 4
  ret i32 %47
}

declare dso_local %struct.event_struct* @malloc(i32) #1

declare dso_local i32 @memset(%struct.event_struct*, i32, i32) #1

declare dso_local i32 @FOR_ALL_EVENT_STRUCT_FIELDS(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @free(%struct.event_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

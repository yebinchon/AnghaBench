; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_list = type { %struct.tep_event*, %struct.event_list* }
%struct.tep_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_list**, %struct.tep_event*)* @add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_event(%struct.event_list** %0, %struct.tep_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_list**, align 8
  %5 = alloca %struct.tep_event*, align 8
  %6 = alloca %struct.event_list*, align 8
  store %struct.event_list** %0, %struct.event_list*** %4, align 8
  store %struct.tep_event* %1, %struct.tep_event** %5, align 8
  %7 = call %struct.event_list* @malloc(i32 16)
  store %struct.event_list* %7, %struct.event_list** %6, align 8
  %8 = load %struct.event_list*, %struct.event_list** %6, align 8
  %9 = icmp eq %struct.event_list* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.event_list**, %struct.event_list*** %4, align 8
  %13 = load %struct.event_list*, %struct.event_list** %12, align 8
  %14 = load %struct.event_list*, %struct.event_list** %6, align 8
  %15 = getelementptr inbounds %struct.event_list, %struct.event_list* %14, i32 0, i32 1
  store %struct.event_list* %13, %struct.event_list** %15, align 8
  %16 = load %struct.event_list*, %struct.event_list** %6, align 8
  %17 = load %struct.event_list**, %struct.event_list*** %4, align 8
  store %struct.event_list* %16, %struct.event_list** %17, align 8
  %18 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  %19 = load %struct.event_list*, %struct.event_list** %6, align 8
  %20 = getelementptr inbounds %struct.event_list, %struct.event_list* %19, i32 0, i32 0
  store %struct.tep_event* %18, %struct.tep_event** %20, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.event_list* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

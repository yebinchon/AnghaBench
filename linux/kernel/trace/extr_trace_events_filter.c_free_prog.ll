; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_free_prog.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_free_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32 }
%struct.prog_entry = type { %struct.prog_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_filter*)* @free_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_prog(%struct.event_filter* %0) #0 {
  %2 = alloca %struct.event_filter*, align 8
  %3 = alloca %struct.prog_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %2, align 8
  %5 = load %struct.event_filter*, %struct.event_filter** %2, align 8
  %6 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.prog_entry* @rcu_access_pointer(i32 %7)
  store %struct.prog_entry* %8, %struct.prog_entry** %3, align 8
  %9 = load %struct.prog_entry*, %struct.prog_entry** %3, align 8
  %10 = icmp ne %struct.prog_entry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %35

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %29, %12
  %14 = load %struct.prog_entry*, %struct.prog_entry** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %14, i64 %16
  %18 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %17, i32 0, i32 0
  %19 = load %struct.prog_entry*, %struct.prog_entry** %18, align 8
  %20 = icmp ne %struct.prog_entry* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.prog_entry*, %struct.prog_entry** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %22, i64 %24
  %26 = getelementptr inbounds %struct.prog_entry, %struct.prog_entry* %25, i32 0, i32 0
  %27 = load %struct.prog_entry*, %struct.prog_entry** %26, align 8
  %28 = call i32 @kfree(%struct.prog_entry* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.prog_entry*, %struct.prog_entry** %3, align 8
  %34 = call i32 @kfree(%struct.prog_entry* %33)
  br label %35

35:                                               ; preds = %32, %11
  ret void
}

declare dso_local %struct.prog_entry* @rcu_access_pointer(i32) #1

declare dso_local i32 @kfree(%struct.prog_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

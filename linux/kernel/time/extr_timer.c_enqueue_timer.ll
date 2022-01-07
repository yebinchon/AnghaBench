; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_enqueue_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_enqueue_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_base = type { i32, i64 }
%struct.timer_list = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_base*, %struct.timer_list*, i32)* @enqueue_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_timer(%struct.timer_base* %0, %struct.timer_list* %1, i32 %2) #0 {
  %4 = alloca %struct.timer_base*, align 8
  %5 = alloca %struct.timer_list*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_base* %0, %struct.timer_base** %4, align 8
  store %struct.timer_list* %1, %struct.timer_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %8 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 2
  %9 = load %struct.timer_base*, %struct.timer_base** %4, align 8
  %10 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = call i32 @hlist_add_head(i32* %8, i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.timer_base*, %struct.timer_base** %4, align 8
  %18 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @__set_bit(i32 %16, i32 %19)
  %21 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @timer_set_idx(%struct.timer_list* %21, i32 %22)
  %24 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %25 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %26 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %29 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @trace_timer_start(%struct.timer_list* %24, i32 %27, i32 %30)
  ret void
}

declare dso_local i32 @hlist_add_head(i32*, i64) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @timer_set_idx(%struct.timer_list*, i32) #1

declare dso_local i32 @trace_timer_start(%struct.timer_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

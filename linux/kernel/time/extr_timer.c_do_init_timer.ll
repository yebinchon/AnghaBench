; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_do_init_timer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_do_init_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { void (%struct.timer_list*)*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.lock_class_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*)* @do_init_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_timer(%struct.timer_list* %0, void (%struct.timer_list*)* %1, i32 %2, i8* %3, %struct.lock_class_key* %4) #0 {
  %6 = alloca %struct.timer_list*, align 8
  %7 = alloca void (%struct.timer_list*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lock_class_key*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %6, align 8
  store void (%struct.timer_list*)* %1, void (%struct.timer_list*)** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.lock_class_key* %4, %struct.lock_class_key** %10, align 8
  %11 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %12 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %7, align 8
  %15 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %16 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %15, i32 0, i32 0
  store void (%struct.timer_list*)* %14, void (%struct.timer_list*)** %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (...) @raw_smp_processor_id()
  %19 = or i32 %17, %18
  %20 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %21 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %23 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %22, i32 0, i32 2
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.lock_class_key*, %struct.lock_class_key** %10, align 8
  %26 = call i32 @lockdep_init_map(i32* %23, i8* %24, %struct.lock_class_key* %25, i32 0)
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @lockdep_init_map(i32*, i8*, %struct.lock_class_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

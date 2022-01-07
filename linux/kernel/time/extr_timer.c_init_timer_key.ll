; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_init_timer_key.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_init_timer_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.lock_class_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_timer_key(%struct.timer_list* %0, void (%struct.timer_list*)* %1, i32 %2, i8* %3, %struct.lock_class_key* %4) #0 {
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
  %12 = call i32 @debug_init(%struct.timer_list* %11)
  %13 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %14 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.lock_class_key*, %struct.lock_class_key** %10, align 8
  %18 = call i32 @do_init_timer(%struct.timer_list* %13, void (%struct.timer_list*)* %14, i32 %15, i8* %16, %struct.lock_class_key* %17)
  ret void
}

declare dso_local i32 @debug_init(%struct.timer_list*) #1

declare dso_local i32 @do_init_timer(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

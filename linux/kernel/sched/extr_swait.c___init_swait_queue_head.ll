; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_swait.c___init_swait_queue_head.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_swait.c___init_swait_queue_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swait_queue_head = type { i32, i32 }
%struct.lock_class_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__init_swait_queue_head(%struct.swait_queue_head* %0, i8* %1, %struct.lock_class_key* %2) #0 {
  %4 = alloca %struct.swait_queue_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lock_class_key*, align 8
  store %struct.swait_queue_head* %0, %struct.swait_queue_head** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %6, align 8
  %7 = load %struct.swait_queue_head*, %struct.swait_queue_head** %4, align 8
  %8 = getelementptr inbounds %struct.swait_queue_head, %struct.swait_queue_head* %7, i32 0, i32 1
  %9 = call i32 @raw_spin_lock_init(i32* %8)
  %10 = load %struct.swait_queue_head*, %struct.swait_queue_head** %4, align 8
  %11 = getelementptr inbounds %struct.swait_queue_head, %struct.swait_queue_head* %10, i32 0, i32 1
  %12 = load %struct.lock_class_key*, %struct.lock_class_key** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @lockdep_set_class_and_name(i32* %11, %struct.lock_class_key* %12, i8* %13)
  %15 = load %struct.swait_queue_head*, %struct.swait_queue_head** %4, align 8
  %16 = getelementptr inbounds %struct.swait_queue_head, %struct.swait_queue_head* %15, i32 0, i32 0
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  ret void
}

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @lockdep_set_class_and_name(i32*, %struct.lock_class_key*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

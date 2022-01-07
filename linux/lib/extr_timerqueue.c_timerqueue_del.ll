; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_timerqueue.c_timerqueue_del.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_timerqueue.c_timerqueue_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timerqueue_head = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timerqueue_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timerqueue_del(%struct.timerqueue_head* %0, %struct.timerqueue_node* %1) #0 {
  %3 = alloca %struct.timerqueue_head*, align 8
  %4 = alloca %struct.timerqueue_node*, align 8
  store %struct.timerqueue_head* %0, %struct.timerqueue_head** %3, align 8
  store %struct.timerqueue_node* %1, %struct.timerqueue_node** %4, align 8
  %5 = load %struct.timerqueue_node*, %struct.timerqueue_node** %4, align 8
  %6 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %5, i32 0, i32 0
  %7 = call i32 @RB_EMPTY_NODE(i32* %6)
  %8 = call i32 @WARN_ON_ONCE(i32 %7)
  %9 = load %struct.timerqueue_node*, %struct.timerqueue_node** %4, align 8
  %10 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %9, i32 0, i32 0
  %11 = load %struct.timerqueue_head*, %struct.timerqueue_head** %3, align 8
  %12 = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %11, i32 0, i32 0
  %13 = call i32 @rb_erase_cached(i32* %10, %struct.TYPE_2__* %12)
  %14 = load %struct.timerqueue_node*, %struct.timerqueue_node** %4, align 8
  %15 = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %14, i32 0, i32 0
  %16 = call i32 @RB_CLEAR_NODE(i32* %15)
  %17 = load %struct.timerqueue_head*, %struct.timerqueue_head** %3, align 8
  %18 = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @RB_EMPTY_ROOT(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase_cached(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

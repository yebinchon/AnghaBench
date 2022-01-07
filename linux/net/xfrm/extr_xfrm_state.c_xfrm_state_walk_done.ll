; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_walk_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state_walk = type { i32, i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_state_walk_done(%struct.xfrm_state_walk* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.xfrm_state_walk*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.xfrm_state_walk* %0, %struct.xfrm_state_walk** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %5 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %3, align 8
  %6 = getelementptr inbounds %struct.xfrm_state_walk, %struct.xfrm_state_walk* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @kfree(i32 %7)
  %9 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %3, align 8
  %10 = getelementptr inbounds %struct.xfrm_state_walk, %struct.xfrm_state_walk* %9, i32 0, i32 0
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.net*, %struct.net** %4, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_state_walk, %struct.xfrm_state_walk* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.net*, %struct.net** %4, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_bh(i32* %24)
  br label %26

26:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

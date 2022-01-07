; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_peer_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_peer_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_monitor = type { i32 }
%struct.tipc_peer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_mon_peer_up(%struct.net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_monitor*, align 8
  %8 = alloca %struct.tipc_peer*, align 8
  %9 = alloca %struct.tipc_peer*, align 8
  %10 = alloca %struct.tipc_peer*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net*, %struct.net** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.tipc_monitor* @tipc_monitor(%struct.net* %11, i32 %12)
  store %struct.tipc_monitor* %13, %struct.tipc_monitor** %7, align 8
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.tipc_peer* @get_self(%struct.net* %14, i32 %15)
  store %struct.tipc_peer* %16, %struct.tipc_peer** %8, align 8
  %17 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %18 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %17, i32 0, i32 0
  %19 = call i32 @write_lock_bh(i32* %18)
  %20 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.tipc_peer* @get_peer(%struct.tipc_monitor* %20, i32 %21)
  store %struct.tipc_peer* %22, %struct.tipc_peer** %9, align 8
  %23 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %24 = icmp ne %struct.tipc_peer* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @tipc_mon_add_peer(%struct.tipc_monitor* %26, i32 %27, %struct.tipc_peer** %9)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %46

31:                                               ; preds = %25, %3
  %32 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %33 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.tipc_peer*, %struct.tipc_peer** %9, align 8
  %35 = call %struct.tipc_peer* @peer_head(%struct.tipc_peer* %34)
  store %struct.tipc_peer* %35, %struct.tipc_peer** %10, align 8
  %36 = load %struct.tipc_peer*, %struct.tipc_peer** %10, align 8
  %37 = load %struct.tipc_peer*, %struct.tipc_peer** %8, align 8
  %38 = icmp eq %struct.tipc_peer* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %41 = call i32 @mon_update_local_domain(%struct.tipc_monitor* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %44 = load %struct.tipc_peer*, %struct.tipc_peer** %10, align 8
  %45 = call i32 @mon_assign_roles(%struct.tipc_monitor* %43, %struct.tipc_peer* %44)
  br label %46

46:                                               ; preds = %42, %30
  %47 = load %struct.tipc_monitor*, %struct.tipc_monitor** %7, align 8
  %48 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %47, i32 0, i32 0
  %49 = call i32 @write_unlock_bh(i32* %48)
  ret void
}

declare dso_local %struct.tipc_monitor* @tipc_monitor(%struct.net*, i32) #1

declare dso_local %struct.tipc_peer* @get_self(%struct.net*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.tipc_peer* @get_peer(%struct.tipc_monitor*, i32) #1

declare dso_local i32 @tipc_mon_add_peer(%struct.tipc_monitor*, i32, %struct.tipc_peer**) #1

declare dso_local %struct.tipc_peer* @peer_head(%struct.tipc_peer*) #1

declare dso_local i32 @mon_update_local_domain(%struct.tipc_monitor*) #1

declare dso_local i32 @mon_assign_roles(%struct.tipc_monitor*, %struct.tipc_peer*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

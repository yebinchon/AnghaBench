; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c___l2tp_session_unhash.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c___l2tp_session_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32, i32, %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i64, i32, i32 }
%struct.l2tp_net = type { i32 }

@L2TP_HDR_VER_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__l2tp_session_unhash(%struct.l2tp_session* %0) #0 {
  %2 = alloca %struct.l2tp_session*, align 8
  %3 = alloca %struct.l2tp_tunnel*, align 8
  %4 = alloca %struct.l2tp_net*, align 8
  store %struct.l2tp_session* %0, %struct.l2tp_session** %2, align 8
  %5 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %6 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %5, i32 0, i32 2
  %7 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  store %struct.l2tp_tunnel* %7, %struct.l2tp_tunnel** %3, align 8
  %8 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %9 = icmp ne %struct.l2tp_tunnel* %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %12 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %11, i32 0, i32 2
  %13 = call i32 @write_lock_bh(i32* %12)
  %14 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %15 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %14, i32 0, i32 1
  %16 = call i32 @hlist_del_init(i32* %15)
  %17 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %18 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %17, i32 0, i32 2
  %19 = call i32 @write_unlock_bh(i32* %18)
  %20 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %21 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @L2TP_HDR_VER_2, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %10
  %26 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %27 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.l2tp_net* @l2tp_pernet(i32 %28)
  store %struct.l2tp_net* %29, %struct.l2tp_net** %4, align 8
  %30 = load %struct.l2tp_net*, %struct.l2tp_net** %4, align 8
  %31 = getelementptr inbounds %struct.l2tp_net, %struct.l2tp_net* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %34 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %33, i32 0, i32 0
  %35 = call i32 @hlist_del_init_rcu(i32* %34)
  %36 = load %struct.l2tp_net*, %struct.l2tp_net** %4, align 8
  %37 = getelementptr inbounds %struct.l2tp_net, %struct.l2tp_net* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = call i32 (...) @synchronize_rcu()
  br label %40

40:                                               ; preds = %25, %10
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local %struct.l2tp_net* @l2tp_pernet(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

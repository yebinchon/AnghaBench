; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i32 }
%struct.rhashtable_iter = type { i32 }
%struct.tipc_sock = type { i32, %struct.tipc_msg }
%struct.tipc_msg = type { i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_sk_reinit(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.tipc_net*, align 8
  %4 = alloca %struct.rhashtable_iter, align 4
  %5 = alloca %struct.tipc_sock*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = load i32, i32* @tipc_net_id, align 4
  %9 = call %struct.tipc_net* @net_generic(%struct.net* %7, i32 %8)
  store %struct.tipc_net* %9, %struct.tipc_net** %3, align 8
  %10 = load %struct.tipc_net*, %struct.tipc_net** %3, align 8
  %11 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %10, i32 0, i32 0
  %12 = call i32 @rhashtable_walk_enter(i32* %11, %struct.rhashtable_iter* %4)
  br label %13

13:                                               ; preds = %52, %1
  %14 = call i32 @rhashtable_walk_start(%struct.rhashtable_iter* %4)
  br label %15

15:                                               ; preds = %25, %13
  %16 = call %struct.tipc_sock* @rhashtable_walk_next(%struct.rhashtable_iter* %4)
  store %struct.tipc_sock* %16, %struct.tipc_sock** %5, align 8
  %17 = icmp ne %struct.tipc_sock* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %20 = call i32 @IS_ERR(%struct.tipc_sock* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %50

25:                                               ; preds = %23
  %26 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %27 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %26, i32 0, i32 0
  %28 = call i32 @sock_hold(i32* %27)
  %29 = call i32 @rhashtable_walk_stop(%struct.rhashtable_iter* %4)
  %30 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %31 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %30, i32 0, i32 0
  %32 = call i32 @lock_sock(i32* %31)
  %33 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %34 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %33, i32 0, i32 1
  store %struct.tipc_msg* %34, %struct.tipc_msg** %6, align 8
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %36 = load %struct.net*, %struct.net** %2, align 8
  %37 = call i32 @tipc_own_addr(%struct.net* %36)
  %38 = call i32 @msg_set_prevnode(%struct.tipc_msg* %35, i32 %37)
  %39 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %40 = load %struct.net*, %struct.net** %2, align 8
  %41 = call i32 @tipc_own_addr(%struct.net* %40)
  %42 = call i32 @msg_set_orignode(%struct.tipc_msg* %39, i32 %41)
  %43 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %44 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %43, i32 0, i32 0
  %45 = call i32 @release_sock(i32* %44)
  %46 = call i32 @rhashtable_walk_start(%struct.rhashtable_iter* %4)
  %47 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %48 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %47, i32 0, i32 0
  %49 = call i32 @sock_put(i32* %48)
  br label %15

50:                                               ; preds = %23
  %51 = call i32 @rhashtable_walk_stop(%struct.rhashtable_iter* %4)
  br label %52

52:                                               ; preds = %50
  %53 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.tipc_sock* @ERR_PTR(i32 %55)
  %57 = icmp eq %struct.tipc_sock* %53, %56
  br i1 %57, label %13, label %58

58:                                               ; preds = %52
  %59 = call i32 @rhashtable_walk_exit(%struct.rhashtable_iter* %4)
  ret void
}

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @rhashtable_walk_enter(i32*, %struct.rhashtable_iter*) #1

declare dso_local i32 @rhashtable_walk_start(%struct.rhashtable_iter*) #1

declare dso_local %struct.tipc_sock* @rhashtable_walk_next(%struct.rhashtable_iter*) #1

declare dso_local i32 @IS_ERR(%struct.tipc_sock*) #1

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i32 @rhashtable_walk_stop(%struct.rhashtable_iter*) #1

declare dso_local i32 @lock_sock(i32*) #1

declare dso_local i32 @msg_set_prevnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @release_sock(i32*) #1

declare dso_local i32 @sock_put(i32*) #1

declare dso_local %struct.tipc_sock* @ERR_PTR(i32) #1

declare dso_local i32 @rhashtable_walk_exit(%struct.rhashtable_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

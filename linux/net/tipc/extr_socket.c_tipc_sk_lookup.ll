; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { i32 }
%struct.net = type { i32 }
%struct.tipc_net = type { i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@tsk_rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tipc_sock* (%struct.net*, i32)* @tipc_sk_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tipc_sock* @tipc_sk_lookup(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_net*, align 8
  %6 = alloca %struct.tipc_sock*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* @tipc_net_id, align 4
  %9 = call %struct.tipc_net* @net_generic(%struct.net* %7, i32 %8)
  store %struct.tipc_net* %9, %struct.tipc_net** %5, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %12 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %11, i32 0, i32 0
  %13 = load i32, i32* @tsk_rht_params, align 4
  %14 = call %struct.tipc_sock* @rhashtable_lookup_fast(i32* %12, i32* %4, i32 %13)
  store %struct.tipc_sock* %14, %struct.tipc_sock** %6, align 8
  %15 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %16 = icmp ne %struct.tipc_sock* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  %19 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %18, i32 0, i32 0
  %20 = call i32 @sock_hold(i32* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = call i32 (...) @rcu_read_unlock()
  %23 = load %struct.tipc_sock*, %struct.tipc_sock** %6, align 8
  ret %struct.tipc_sock* %23
}

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tipc_sock* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { i32, %struct.sock }
%struct.sock = type { i32 }
%struct.tipc_net = type { i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@tsk_rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_sock*)* @tipc_sk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_sk_remove(%struct.tipc_sock* %0) #0 {
  %2 = alloca %struct.tipc_sock*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tipc_net*, align 8
  store %struct.tipc_sock* %0, %struct.tipc_sock** %2, align 8
  %5 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %6 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %5, i32 0, i32 1
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @sock_net(%struct.sock* %7)
  %9 = load i32, i32* @tipc_net_id, align 4
  %10 = call %struct.tipc_net* @net_generic(i32 %8, i32 %9)
  store %struct.tipc_net* %10, %struct.tipc_net** %4, align 8
  %11 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %12 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %11, i32 0, i32 0
  %13 = load %struct.tipc_sock*, %struct.tipc_sock** %2, align 8
  %14 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %13, i32 0, i32 0
  %15 = load i32, i32* @tsk_rht_params, align 4
  %16 = call i32 @rhashtable_remove_fast(i32* %12, i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = call i32 @refcount_read(i32* %20)
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @__sock_put(%struct.sock* %25)
  br label %27

27:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.tipc_net* @net_generic(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

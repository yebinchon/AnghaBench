; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_net.c_tipc_net_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_net.c_tipc_net_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i32 }

@TIPC_CFG_SRV = common dso_local global i32 0, align 4
@TIPC_CLUSTER_SCOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32)* @tipc_net_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_net_finalize(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = call %struct.tipc_net* @tipc_net(%struct.net* %6)
  store %struct.tipc_net* %7, %struct.tipc_net** %5, align 8
  %8 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %9 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @cmpxchg(i32* %9, i32 0, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.net*, %struct.net** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @tipc_set_node_addr(%struct.net* %15, i32 %16)
  %18 = load %struct.net*, %struct.net** %3, align 8
  %19 = call i32 @tipc_named_reinit(%struct.net* %18)
  %20 = load %struct.net*, %struct.net** %3, align 8
  %21 = call i32 @tipc_sk_reinit(%struct.net* %20)
  %22 = load %struct.net*, %struct.net** %3, align 8
  %23 = load i32, i32* @TIPC_CFG_SRV, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TIPC_CLUSTER_SCOPE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @tipc_nametbl_publish(%struct.net* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i64 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @tipc_set_node_addr(%struct.net*, i32) #1

declare dso_local i32 @tipc_named_reinit(%struct.net*) #1

declare dso_local i32 @tipc_sk_reinit(%struct.net*) #1

declare dso_local i32 @tipc_nametbl_publish(%struct.net*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_init_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_init_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_bearer = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32*)* }
%struct.tipc_net = type { i32, i32, i32 }
%struct.tipc_msg = type { i32 }

@LINK_CONFIG = common dso_local global i32 0, align 4
@MAX_H_SIZE = common dso_local global i64 0, align 8
@NODE_ID_LEN = common dso_local global i64 0, align 8
@TIPC_NODE_CAPABILITIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sk_buff*, i32, %struct.tipc_bearer*)* @tipc_disc_init_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_disc_init_msg(%struct.net* %0, %struct.sk_buff* %1, i32 %2, %struct.tipc_bearer* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_bearer*, align 8
  %9 = alloca %struct.tipc_net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tipc_msg*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tipc_bearer* %3, %struct.tipc_bearer** %8, align 8
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = call %struct.tipc_net* @tipc_net(%struct.net* %12)
  store %struct.tipc_net* %13, %struct.tipc_net** %9, align 8
  %14 = load %struct.tipc_bearer*, %struct.tipc_bearer** %8, align 8
  %15 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %17)
  store %struct.tipc_msg* %18, %struct.tipc_msg** %11, align 8
  %19 = load %struct.tipc_net*, %struct.tipc_net** %9, align 8
  %20 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %23 = load i32, i32* @LINK_CONFIG, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* @MAX_H_SIZE, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @tipc_msg_init(i32 %21, %struct.tipc_msg* %22, i32 %23, i32 %24, i64 %25, i32 %26)
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %29 = load i64, i64* @MAX_H_SIZE, align 8
  %30 = load i64, i64* @NODE_ID_LEN, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @msg_set_size(%struct.tipc_msg* %28, i64 %31)
  %33 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %34 = call i32 @msg_set_non_seq(%struct.tipc_msg* %33, i32 1)
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %36 = load %struct.tipc_net*, %struct.tipc_net** %9, align 8
  %37 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @msg_set_node_sig(%struct.tipc_msg* %35, i32 %38)
  %40 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %41 = load i32, i32* @TIPC_NODE_CAPABILITIES, align 4
  %42 = call i32 @msg_set_node_capabilities(%struct.tipc_msg* %40, i32 %41)
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @msg_set_dest_domain(%struct.tipc_msg* %43, i32 %44)
  %46 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %47 = load %struct.tipc_net*, %struct.tipc_net** %9, align 8
  %48 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @msg_set_bc_netid(%struct.tipc_msg* %46, i32 %49)
  %51 = load %struct.tipc_bearer*, %struct.tipc_bearer** %8, align 8
  %52 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (i32, i32*)*, i32 (i32, i32*)** %54, align 8
  %56 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %57 = call i32 @msg_media_addr(%struct.tipc_msg* %56)
  %58 = load %struct.tipc_bearer*, %struct.tipc_bearer** %8, align 8
  %59 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %58, i32 0, i32 0
  %60 = call i32 %55(i32 %57, i32* %59)
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %62 = load %struct.net*, %struct.net** %5, align 8
  %63 = call i32 @tipc_own_id(%struct.net* %62)
  %64 = call i32 @msg_set_node_id(%struct.tipc_msg* %61, i32 %63)
  ret void
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_msg_init(i32, %struct.tipc_msg*, i32, i32, i64, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_non_seq(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_node_sig(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_node_capabilities(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_dest_domain(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_bc_netid(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_media_addr(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_node_id(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_own_id(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

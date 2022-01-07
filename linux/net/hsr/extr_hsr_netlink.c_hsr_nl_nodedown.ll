; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_nl_nodedown.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_nl_nodedown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hsr_port = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@hsr_genl_family = common dso_local global i32 0, align 4
@HSR_C_NODE_DOWN = common dso_local global i32 0, align 4
@HSR_A_NODE_ADDR = common dso_local global i32 0, align 4
@HSR_PT_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not send HSR node down\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsr_nl_nodedown(%struct.hsr_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.hsr_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hsr_port*, align 8
  %8 = alloca i32, align 4
  store %struct.hsr_priv* %0, %struct.hsr_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.sk_buff* @genlmsg_new(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @HSR_C_NODE_DOWN, align 4
  %20 = call i8* @genlmsg_put(%struct.sk_buff* %18, i32 0, i32 0, i32* @hsr_genl_family, i32 0, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %40

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @HSR_A_NODE_ADDR, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @nla_put(%struct.sk_buff* %25, i32 %26, i32 %27, i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %40

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @genlmsg_end(%struct.sk_buff* %34, i8* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i32 @genlmsg_multicast(i32* @hsr_genl_family, %struct.sk_buff* %37, i32 0, i32 0, i32 %38)
  br label %53

40:                                               ; preds = %32, %23
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %40, %16
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load %struct.hsr_priv*, %struct.hsr_priv** %3, align 8
  %46 = load i32, i32* @HSR_PT_MASTER, align 4
  %47 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %45, i32 %46)
  store %struct.hsr_port* %47, %struct.hsr_port** %7, align 8
  %48 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %49 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netdev_warn(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 (...) @rcu_read_unlock()
  br label %53

53:                                               ; preds = %43, %33
  ret void
}

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

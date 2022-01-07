; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_nl_ringerror.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_nl_ringerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_priv = type { i32 }
%struct.hsr_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@hsr_genl_family = common dso_local global i32 0, align 4
@HSR_C_RING_ERROR = common dso_local global i32 0, align 4
@HSR_A_NODE_ADDR = common dso_local global i32 0, align 4
@HSR_A_IFINDEX = common dso_local global i32 0, align 4
@HSR_PT_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not send HSR ring error message\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsr_nl_ringerror(%struct.hsr_priv* %0, i8* %1, %struct.hsr_port* %2) #0 {
  %4 = alloca %struct.hsr_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hsr_port*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hsr_port*, align 8
  %10 = alloca i32, align 4
  store %struct.hsr_priv* %0, %struct.hsr_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.hsr_port* %2, %struct.hsr_port** %6, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @genlmsg_new(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %57

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = load i32, i32* @HSR_C_RING_ERROR, align 4
  %22 = call i8* @genlmsg_put(%struct.sk_buff* %20, i32 0, i32 0, i32* @hsr_genl_family, i32 0, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %54

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load i32, i32* @HSR_A_NODE_ADDR, align 4
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @nla_put(%struct.sk_buff* %27, i32 %28, i32 %29, i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %54

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load i32, i32* @HSR_A_IFINDEX, align 4
  %38 = load %struct.hsr_port*, %struct.hsr_port** %6, align 8
  %39 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %54

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @genlmsg_end(%struct.sk_buff* %48, i8* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i32 @genlmsg_multicast(i32* @hsr_genl_family, %struct.sk_buff* %51, i32 0, i32 0, i32 %52)
  br label %67

54:                                               ; preds = %46, %34, %25
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %54, %18
  %58 = call i32 (...) @rcu_read_lock()
  %59 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %60 = load i32, i32* @HSR_PT_MASTER, align 4
  %61 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %59, i32 %60)
  store %struct.hsr_port* %61, %struct.hsr_port** %9, align 8
  %62 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %63 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = call i32 @netdev_warn(%struct.TYPE_2__* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 (...) @rcu_read_unlock()
  br label %67

67:                                               ; preds = %57, %47
  ret void
}

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

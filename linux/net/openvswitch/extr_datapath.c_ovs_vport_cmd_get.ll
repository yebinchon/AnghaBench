; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.ovs_header*, %struct.nlattr** }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }
%struct.vport = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OVS_VPORT_CMD_GET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_vport_cmd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.ovs_header*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.vport*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 3
  %13 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  store %struct.nlattr** %13, %struct.nlattr*** %6, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 2
  %16 = load %struct.ovs_header*, %struct.ovs_header** %15, align 8
  store %struct.ovs_header* %16, %struct.ovs_header** %7, align 8
  %17 = call %struct.sk_buff* (...) @ovs_vport_cmd_alloc_info()
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sock_net(i32 %27)
  %29 = load %struct.ovs_header*, %struct.ovs_header** %7, align 8
  %30 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %31 = call %struct.vport* @lookup_vport(i32 %28, %struct.ovs_header* %29, %struct.nlattr** %30)
  store %struct.vport* %31, %struct.vport** %9, align 8
  %32 = load %struct.vport*, %struct.vport** %9, align 8
  %33 = call i32 @PTR_ERR(%struct.vport* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.vport*, %struct.vport** %9, align 8
  %35 = call i64 @IS_ERR(%struct.vport* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %60

38:                                               ; preds = %23
  %39 = load %struct.vport*, %struct.vport** %9, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = call i32 @genl_info_net(%struct.genl_info* %41)
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OVS_VPORT_CMD_GET, align 4
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i32 @ovs_vport_cmd_fill_info(%struct.vport* %39, %struct.sk_buff* %40, i32 %42, i32 %45, i32 %48, i32 0, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = call i32 (...) @rcu_read_unlock()
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = call i32 @genlmsg_reply(%struct.sk_buff* %57, %struct.genl_info* %58)
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %37
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call i32 @kfree_skb(%struct.sk_buff* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %38, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.sk_buff* @ovs_vport_cmd_alloc_info(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.vport* @lookup_vport(i32, %struct.ovs_header*, %struct.nlattr**) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i32 @ovs_vport_cmd_fill_info(%struct.vport*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

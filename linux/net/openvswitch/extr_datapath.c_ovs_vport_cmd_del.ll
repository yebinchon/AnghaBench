; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32, %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.datapath = type { i32 }
%struct.vport = type { i64, i32, %struct.datapath* }

@ENOMEM = common dso_local global i32 0, align 4
@OVSP_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OVS_VPORT_CMD_DEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dp_vport_genl_family = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_vport_cmd_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_del(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.datapath*, align 8
  %10 = alloca %struct.vport*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 3
  %15 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  store %struct.nlattr** %15, %struct.nlattr*** %7, align 8
  %16 = call %struct.sk_buff* (...) @ovs_vport_cmd_alloc_info()
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %110

22:                                               ; preds = %2
  %23 = call i32 (...) @ovs_lock()
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sock_net(i32 %26)
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %32 = call %struct.vport* @lookup_vport(i32 %27, i32 %30, %struct.nlattr** %31)
  store %struct.vport* %32, %struct.vport** %10, align 8
  %33 = load %struct.vport*, %struct.vport** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.vport* %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.vport*, %struct.vport** %10, align 8
  %36 = call i64 @IS_ERR(%struct.vport* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %105

39:                                               ; preds = %22
  %40 = load %struct.vport*, %struct.vport** %10, align 8
  %41 = getelementptr inbounds %struct.vport, %struct.vport* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OVSP_LOCAL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %105

48:                                               ; preds = %39
  %49 = load %struct.vport*, %struct.vport** %10, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = call i32 @genl_info_net(%struct.genl_info* %51)
  %53 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %54 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @OVS_VPORT_CMD_DEL, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @ovs_vport_cmd_fill_info(%struct.vport* %49, %struct.sk_buff* %50, i32 %52, i32 %55, i32 %58, i32 0, i32 %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.vport*, %struct.vport** %10, align 8
  %67 = getelementptr inbounds %struct.vport, %struct.vport* %66, i32 0, i32 2
  %68 = load %struct.datapath*, %struct.datapath** %67, align 8
  store %struct.datapath* %68, %struct.datapath** %9, align 8
  %69 = load %struct.vport*, %struct.vport** %10, align 8
  %70 = getelementptr inbounds %struct.vport, %struct.vport* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @netdev_get_fwd_headroom(i32 %71)
  %73 = load %struct.datapath*, %struct.datapath** %9, align 8
  %74 = getelementptr inbounds %struct.datapath, %struct.datapath* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %48
  %79 = load %struct.vport*, %struct.vport** %10, align 8
  %80 = getelementptr inbounds %struct.vport, %struct.vport* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netdev_reset_rx_headroom(i32 %81)
  %83 = load %struct.vport*, %struct.vport** %10, align 8
  %84 = call i32 @ovs_dp_detach_port(%struct.vport* %83)
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %78
  %88 = load %struct.datapath*, %struct.datapath** %9, align 8
  %89 = call i32 @ovs_get_max_headroom(%struct.datapath* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.datapath*, %struct.datapath** %9, align 8
  %92 = getelementptr inbounds %struct.datapath, %struct.datapath* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load %struct.datapath*, %struct.datapath** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @ovs_update_headroom(%struct.datapath* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %87
  br label %100

100:                                              ; preds = %99, %78
  %101 = call i32 (...) @ovs_unlock()
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %104 = call i32 @ovs_notify(i32* @dp_vport_genl_family, %struct.sk_buff* %102, %struct.genl_info* %103)
  store i32 0, i32* %3, align 4
  br label %110

105:                                              ; preds = %45, %38
  %106 = call i32 (...) @ovs_unlock()
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %100, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.sk_buff* @ovs_vport_cmd_alloc_info(...) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.vport* @lookup_vport(i32, i32, %struct.nlattr**) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i32 @ovs_vport_cmd_fill_info(%struct.vport*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netdev_get_fwd_headroom(i32) #1

declare dso_local i32 @netdev_reset_rx_headroom(i32) #1

declare dso_local i32 @ovs_dp_detach_port(%struct.vport*) #1

declare dso_local i32 @ovs_get_max_headroom(%struct.datapath*) #1

declare dso_local i32 @ovs_update_headroom(%struct.datapath*, i32) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @ovs_notify(i32*, %struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

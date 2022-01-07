; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_cmd_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_cmd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32, i32 }
%struct.datapath = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OVS_DP_CMD_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_dp_cmd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_dp_cmd_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.datapath*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = call %struct.sk_buff* (...) @ovs_dp_cmd_alloc_info()
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = call i32 (...) @ovs_lock()
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sock_net(i32 %19)
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.datapath* @lookup_datapath(i32 %20, i32 %23, i32 %26)
  store %struct.datapath* %27, %struct.datapath** %7, align 8
  %28 = load %struct.datapath*, %struct.datapath** %7, align 8
  %29 = call i64 @IS_ERR(%struct.datapath* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load %struct.datapath*, %struct.datapath** %7, align 8
  %33 = call i32 @PTR_ERR(%struct.datapath* %32)
  store i32 %33, i32* %8, align 4
  br label %53

34:                                               ; preds = %15
  %35 = load %struct.datapath*, %struct.datapath** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OVS_DP_CMD_GET, align 4
  %44 = call i32 @ovs_dp_cmd_fill_info(%struct.datapath* %35, %struct.sk_buff* %36, i32 %39, i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = call i32 (...) @ovs_unlock()
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = call i32 @genlmsg_reply(%struct.sk_buff* %50, %struct.genl_info* %51)
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %31
  %54 = call i32 (...) @ovs_unlock()
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %34, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.sk_buff* @ovs_dp_cmd_alloc_info(...) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @lookup_datapath(i32, i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @IS_ERR(%struct.datapath*) #1

declare dso_local i32 @PTR_ERR(%struct.datapath*) #1

declare dso_local i32 @ovs_dp_cmd_fill_info(%struct.datapath*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

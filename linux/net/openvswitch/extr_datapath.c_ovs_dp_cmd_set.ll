; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_cmd_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_dp_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32, i32 }
%struct.datapath = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OVS_DP_CMD_SET = common dso_local global i32 0, align 4
@dp_datapath_genl_family = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_dp_cmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_dp_cmd_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
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
  br label %67

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
  %29 = call i32 @PTR_ERR(%struct.datapath* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.datapath*, %struct.datapath** %7, align 8
  %31 = call i64 @IS_ERR(%struct.datapath* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %62

34:                                               ; preds = %15
  %35 = load %struct.datapath*, %struct.datapath** %7, align 8
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ovs_dp_change(%struct.datapath* %35, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %62

43:                                               ; preds = %34
  %44 = load %struct.datapath*, %struct.datapath** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %50 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OVS_DP_CMD_SET, align 4
  %53 = call i32 @ovs_dp_cmd_fill_info(%struct.datapath* %44, %struct.sk_buff* %45, i32 %48, i32 %51, i32 0, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = call i32 (...) @ovs_unlock()
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = call i32 @ovs_notify(i32* @dp_datapath_genl_family, %struct.sk_buff* %59, %struct.genl_info* %60)
  store i32 0, i32* %3, align 4
  br label %67

62:                                               ; preds = %42, %33
  %63 = call i32 (...) @ovs_unlock()
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %43, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.sk_buff* @ovs_dp_cmd_alloc_info(...) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @lookup_datapath(i32, i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @PTR_ERR(%struct.datapath*) #1

declare dso_local i64 @IS_ERR(%struct.datapath*) #1

declare dso_local i32 @ovs_dp_change(%struct.datapath*, i32) #1

declare dso_local i32 @ovs_dp_cmd_fill_info(%struct.datapath*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @ovs_notify(i32*, %struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

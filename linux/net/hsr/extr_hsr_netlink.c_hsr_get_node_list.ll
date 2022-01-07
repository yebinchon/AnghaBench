; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_get_node_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_get_node_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.hsr_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@HSR_A_IFINDEX = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hsr_genl_family = common dso_local global i32 0, align 4
@HSR_C_SET_NODE_LIST = common dso_local global i32 0, align 4
@HSR_A_NODE_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @hsr_get_node_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsr_get_node_list(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hsr_priv*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = icmp ne %struct.genl_info* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %123

24:                                               ; preds = %2
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 2
  %27 = load %struct.nlattr**, %struct.nlattr*** %26, align 8
  %28 = load i64, i64* @HSR_A_IFINDEX, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  store %struct.nlattr* %30, %struct.nlattr** %6, align 8
  %31 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %123

34:                                               ; preds = %24
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = call i32 @genl_info_net(%struct.genl_info* %35)
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 2
  %39 = load %struct.nlattr**, %struct.nlattr*** %38, align 8
  %40 = load i64, i64* @HSR_A_IFINDEX, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nla_get_u32(%struct.nlattr* %42)
  %44 = call %struct.net_device* @__dev_get_by_index(i32 %36, i32 %43)
  store %struct.net_device* %44, %struct.net_device** %7, align 8
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %123

48:                                               ; preds = %34
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = call i32 @is_hsr_master(%struct.net_device* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %123

53:                                               ; preds = %48
  %54 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.sk_buff* @genlmsg_new(i32 %54, i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %8, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %14, align 4
  br label %133

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @NETLINK_CB(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %70 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HSR_C_SET_NODE_LIST, align 4
  %73 = call i8* @genlmsg_put(%struct.sk_buff* %63, i32 %68, i32 %71, i32* @hsr_genl_family, i32 0, i32 %72)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %62
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  br label %130

79:                                               ; preds = %62
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load i64, i64* @HSR_A_IFINDEX, align 8
  %82 = load %struct.net_device*, %struct.net_device** %7, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nla_put_u32(%struct.sk_buff* %80, i64 %81, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %130

89:                                               ; preds = %79
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = call %struct.hsr_priv* @netdev_priv(%struct.net_device* %90)
  store %struct.hsr_priv* %91, %struct.hsr_priv** %10, align 8
  %92 = call i32 (...) @rcu_read_lock()
  %93 = load %struct.hsr_priv*, %struct.hsr_priv** %10, align 8
  %94 = call i8* @hsr_get_next_node(%struct.hsr_priv* %93, i8* null, i8* %20)
  store i8* %94, i8** %11, align 8
  br label %95

95:                                               ; preds = %107, %89
  %96 = load i8*, i8** %11, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = load i32, i32* @HSR_A_NODE_ADDR, align 4
  %101 = load i32, i32* @ETH_ALEN, align 4
  %102 = call i32 @nla_put(%struct.sk_buff* %99, i32 %100, i32 %101, i8* %20)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 (...) @rcu_read_unlock()
  br label %130

107:                                              ; preds = %98
  %108 = load %struct.hsr_priv*, %struct.hsr_priv** %10, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i8* @hsr_get_next_node(%struct.hsr_priv* %108, i8* %109, i8* %20)
  store i8* %110, i8** %11, align 8
  br label %95

111:                                              ; preds = %95
  %112 = call i32 (...) @rcu_read_unlock()
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @genlmsg_end(%struct.sk_buff* %113, i8* %114)
  %116 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %117 = call i32 @genl_info_net(%struct.genl_info* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %120 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @genlmsg_unicast(i32 %117, %struct.sk_buff* %118, i32 %121)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %135

123:                                              ; preds = %52, %47, %33, %23
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = call i32 @nlmsg_hdr(%struct.sk_buff* %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  %129 = call i32 @netlink_ack(%struct.sk_buff* %124, i32 %126, i32 %128, i32* null)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %135

130:                                              ; preds = %105, %88, %76
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = call i32 @kfree_skb(%struct.sk_buff* %131)
  br label %133

133:                                              ; preds = %130, %59
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %135

135:                                              ; preds = %133, %123, %111
  %136 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i32) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @is_hsr_master(%struct.net_device*) #2

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #2

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #2

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i64, i32) #2

declare dso_local %struct.hsr_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local i8* @hsr_get_next_node(%struct.hsr_priv*, i8*, i8*) #2

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i8*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #2

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #2

declare dso_local i32 @netlink_ack(%struct.sk_buff*, i32, i32, i32*) #2

declare dso_local i32 @nlmsg_hdr(%struct.sk_buff*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

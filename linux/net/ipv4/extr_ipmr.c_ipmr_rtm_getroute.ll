; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rtm_getroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rtm_getroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.mfc_cache = type { i32 }
%struct.mr_table = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i64 0, align 8
@RTA_DST = common dso_local global i64 0, align 8
@RTA_TABLE = common dso_local global i64 0, align 8
@RT_TABLE_DEFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @ipmr_rtm_getroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_rtm_getroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.mfc_cache*, align 8
  %12 = alloca %struct.mr_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %7, align 8
  %23 = load i32, i32* @RTA_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %31 = call i32 @ipmr_rtm_valid_getroute_req(%struct.sk_buff* %28, %struct.nlmsghdr* %29, %struct.nlattr** %27, %struct.netlink_ext_ack* %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %137

35:                                               ; preds = %3
  %36 = load i64, i64* @RTA_SRC, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i64, i64* @RTA_SRC, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i32 @nla_get_in_addr(%struct.nlattr* %43)
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i32 [ %44, %40 ], [ 0, %45 ]
  store i32 %47, i32* %13, align 4
  %48 = load i64, i64* @RTA_DST, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i64, i64* @RTA_DST, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_get_in_addr(%struct.nlattr* %55)
  br label %58

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %52
  %59 = phi i32 [ %56, %52 ], [ 0, %57 ]
  store i32 %59, i32* %14, align 4
  %60 = load i64, i64* @RTA_TABLE, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i64, i64* @RTA_TABLE, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i32 @nla_get_u32(%struct.nlattr* %67)
  br label %70

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32 [ %68, %64 ], [ 0, %69 ]
  store i32 %71, i32* %15, align 4
  %72 = load %struct.net*, %struct.net** %7, align 8
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %15, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @RT_TABLE_DEFAULT, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = call %struct.mr_table* @ipmr_get_table(%struct.net* %72, i32 %80)
  store %struct.mr_table* %81, %struct.mr_table** %12, align 8
  %82 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %83 = icmp ne %struct.mr_table* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %16, align 4
  br label %140

87:                                               ; preds = %79
  %88 = call i32 (...) @rcu_read_lock()
  %89 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call %struct.mfc_cache* @ipmr_cache_find(%struct.mr_table* %89, i32 %90, i32 %91)
  store %struct.mfc_cache* %92, %struct.mfc_cache** %11, align 8
  %93 = call i32 (...) @rcu_read_unlock()
  %94 = load %struct.mfc_cache*, %struct.mfc_cache** %11, align 8
  %95 = icmp ne %struct.mfc_cache* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* @ENOENT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %16, align 4
  br label %140

99:                                               ; preds = %87
  %100 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %101 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mroute_msgsize(i32 0, i32 %102)
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.sk_buff* @nlmsg_new(i32 %103, i32 %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %10, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = icmp ne %struct.sk_buff* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* @ENOBUFS, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %16, align 4
  br label %140

111:                                              ; preds = %99
  %112 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @NETLINK_CB(%struct.sk_buff* %114)
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %120 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mfc_cache*, %struct.mfc_cache** %11, align 8
  %123 = load i32, i32* @RTM_NEWROUTE, align 4
  %124 = call i32 @ipmr_fill_mroute(%struct.mr_table* %112, %struct.sk_buff* %113, i32 %118, i32 %121, %struct.mfc_cache* %122, i32 %123, i32 0)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  br label %140

128:                                              ; preds = %111
  %129 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %130 = load %struct.net*, %struct.net** %7, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = call i32 @NETLINK_CB(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @rtnl_unicast(%struct.sk_buff* %129, %struct.net* %130, i32 %135)
  store i32 %136, i32* %16, align 4
  br label %137

137:                                              ; preds = %140, %128, %34
  %138 = load i32, i32* %16, align 4
  %139 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %139)
  ret i32 %138

140:                                              ; preds = %127, %108, %96, %84
  %141 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %142 = call i32 @kfree_skb(%struct.sk_buff* %141)
  br label %137
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ipmr_rtm_valid_getroute_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.mr_table* @ipmr_get_table(%struct.net*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mfc_cache* @ipmr_cache_find(%struct.mr_table*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @mroute_msgsize(i32, i32) #1

declare dso_local i32 @ipmr_fill_mroute(%struct.mr_table*, %struct.sk_buff*, i32, i32, %struct.mfc_cache*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

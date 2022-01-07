; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_orig_dump_subentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_orig_dump_subentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32, i64 }
%struct.batadv_neigh_node = type { %struct.batadv_hard_iface*, i32 }

@jiffies = common dso_local global i64 0, align 8
@BATADV_IF_DEFAULT = common dso_local global %struct.batadv_hard_iface* null, align 8
@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_ORIGINATORS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BATADV_ATTR_ORIG_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_ATTR_NEIGH_ADDRESS = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_IFINDEX = common dso_local global i32 0, align 4
@BATADV_ATTR_TQ = common dso_local global i32 0, align 4
@BATADV_ATTR_LAST_SEEN_MSECS = common dso_local global i32 0, align 4
@BATADV_ATTR_FLAG_BEST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.batadv_priv*, %struct.batadv_hard_iface*, %struct.batadv_orig_node*, %struct.batadv_neigh_node*, i32)* @batadv_iv_ogm_orig_dump_subentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_ogm_orig_dump_subentry(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.batadv_priv* %3, %struct.batadv_hard_iface* %4, %struct.batadv_orig_node* %5, %struct.batadv_neigh_node* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.batadv_priv*, align 8
  %14 = alloca %struct.batadv_hard_iface*, align 8
  %15 = alloca %struct.batadv_orig_node*, align 8
  %16 = alloca %struct.batadv_neigh_node*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.batadv_priv* %3, %struct.batadv_priv** %13, align 8
  store %struct.batadv_hard_iface* %4, %struct.batadv_hard_iface** %14, align 8
  store %struct.batadv_orig_node* %5, %struct.batadv_orig_node** %15, align 8
  store %struct.batadv_neigh_node* %6, %struct.batadv_neigh_node** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %23 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = call i32 @jiffies_to_msecs(i64 %25)
  store i32 %26, i32* %20, align 4
  %27 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %16, align 8
  %28 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %29 = call i32 @batadv_iv_ogm_neigh_get_tq_avg(%struct.batadv_neigh_node* %27, %struct.batadv_hard_iface* %28, i32* %19)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %117

32:                                               ; preds = %8
  %33 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %34 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** @BATADV_IF_DEFAULT, align 8
  %35 = icmp ne %struct.batadv_hard_iface* %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %38 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %16, align 8
  %39 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %38, i32 0, i32 0
  %40 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %39, align 8
  %41 = icmp ne %struct.batadv_hard_iface* %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %117

43:                                               ; preds = %36, %32
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @NLM_F_MULTI, align 4
  %48 = load i32, i32* @BATADV_CMD_GET_ORIGINATORS, align 4
  %49 = call i8* @genlmsg_put(%struct.sk_buff* %44, i32 %45, i32 %46, i32* @batadv_netlink_family, i32 %47, i32 %48)
  store i8* %49, i8** %18, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOBUFS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %117

55:                                               ; preds = %43
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = load i32, i32* @BATADV_ATTR_ORIG_ADDRESS, align 4
  %58 = load i32, i32* @ETH_ALEN, align 4
  %59 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %60 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @nla_put(%struct.sk_buff* %56, i32 %57, i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %97, label %64

64:                                               ; preds = %55
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = load i32, i32* @BATADV_ATTR_NEIGH_ADDRESS, align 4
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %16, align 8
  %69 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @nla_put(%struct.sk_buff* %65, i32 %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i32, i32* @BATADV_ATTR_HARD_IFINDEX, align 4
  %76 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %16, align 8
  %77 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %76, i32 0, i32 0
  %78 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %77, align 8
  %79 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @nla_put_u32(%struct.sk_buff* %74, i32 %75, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %73
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %87 = load i32, i32* @BATADV_ATTR_TQ, align 4
  %88 = load i32, i32* %19, align 4
  %89 = call i64 @nla_put_u8(%struct.sk_buff* %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = load i32, i32* @BATADV_ATTR_LAST_SEEN_MSECS, align 4
  %94 = load i32, i32* %20, align 4
  %95 = call i64 @nla_put_u32(%struct.sk_buff* %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %85, %73, %64, %55
  br label %111

98:                                               ; preds = %91
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = load i32, i32* @BATADV_ATTR_FLAG_BEST, align 4
  %104 = call i64 @nla_put_flag(%struct.sk_buff* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %111

107:                                              ; preds = %101, %98
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = call i32 @genlmsg_end(%struct.sk_buff* %108, i8* %109)
  store i32 0, i32* %9, align 4
  br label %117

111:                                              ; preds = %106, %97
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = call i32 @genlmsg_cancel(%struct.sk_buff* %112, i8* %113)
  %115 = load i32, i32* @EMSGSIZE, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %111, %107, %52, %42, %31
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @batadv_iv_ogm_neigh_get_tq_avg(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*, i32*) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

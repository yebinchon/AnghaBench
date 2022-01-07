; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_orig_dump_subentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_orig_dump_subentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32, i64 }
%struct.batadv_neigh_node = type { %struct.batadv_hard_iface*, i32 }
%struct.batadv_neigh_ifinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

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
@BATADV_ATTR_THROUGHPUT = common dso_local global i32 0, align 4
@BATADV_ATTR_LAST_SEEN_MSECS = common dso_local global i32 0, align 4
@BATADV_ATTR_FLAG_BEST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.batadv_priv*, %struct.batadv_hard_iface*, %struct.batadv_orig_node*, %struct.batadv_neigh_node*, i32)* @batadv_v_orig_dump_subentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_orig_dump_subentry(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.batadv_priv* %3, %struct.batadv_hard_iface* %4, %struct.batadv_orig_node* %5, %struct.batadv_neigh_node* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.batadv_priv*, align 8
  %14 = alloca %struct.batadv_hard_iface*, align 8
  %15 = alloca %struct.batadv_orig_node*, align 8
  %16 = alloca %struct.batadv_neigh_node*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.batadv_priv* %3, %struct.batadv_priv** %13, align 8
  store %struct.batadv_hard_iface* %4, %struct.batadv_hard_iface** %14, align 8
  store %struct.batadv_orig_node* %5, %struct.batadv_orig_node** %15, align 8
  store %struct.batadv_neigh_node* %6, %struct.batadv_neigh_node** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %16, align 8
  %23 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %24 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %22, %struct.batadv_hard_iface* %23)
  store %struct.batadv_neigh_ifinfo* %24, %struct.batadv_neigh_ifinfo** %18, align 8
  %25 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %26 = icmp ne %struct.batadv_neigh_ifinfo* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %126

28:                                               ; preds = %8
  %29 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %30 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 100
  store i32 %33, i32* %20, align 4
  %34 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %35 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %34)
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %38 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = call i32 @jiffies_to_msecs(i64 %40)
  store i32 %41, i32* %19, align 4
  %42 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %43 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** @BATADV_IF_DEFAULT, align 8
  %44 = icmp ne %struct.batadv_hard_iface* %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %28
  %46 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %47 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %16, align 8
  %48 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %47, i32 0, i32 0
  %49 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %48, align 8
  %50 = icmp ne %struct.batadv_hard_iface* %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %126

52:                                               ; preds = %45, %28
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @NLM_F_MULTI, align 4
  %57 = load i32, i32* @BATADV_CMD_GET_ORIGINATORS, align 4
  %58 = call i8* @genlmsg_put(%struct.sk_buff* %53, i32 %54, i32 %55, i32* @batadv_netlink_family, i32 %56, i32 %57)
  store i8* %58, i8** %21, align 8
  %59 = load i8*, i8** %21, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* @ENOBUFS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %126

64:                                               ; preds = %52
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = load i32, i32* @BATADV_ATTR_ORIG_ADDRESS, align 4
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %69 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @nla_put(%struct.sk_buff* %65, i32 %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %106, label %73

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i32, i32* @BATADV_ATTR_NEIGH_ADDRESS, align 4
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %16, align 8
  %78 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @nla_put(%struct.sk_buff* %74, i32 %75, i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %73
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = load i32, i32* @BATADV_ATTR_HARD_IFINDEX, align 4
  %85 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %16, align 8
  %86 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %85, i32 0, i32 0
  %87 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %86, align 8
  %88 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @nla_put_u32(%struct.sk_buff* %83, i32 %84, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %82
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = load i32, i32* @BATADV_ATTR_THROUGHPUT, align 4
  %97 = load i32, i32* %20, align 4
  %98 = call i64 @nla_put_u32(%struct.sk_buff* %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = load i32, i32* @BATADV_ATTR_LAST_SEEN_MSECS, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i64 @nla_put_u32(%struct.sk_buff* %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %94, %82, %73, %64
  br label %120

107:                                              ; preds = %100
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = load i32, i32* @BATADV_ATTR_FLAG_BEST, align 4
  %113 = call i64 @nla_put_flag(%struct.sk_buff* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %120

116:                                              ; preds = %110, %107
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = load i8*, i8** %21, align 8
  %119 = call i32 @genlmsg_end(%struct.sk_buff* %117, i8* %118)
  store i32 0, i32* %9, align 4
  br label %126

120:                                              ; preds = %115, %106
  %121 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %122 = load i8*, i8** %21, align 8
  %123 = call i32 @genlmsg_cancel(%struct.sk_buff* %121, i8* %122)
  %124 = load i32, i32* @EMSGSIZE, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %120, %116, %61, %51, %27
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

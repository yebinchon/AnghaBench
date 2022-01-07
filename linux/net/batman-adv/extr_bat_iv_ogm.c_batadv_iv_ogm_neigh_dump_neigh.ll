; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_neigh_dump_neigh.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_neigh_dump_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_hardif_neigh_node = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_NEIGHBORS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BATADV_ATTR_NEIGH_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_IFINDEX = common dso_local global i32 0, align 4
@BATADV_ATTR_LAST_SEEN_MSECS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.batadv_hardif_neigh_node*)* @batadv_iv_ogm_neigh_dump_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_ogm_neigh_dump_neigh(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.batadv_hardif_neigh_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.batadv_hardif_neigh_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.batadv_hardif_neigh_node* %3, %struct.batadv_hardif_neigh_node** %9, align 8
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %9, align 8
  %14 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = call i32 @jiffies_to_msecs(i64 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @NLM_F_MULTI, align 4
  %22 = load i32, i32* @BATADV_CMD_GET_NEIGHBORS, align 4
  %23 = call i8* @genlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32* @batadv_netlink_family, i32 %21, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOBUFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %67

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* @BATADV_ATTR_NEIGH_ADDRESS, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %9, align 8
  %34 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @nla_put(%struct.sk_buff* %30, i32 %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %29
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load i32, i32* @BATADV_ATTR_HARD_IFINDEX, align 4
  %41 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %9, align 8
  %42 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_u32(%struct.sk_buff* %39, i32 %40, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load i32, i32* @BATADV_ATTR_LAST_SEEN_MSECS, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %38, %29
  br label %61

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @genlmsg_end(%struct.sk_buff* %58, i8* %59)
  store i32 0, i32* %5, align 4
  br label %67

61:                                               ; preds = %56
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @genlmsg_cancel(%struct.sk_buff* %62, i8* %63)
  %65 = load i32, i32* @EMSGSIZE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %57, %26
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

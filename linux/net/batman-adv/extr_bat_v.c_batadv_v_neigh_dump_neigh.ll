; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_neigh_dump_neigh.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_neigh_dump_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_hardif_neigh_node = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_NEIGHBORS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BATADV_ATTR_NEIGH_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_IFINDEX = common dso_local global i32 0, align 4
@BATADV_ATTR_LAST_SEEN_MSECS = common dso_local global i32 0, align 4
@BATADV_ATTR_THROUGHPUT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.batadv_hardif_neigh_node*)* @batadv_v_neigh_dump_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_neigh_dump_neigh(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.batadv_hardif_neigh_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.batadv_hardif_neigh_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.batadv_hardif_neigh_node* %3, %struct.batadv_hardif_neigh_node** %9, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %9, align 8
  %15 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = call i32 @jiffies_to_msecs(i64 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %9, align 8
  %20 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @ewma_throughput_read(i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = mul nsw i32 %23, 100
  store i32 %24, i32* %12, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NLM_F_MULTI, align 4
  %29 = load i32, i32* @BATADV_CMD_GET_NEIGHBORS, align 4
  %30 = call i8* @genlmsg_put(%struct.sk_buff* %25, i32 %26, i32 %27, i32* @batadv_netlink_family, i32 %28, i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @ENOBUFS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %80

36:                                               ; preds = %4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i32, i32* @BATADV_ATTR_NEIGH_ADDRESS, align 4
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %9, align 8
  %41 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @nla_put(%struct.sk_buff* %37, i32 %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load i32, i32* @BATADV_ATTR_HARD_IFINDEX, align 4
  %48 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %9, align 8
  %49 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nla_put_u32(%struct.sk_buff* %46, i32 %47, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %45
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @BATADV_ATTR_LAST_SEEN_MSECS, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @nla_put_u32(%struct.sk_buff* %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* @BATADV_ATTR_THROUGHPUT, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @nla_put_u32(%struct.sk_buff* %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %57, %45, %36
  br label %74

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @genlmsg_end(%struct.sk_buff* %71, i8* %72)
  store i32 0, i32* %5, align 4
  br label %80

74:                                               ; preds = %69
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @genlmsg_cancel(%struct.sk_buff* %75, i8* %76)
  %78 = load i32, i32* @EMSGSIZE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %70, %33
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @ewma_throughput_read(i32*) #1

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

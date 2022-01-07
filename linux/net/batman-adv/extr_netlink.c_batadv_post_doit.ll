; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_post_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_post_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_ops = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.batadv_softif_vlan** }
%struct.batadv_softif_vlan = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32 }

@BATADV_FLAG_NEED_HARDIF = common dso_local global i32 0, align 4
@BATADV_FLAG_NEED_VLAN = common dso_local global i32 0, align 4
@BATADV_FLAG_NEED_MESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genl_ops*, %struct.sk_buff*, %struct.genl_info*)* @batadv_post_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_post_doit(%struct.genl_ops* %0, %struct.sk_buff* %1, %struct.genl_info* %2) #0 {
  %4 = alloca %struct.genl_ops*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca %struct.batadv_softif_vlan*, align 8
  %9 = alloca %struct.batadv_priv*, align 8
  store %struct.genl_ops* %0, %struct.genl_ops** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.genl_info* %2, %struct.genl_info** %6, align 8
  %10 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %11 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BATADV_FLAG_NEED_HARDIF, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 0
  %19 = load %struct.batadv_softif_vlan**, %struct.batadv_softif_vlan*** %18, align 8
  %20 = getelementptr inbounds %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %19, i64 1
  %21 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %20, align 8
  %22 = icmp ne %struct.batadv_softif_vlan* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load %struct.batadv_softif_vlan**, %struct.batadv_softif_vlan*** %25, align 8
  %27 = getelementptr inbounds %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %26, i64 1
  %28 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %27, align 8
  %29 = bitcast %struct.batadv_softif_vlan* %28 to %struct.batadv_hard_iface*
  store %struct.batadv_hard_iface* %29, %struct.batadv_hard_iface** %7, align 8
  %30 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %31 = bitcast %struct.batadv_hard_iface* %30 to %struct.batadv_softif_vlan*
  %32 = call i32 @batadv_hardif_put(%struct.batadv_softif_vlan* %31)
  br label %33

33:                                               ; preds = %23, %16, %3
  %34 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %35 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BATADV_FLAG_NEED_VLAN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 0
  %43 = load %struct.batadv_softif_vlan**, %struct.batadv_softif_vlan*** %42, align 8
  %44 = getelementptr inbounds %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %43, i64 1
  %45 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %44, align 8
  %46 = icmp ne %struct.batadv_softif_vlan* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load %struct.batadv_softif_vlan**, %struct.batadv_softif_vlan*** %49, align 8
  %51 = getelementptr inbounds %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %50, i64 1
  %52 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %51, align 8
  store %struct.batadv_softif_vlan* %52, %struct.batadv_softif_vlan** %8, align 8
  %53 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %8, align 8
  %54 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %53)
  br label %55

55:                                               ; preds = %47, %40, %33
  %56 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %57 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BATADV_FLAG_NEED_MESH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %55
  %63 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load %struct.batadv_softif_vlan**, %struct.batadv_softif_vlan*** %64, align 8
  %66 = getelementptr inbounds %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %65, i64 0
  %67 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %66, align 8
  %68 = icmp ne %struct.batadv_softif_vlan* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load %struct.batadv_softif_vlan**, %struct.batadv_softif_vlan*** %71, align 8
  %73 = getelementptr inbounds %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %72, i64 0
  %74 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %73, align 8
  %75 = bitcast %struct.batadv_softif_vlan* %74 to %struct.batadv_priv*
  store %struct.batadv_priv* %75, %struct.batadv_priv** %9, align 8
  %76 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %77 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_put(i32 %78)
  br label %80

80:                                               ; preds = %69, %62, %55
  ret void
}

declare dso_local i32 @batadv_hardif_put(%struct.batadv_softif_vlan*) #1

declare dso_local i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan*) #1

declare dso_local i32 @dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

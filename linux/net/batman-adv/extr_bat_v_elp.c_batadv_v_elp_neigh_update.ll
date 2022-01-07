; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_neigh_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_neigh_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_elp_packet = type { i32, i32, i32 }
%struct.batadv_neigh_node = type { i8* }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_hardif_neigh_node = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@BATADV_ELP_MAX_AGE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, i32*, %struct.batadv_hard_iface*, %struct.batadv_elp_packet*)* @batadv_v_elp_neigh_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_v_elp_neigh_update(%struct.batadv_priv* %0, i32* %1, %struct.batadv_hard_iface* %2, %struct.batadv_elp_packet* %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca %struct.batadv_elp_packet*, align 8
  %9 = alloca %struct.batadv_neigh_node*, align 8
  %10 = alloca %struct.batadv_orig_node*, align 8
  %11 = alloca %struct.batadv_hardif_neigh_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.batadv_hard_iface* %2, %struct.batadv_hard_iface** %7, align 8
  store %struct.batadv_elp_packet* %3, %struct.batadv_elp_packet** %8, align 8
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %15 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %8, align 8
  %16 = getelementptr inbounds %struct.batadv_elp_packet, %struct.batadv_elp_packet* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.batadv_orig_node* @batadv_v_ogm_orig_get(%struct.batadv_priv* %14, i32 %17)
  store %struct.batadv_orig_node* %18, %struct.batadv_orig_node** %10, align 8
  %19 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %20 = icmp ne %struct.batadv_orig_node* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %97

22:                                               ; preds = %4
  %23 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %24 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.batadv_neigh_node* @batadv_neigh_node_get_or_create(%struct.batadv_orig_node* %23, %struct.batadv_hard_iface* %24, i32* %25)
  store %struct.batadv_neigh_node* %26, %struct.batadv_neigh_node** %9, align 8
  %27 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %28 = icmp ne %struct.batadv_neigh_node* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %91

30:                                               ; preds = %22
  %31 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get(%struct.batadv_hard_iface* %31, i32* %32)
  store %struct.batadv_hardif_neigh_node* %33, %struct.batadv_hardif_neigh_node** %11, align 8
  %34 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %11, align 8
  %35 = icmp ne %struct.batadv_hardif_neigh_node* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %84

37:                                               ; preds = %30
  %38 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %11, align 8
  %39 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %8, align 8
  %43 = getelementptr inbounds %struct.batadv_elp_packet, %struct.batadv_elp_packet* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohl(i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @BATADV_ELP_MAX_AGE, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %77

56:                                               ; preds = %50, %37
  %57 = load i8*, i8** @jiffies, align 8
  %58 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %59 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @jiffies, align 8
  %61 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %11, align 8
  %62 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %8, align 8
  %64 = getelementptr inbounds %struct.batadv_elp_packet, %struct.batadv_elp_packet* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ntohl(i32 %65)
  %67 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %11, align 8
  %68 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %8, align 8
  %71 = getelementptr inbounds %struct.batadv_elp_packet, %struct.batadv_elp_packet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohl(i32 %72)
  %74 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %11, align 8
  %75 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %56, %55
  %78 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %11, align 8
  %79 = icmp ne %struct.batadv_hardif_neigh_node* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %11, align 8
  %82 = call i32 @batadv_hardif_neigh_put(%struct.batadv_hardif_neigh_node* %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %36
  %85 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %86 = icmp ne %struct.batadv_neigh_node* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %9, align 8
  %89 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %29
  %92 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %93 = icmp ne %struct.batadv_orig_node* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %96 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %95)
  br label %97

97:                                               ; preds = %21, %94, %91
  ret void
}

declare dso_local %struct.batadv_orig_node* @batadv_v_ogm_orig_get(%struct.batadv_priv*, i32) #1

declare dso_local %struct.batadv_neigh_node* @batadv_neigh_node_get_or_create(%struct.batadv_orig_node*, %struct.batadv_hard_iface*, i32*) #1

declare dso_local %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get(%struct.batadv_hard_iface*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @batadv_hardif_neigh_put(%struct.batadv_hardif_neigh_node*) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

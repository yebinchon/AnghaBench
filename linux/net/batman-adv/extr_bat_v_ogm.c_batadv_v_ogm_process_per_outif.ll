; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_process_per_outif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_process_per_outif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.ethhdr = type { i32 }
%struct.batadv_ogm2_packet = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_neigh_node = type { i32 }

@BATADV_IF_DEFAULT = common dso_local global %struct.batadv_hard_iface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.ethhdr*, %struct.batadv_ogm2_packet*, %struct.batadv_orig_node*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*)* @batadv_v_ogm_process_per_outif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_v_ogm_process_per_outif(%struct.batadv_priv* %0, %struct.ethhdr* %1, %struct.batadv_ogm2_packet* %2, %struct.batadv_orig_node* %3, %struct.batadv_neigh_node* %4, %struct.batadv_hard_iface* %5, %struct.batadv_hard_iface* %6) #0 {
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca %struct.batadv_ogm2_packet*, align 8
  %11 = alloca %struct.batadv_orig_node*, align 8
  %12 = alloca %struct.batadv_neigh_node*, align 8
  %13 = alloca %struct.batadv_hard_iface*, align 8
  %14 = alloca %struct.batadv_hard_iface*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %8, align 8
  store %struct.ethhdr* %1, %struct.ethhdr** %9, align 8
  store %struct.batadv_ogm2_packet* %2, %struct.batadv_ogm2_packet** %10, align 8
  store %struct.batadv_orig_node* %3, %struct.batadv_orig_node** %11, align 8
  store %struct.batadv_neigh_node* %4, %struct.batadv_neigh_node** %12, align 8
  store %struct.batadv_hard_iface* %5, %struct.batadv_hard_iface** %13, align 8
  store %struct.batadv_hard_iface* %6, %struct.batadv_hard_iface** %14, align 8
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %18 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %10, align 8
  %19 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %20 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %13, align 8
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %23 = call i32 @batadv_v_ogm_metric_update(%struct.batadv_priv* %17, %struct.batadv_ogm2_packet* %18, %struct.batadv_orig_node* %19, %struct.batadv_neigh_node* %20, %struct.batadv_hard_iface* %21, %struct.batadv_hard_iface* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  br label %64

27:                                               ; preds = %7
  %28 = load i32, i32* %15, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %32 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** @BATADV_IF_DEFAULT, align 8
  %33 = icmp eq %struct.batadv_hard_iface* %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %36 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %37 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %10, align 8
  %38 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %37, i64 1
  %39 = bitcast %struct.batadv_ogm2_packet* %38 to i8*
  %40 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %10, align 8
  %41 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohs(i32 %42)
  %44 = call i32 @batadv_tvlv_containers_process(%struct.batadv_priv* %35, i32 1, %struct.batadv_orig_node* %36, i32* null, i32* null, i8* %39, i32 %43)
  br label %45

45:                                               ; preds = %34, %30, %27
  %46 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %47 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %48 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %10, align 8
  %49 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %50 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %51 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %13, align 8
  %52 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %53 = call i32 @batadv_v_ogm_route_update(%struct.batadv_priv* %46, %struct.ethhdr* %47, %struct.batadv_ogm2_packet* %48, %struct.batadv_orig_node* %49, %struct.batadv_neigh_node* %50, %struct.batadv_hard_iface* %51, %struct.batadv_hard_iface* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %58 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %10, align 8
  %59 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %60 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %61 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %13, align 8
  %62 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %63 = call i32 @batadv_v_ogm_forward(%struct.batadv_priv* %57, %struct.batadv_ogm2_packet* %58, %struct.batadv_orig_node* %59, %struct.batadv_neigh_node* %60, %struct.batadv_hard_iface* %61, %struct.batadv_hard_iface* %62)
  br label %64

64:                                               ; preds = %26, %56, %45
  ret void
}

declare dso_local i32 @batadv_v_ogm_metric_update(%struct.batadv_priv*, %struct.batadv_ogm2_packet*, %struct.batadv_orig_node*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_tvlv_containers_process(%struct.batadv_priv*, i32, %struct.batadv_orig_node*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @batadv_v_ogm_route_update(%struct.batadv_priv*, %struct.ethhdr*, %struct.batadv_ogm2_packet*, %struct.batadv_orig_node*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_v_ogm_forward(%struct.batadv_priv*, %struct.batadv_ogm2_packet*, %struct.batadv_orig_node*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

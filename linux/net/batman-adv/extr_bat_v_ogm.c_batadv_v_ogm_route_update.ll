; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_route_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_route_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.ethhdr = type { i32 }
%struct.batadv_ogm2_packet = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_neigh_node = type { %struct.batadv_orig_node* }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_neigh_ifinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Drop packet: OGM via unknown neighbor!\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Searching and updating originator entry of received packet\0A\00", align 1
@BATADV_OGM_MAX_ORIGDIFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.ethhdr*, %struct.batadv_ogm2_packet*, %struct.batadv_orig_node*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*)* @batadv_v_ogm_route_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_ogm_route_update(%struct.batadv_priv* %0, %struct.ethhdr* %1, %struct.batadv_ogm2_packet* %2, %struct.batadv_orig_node* %3, %struct.batadv_neigh_node* %4, %struct.batadv_hard_iface* %5, %struct.batadv_hard_iface* %6) #0 {
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca %struct.batadv_ogm2_packet*, align 8
  %11 = alloca %struct.batadv_orig_node*, align 8
  %12 = alloca %struct.batadv_neigh_node*, align 8
  %13 = alloca %struct.batadv_hard_iface*, align 8
  %14 = alloca %struct.batadv_hard_iface*, align 8
  %15 = alloca %struct.batadv_neigh_node*, align 8
  %16 = alloca %struct.batadv_orig_node*, align 8
  %17 = alloca %struct.batadv_neigh_node*, align 8
  %18 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %19 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %8, align 8
  store %struct.ethhdr* %1, %struct.ethhdr** %9, align 8
  store %struct.batadv_ogm2_packet* %2, %struct.batadv_ogm2_packet** %10, align 8
  store %struct.batadv_orig_node* %3, %struct.batadv_orig_node** %11, align 8
  store %struct.batadv_neigh_node* %4, %struct.batadv_neigh_node** %12, align 8
  store %struct.batadv_hard_iface* %5, %struct.batadv_hard_iface** %13, align 8
  store %struct.batadv_hard_iface* %6, %struct.batadv_hard_iface** %14, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %15, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %17, align 8
  store %struct.batadv_neigh_ifinfo* null, %struct.batadv_neigh_ifinfo** %18, align 8
  store %struct.batadv_neigh_ifinfo* null, %struct.batadv_neigh_ifinfo** %19, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %27 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %28 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.batadv_orig_node* @batadv_v_ogm_orig_get(%struct.batadv_priv* %26, i32 %29)
  store %struct.batadv_orig_node* %30, %struct.batadv_orig_node** %16, align 8
  %31 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %16, align 8
  %32 = icmp ne %struct.batadv_orig_node* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %7
  br label %115

34:                                               ; preds = %7
  %35 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %16, align 8
  %36 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %37 = call %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node* %35, %struct.batadv_hard_iface* %36)
  store %struct.batadv_neigh_node* %37, %struct.batadv_neigh_node** %17, align 8
  %38 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %39 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %40 = call %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node* %38, %struct.batadv_hard_iface* %39)
  store %struct.batadv_neigh_node* %40, %struct.batadv_neigh_node** %15, align 8
  %41 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %15, align 8
  %42 = icmp ne %struct.batadv_neigh_node* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %15, align 8
  %45 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %44, i32 0, i32 0
  %46 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %45, align 8
  %47 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %48 = icmp ne %struct.batadv_orig_node* %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %17, align 8
  %51 = icmp ne %struct.batadv_neigh_node* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %54 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %55 = call i32 @batadv_dbg(i32 %53, %struct.batadv_priv* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %115

56:                                               ; preds = %49, %43, %34
  store i32 1, i32* %25, align 4
  %57 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %58 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %59 = call i32 @batadv_dbg(i32 %57, %struct.batadv_priv* %58, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %15, align 8
  %61 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %62 = icmp eq %struct.batadv_neigh_node* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %115

64:                                               ; preds = %56
  %65 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %15, align 8
  %66 = icmp ne %struct.batadv_neigh_node* %65, null
  br i1 %66, label %67, label %109

67:                                               ; preds = %64
  %68 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %15, align 8
  %69 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %70 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %68, %struct.batadv_hard_iface* %69)
  store %struct.batadv_neigh_ifinfo* %70, %struct.batadv_neigh_ifinfo** %18, align 8
  %71 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %72 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %73 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %71, %struct.batadv_hard_iface* %72)
  store %struct.batadv_neigh_ifinfo* %73, %struct.batadv_neigh_ifinfo** %19, align 8
  %74 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %75 = icmp ne %struct.batadv_neigh_ifinfo* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %19, align 8
  %78 = icmp ne %struct.batadv_neigh_ifinfo* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %76, %67
  br label %115

80:                                               ; preds = %76
  %81 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %19, align 8
  %82 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %23, align 8
  %85 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %86 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %22, align 8
  %89 = load i64, i64* %23, align 8
  %90 = load i64, i64* %22, align 8
  %91 = sub nsw i64 %89, %90
  store i64 %91, i64* %24, align 8
  %92 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %93 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %20, align 8
  %96 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %19, align 8
  %97 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %21, align 8
  %100 = load i64, i64* %24, align 8
  %101 = load i64, i64* @BATADV_OGM_MAX_ORIGDIFF, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %80
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %21, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %115

108:                                              ; preds = %103, %80
  br label %109

109:                                              ; preds = %108, %64
  %110 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %111 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %11, align 8
  %112 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %14, align 8
  %113 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %12, align 8
  %114 = call i32 @batadv_update_route(%struct.batadv_priv* %110, %struct.batadv_orig_node* %111, %struct.batadv_hard_iface* %112, %struct.batadv_neigh_node* %113)
  br label %115

115:                                              ; preds = %109, %107, %79, %63, %52, %33
  %116 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %15, align 8
  %117 = icmp ne %struct.batadv_neigh_node* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %15, align 8
  %120 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %17, align 8
  %123 = icmp ne %struct.batadv_neigh_node* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %17, align 8
  %126 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %16, align 8
  %129 = icmp ne %struct.batadv_orig_node* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %16, align 8
  %132 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %135 = icmp ne %struct.batadv_neigh_ifinfo* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %138 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %19, align 8
  %141 = icmp ne %struct.batadv_neigh_ifinfo* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %19, align 8
  %144 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %25, align 4
  ret i32 %146
}

declare dso_local %struct.batadv_orig_node* @batadv_v_ogm_orig_get(%struct.batadv_priv*, i32) #1

declare dso_local %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*) #1

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_update_route(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_hard_iface*, %struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_metric_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_ogm_metric_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_ogm2_packet = type { i32, i32, i32, i32 }
%struct.batadv_orig_node = type { i8*, i32 }
%struct.batadv_neigh_node = type { i8* }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_orig_ifinfo = type { i64, i32, i32 }
%struct.batadv_neigh_ifinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BATADV_OGM_MAX_AGE = common dso_local global i32 0, align 4
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Drop packet: packet within window protection time from %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Last reset: %ld, %ld\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_ogm2_packet*, %struct.batadv_orig_node*, %struct.batadv_neigh_node*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*)* @batadv_v_ogm_metric_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_ogm_metric_update(%struct.batadv_priv* %0, %struct.batadv_ogm2_packet* %1, %struct.batadv_orig_node* %2, %struct.batadv_neigh_node* %3, %struct.batadv_hard_iface* %4, %struct.batadv_hard_iface* %5) #0 {
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.batadv_ogm2_packet*, align 8
  %9 = alloca %struct.batadv_orig_node*, align 8
  %10 = alloca %struct.batadv_neigh_node*, align 8
  %11 = alloca %struct.batadv_hard_iface*, align 8
  %12 = alloca %struct.batadv_hard_iface*, align 8
  %13 = alloca %struct.batadv_orig_ifinfo*, align 8
  %14 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store %struct.batadv_ogm2_packet* %1, %struct.batadv_ogm2_packet** %8, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %9, align 8
  store %struct.batadv_neigh_node* %3, %struct.batadv_neigh_node** %10, align 8
  store %struct.batadv_hard_iface* %4, %struct.batadv_hard_iface** %11, align 8
  store %struct.batadv_hard_iface* %5, %struct.batadv_hard_iface** %12, align 8
  store %struct.batadv_neigh_ifinfo* null, %struct.batadv_neigh_ifinfo** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %16, align 4
  %21 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %23 = call %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_new(%struct.batadv_orig_node* %21, %struct.batadv_hard_iface* %22)
  store %struct.batadv_orig_ifinfo* %23, %struct.batadv_orig_ifinfo** %13, align 8
  %24 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %13, align 8
  %25 = icmp ne %struct.batadv_orig_ifinfo* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  br label %126

27:                                               ; preds = %6
  %28 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %8, align 8
  %29 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohl(i32 %30)
  %32 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %13, align 8
  %33 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %18, align 8
  %36 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %37 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %36, i32 0, i32 1
  %38 = call i32 @hlist_empty(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %27
  %41 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %42 = load i64, i64* %18, align 8
  %43 = load i32, i32* @BATADV_OGM_MAX_AGE, align 4
  %44 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %13, align 8
  %45 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %44, i32 0, i32 2
  %46 = call i64 @batadv_window_protected(%struct.batadv_priv* %41, i64 %42, i32 %43, i32* %45, i32* %15)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %50 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %51 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %8, align 8
  %52 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, %struct.batadv_priv*, i8*, i32, ...) @batadv_dbg(i32 %49, %struct.batadv_priv* %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %57 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %13, align 8
  %58 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** @jiffies, align 8
  %61 = call i32 (i32, %struct.batadv_priv*, i8*, i32, ...) @batadv_dbg(i32 %55, %struct.batadv_priv* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %60)
  br label %126

62:                                               ; preds = %40, %27
  %63 = load i64, i64* %18, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %126

69:                                               ; preds = %65, %62
  %70 = load i8*, i8** @jiffies, align 8
  %71 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %10, align 8
  %72 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @jiffies, align 8
  %74 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %75 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %8, align 8
  %77 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ntohl(i32 %78)
  %80 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %13, align 8
  %81 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %8, align 8
  %83 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %13, align 8
  %86 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %10, align 8
  %88 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %89 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_new(%struct.batadv_neigh_node* %87, %struct.batadv_hard_iface* %88)
  store %struct.batadv_neigh_ifinfo* %89, %struct.batadv_neigh_ifinfo** %14, align 8
  %90 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %14, align 8
  %91 = icmp ne %struct.batadv_neigh_ifinfo* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %69
  br label %126

93:                                               ; preds = %69
  %94 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %95 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %11, align 8
  %96 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %97 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %8, align 8
  %98 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @ntohl(i32 %99)
  %101 = call i32 @batadv_v_forward_penalty(%struct.batadv_priv* %94, %struct.batadv_hard_iface* %95, %struct.batadv_hard_iface* %96, i64 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %14, align 8
  %104 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %8, align 8
  %107 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @ntohl(i32 %108)
  %110 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %14, align 8
  %111 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load %struct.batadv_ogm2_packet*, %struct.batadv_ogm2_packet** %8, align 8
  %114 = getelementptr inbounds %struct.batadv_ogm2_packet, %struct.batadv_ogm2_packet* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %14, align 8
  %117 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i64, i64* %18, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %93
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %93
  store i32 1, i32* %16, align 4
  br label %125

124:                                              ; preds = %120
  store i32 0, i32* %16, align 4
  br label %125

125:                                              ; preds = %124, %123
  br label %126

126:                                              ; preds = %125, %92, %68, %48, %26
  %127 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %13, align 8
  %128 = icmp ne %struct.batadv_orig_ifinfo* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %13, align 8
  %131 = call i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %14, align 8
  %134 = icmp ne %struct.batadv_neigh_ifinfo* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %14, align 8
  %137 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %16, align 4
  ret i32 %139
}

declare dso_local %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_new(%struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i64 @batadv_window_protected(%struct.batadv_priv*, i64, i32, i32*, i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, ...) #1

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_new(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_v_forward_penalty(%struct.batadv_priv*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*, i64) #1

declare dso_local i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo*) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

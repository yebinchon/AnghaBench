; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_hwmp_perr_frame_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_hwmp_perr_frame_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_mgmt = type { i32* }
%struct.mesh_path = type { i32, i32, i64 }
%struct.sta_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@MESH_PATH_FIXED = common dso_local global i32 0, align 4
@MESH_PATH_SN_VALID = common dso_local global i32 0, align 4
@broadcast_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i32*)* @hwmp_perr_frame_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwmp_perr_frame_process(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_if_mesh*, align 8
  %8 = alloca %struct.mesh_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %17, %struct.ieee80211_if_mesh** %7, align 8
  %18 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @PERR_IE_TTL(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %134

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @PERR_IE_TARGET_ADDR(i32* %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @PERR_IE_TARGET_SN(i32* %36)
  store i64 %37, i64* %12, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @PERR_IE_TARGET_RCODE(i32* %38)
  store i32 %39, i32* %13, align 4
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %41, i32* %42)
  store %struct.mesh_path* %43, %struct.mesh_path** %8, align 8
  %44 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %45 = icmp ne %struct.mesh_path* %44, null
  br i1 %45, label %46, label %131

46:                                               ; preds = %31
  %47 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %48 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %47, i32 0, i32 1
  %49 = call i32 @spin_lock_bh(i32* %48)
  %50 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %51 = call %struct.sta_info* @next_hop_deref_protected(%struct.mesh_path* %50)
  store %struct.sta_info* %51, %struct.sta_info** %14, align 8
  %52 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %53 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %126

58:                                               ; preds = %46
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %61 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ether_addr_equal(i32* %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %126

66:                                               ; preds = %58
  %67 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %68 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MESH_PATH_FIXED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %126, label %73

73:                                               ; preds = %66
  %74 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %75 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MESH_PATH_SN_VALID, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %83 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @SN_GT(i64 %81, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i64, i64* %12, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %126

90:                                               ; preds = %87, %80, %73
  %91 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %94 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i64, i64* %12, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %102 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %108

103:                                              ; preds = %90
  %104 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %105 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %103, %99
  %109 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %110 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %109, i32 0, i32 1
  %111 = call i32 @spin_unlock_bh(i32* %110)
  %112 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %7, align 8
  %113 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %108
  br label %132

118:                                              ; preds = %108
  %119 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @broadcast_addr, align 4
  %125 = call i32 @mesh_path_error_tx(%struct.ieee80211_sub_if_data* %119, i32 %120, i32* %121, i64 %122, i32 %123, i32 %124)
  br label %130

126:                                              ; preds = %87, %66, %58, %46
  %127 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %128 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %127, i32 0, i32 1
  %129 = call i32 @spin_unlock_bh(i32* %128)
  br label %130

130:                                              ; preds = %126, %118
  br label %131

131:                                              ; preds = %130, %31
  br label %132

132:                                              ; preds = %131, %117
  %133 = call i32 (...) @rcu_read_unlock()
  br label %134

134:                                              ; preds = %132, %25
  ret void
}

declare dso_local i32 @PERR_IE_TTL(i32*) #1

declare dso_local i32* @PERR_IE_TARGET_ADDR(i32*) #1

declare dso_local i64 @PERR_IE_TARGET_SN(i32*) #1

declare dso_local i32 @PERR_IE_TARGET_RCODE(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sta_info* @next_hop_deref_protected(%struct.mesh_path*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i64 @SN_GT(i64, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mesh_path_error_tx(%struct.ieee80211_sub_if_data*, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

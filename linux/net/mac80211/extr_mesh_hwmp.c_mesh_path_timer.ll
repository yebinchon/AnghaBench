; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_path_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_path_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_path = type { i32, i64, i32, i32, i32, i32, %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@MESH_PATH_RESOLVED = common dso_local global i32 0, align 4
@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@MESH_PATH_REQ_QUEUED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no gate was reachable\0A\00", align 1
@mpath = common dso_local global %struct.mesh_path* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_path_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mesh_path*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %7 = ptrtoint %struct.mesh_path* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.mesh_path* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.mesh_path* %10, %struct.mesh_path** %3, align 8
  %11 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %12 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %11, i32 0, i32 6
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %4, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %116

21:                                               ; preds = %1
  %22 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %23 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %22, i32 0, i32 4
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %26 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MESH_PATH_RESOLVED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %21
  %32 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %33 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %31, %21
  %39 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %40 = load i32, i32* @MESH_PATH_RESOLVED, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %44 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %48 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %47, i32 0, i32 4
  %49 = call i32 @spin_unlock_bh(i32* %48)
  br label %116

50:                                               ; preds = %31
  %51 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %52 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %55 = call i64 @max_preq_retries(%struct.ieee80211_sub_if_data* %54)
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %50
  %58 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %59 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %63 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @MESH_PATH_REQ_QUEUED, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %69 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %73 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %72, i32 0, i32 4
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %76 = call i32 @mesh_queue_preq(%struct.mesh_path* %75, i32 0)
  br label %115

77:                                               ; preds = %50
  %78 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %79 = load i32, i32* @MESH_PATH_RESOLVED, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @MESH_PATH_REQ_QUEUED, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %85 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @jiffies, align 4
  %89 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %90 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %92 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %91, i32 0, i32 4
  %93 = call i32 @spin_unlock_bh(i32* %92)
  %94 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %95 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %77
  %99 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %100 = call i64 @mesh_gate_num(%struct.ieee80211_sub_if_data* %99)
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %104 = call i32 @mesh_path_send_to_gates(%struct.mesh_path* %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %109 = call i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %102
  br label %114

111:                                              ; preds = %98, %77
  %112 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %113 = call i32 @mesh_path_flush_pending(%struct.mesh_path* %112)
  br label %114

114:                                              ; preds = %111, %110
  br label %115

115:                                              ; preds = %114, %57
  br label %116

116:                                              ; preds = %20, %115, %38
  ret void
}

declare dso_local %struct.mesh_path* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @max_preq_retries(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_queue_preq(%struct.mesh_path*, i32) #1

declare dso_local i64 @mesh_gate_num(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_path_send_to_gates(%struct.mesh_path*) #1

declare dso_local i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data*, i8*) #1

declare dso_local i32 @mesh_path_flush_pending(%struct.mesh_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_path_tx_root_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_mesh_path_tx_root_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32 }

@RANN_FLAG_IS_GATE = common dso_local global i32 0, align 4
@MPATH_RANN = common dso_local global i32 0, align 4
@broadcast_addr = common dso_local global i64 0, align 8
@IEEE80211_PREQ_PROACTIVE_PREP_FLAG = common dso_local global i32 0, align 4
@IEEE80211_PREQ_TO_FLAG = common dso_local global i32 0, align 4
@IEEE80211_PREQ_USN_FLAG = common dso_local global i32 0, align 4
@MPATH_PREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Proactive mechanism not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_path_tx_root_frame(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_mesh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %9, %struct.ieee80211_if_mesh** %3, align 8
  %10 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @RANN_FLAG_IS_GATE, align 4
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %86 [
    i32 128, label %28
    i32 129, label %47
    i32 130, label %51
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @MPATH_RANN, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load i64, i64* @broadcast_addr, align 8
  %40 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %46 = call i32 @mesh_path_sel_frame_tx(i32 %29, i32 %30, i32 %34, i32 %38, i32 0, i32* null, i32 0, i64 %39, i32 0, i32 %43, i32 %44, i32 0, i32 0, %struct.ieee80211_sub_if_data* %45)
  br label %89

47:                                               ; preds = %22
  %48 = load i32, i32* @IEEE80211_PREQ_PROACTIVE_PREP_FLAG, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %22, %47
  %52 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @IEEE80211_PREQ_TO_FLAG, align 4
  %57 = load i32, i32* @IEEE80211_PREQ_USN_FLAG, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @MPATH_PREQ, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* @broadcast_addr, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load i64, i64* @broadcast_addr, align 8
  %75 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %85 = call i32 @mesh_path_sel_frame_tx(i32 %61, i32 %62, i32 %66, i32 %70, i32 %71, i32* %73, i32 0, i64 %74, i32 0, i32 %78, i32 %79, i32 0, i32 %82, %struct.ieee80211_sub_if_data* %84)
  br label %89

86:                                               ; preds = %22
  %87 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %88 = call i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %51, %28
  ret void
}

declare dso_local i32 @mesh_path_sel_frame_tx(i32, i32, i32, i32, i32, i32*, i32, i64, i32, i32, i32, i32, i32, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

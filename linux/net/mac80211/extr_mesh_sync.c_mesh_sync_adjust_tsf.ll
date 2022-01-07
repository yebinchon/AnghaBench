; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_sync.c_mesh_sync_adjust_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_sync.c_mesh_sync_adjust_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"TSF : max clockdrift=%lld; adjusting\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"TSF : max clockdrift=%lld; adjusting by %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_sync_adjust_tsf(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_if_mesh*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 2
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %3, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %13, %struct.ieee80211_if_mesh** %4, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 1024
  %20 = sdiv i32 %19, 2500
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %5, align 8
  %22 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %1
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %32 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i64, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %56

42:                                               ; preds = %1
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %44 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i64, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %42, %30
  %57 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %61 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @drv_offset_tsf(%struct.ieee80211_local* %67, %struct.ieee80211_sub_if_data* %68, i64 %69)
  br label %85

71:                                               ; preds = %56
  %72 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %73 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %74 = call i64 @drv_get_tsf(%struct.ieee80211_local* %72, %struct.ieee80211_sub_if_data* %73)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, -1
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %80, %81
  %83 = call i32 @drv_set_tsf(%struct.ieee80211_local* %78, %struct.ieee80211_sub_if_data* %79, i64 %82)
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84, %66
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @msync_dbg(%struct.ieee80211_sub_if_data*, i8*, i64, ...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @drv_offset_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i64) #1

declare dso_local i64 @drv_get_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_set_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

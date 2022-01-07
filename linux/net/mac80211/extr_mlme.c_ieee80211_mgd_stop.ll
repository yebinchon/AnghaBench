; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i64, i32*, i32*, i32*, i64, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.cfg80211_bss* }
%struct.cfg80211_bss = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mgd_stop(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_managed*, align 8
  %4 = alloca %struct.cfg80211_bss*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.ieee80211_if_managed* %7, %struct.ieee80211_if_managed** %3, align 8
  %8 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %8, i32 0, i32 13
  %10 = call i32 @cancel_work_sync(i32* %9)
  %11 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %11, i32 0, i32 12
  %13 = call i32 @cancel_work_sync(i32* %12)
  %14 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %14, i32 0, i32 11
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %17, i32 0, i32 10
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %20, i32 0, i32 9
  %22 = call i32 @cancel_work_sync(i32* %21)
  %23 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %23, i32 0, i32 8
  %25 = call i32 @cancel_delayed_work_sync(i32* %24)
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %27 = call i32 @sdata_lock(%struct.ieee80211_sub_if_data* %26)
  %28 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %28, i32 0, i32 7
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %33, i32 0, i32 7
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %36, align 8
  store %struct.cfg80211_bss* %37, %struct.cfg80211_bss** %4, align 8
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %39 = call i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data* %38, i32 0, i32 0)
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %44 = call i32 @cfg80211_assoc_timeout(i32 %42, %struct.cfg80211_bss* %43)
  br label %45

45:                                               ; preds = %32, %1
  %46 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %52 = call i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %54, i32 0, i32 1
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree_skb(i32* %64)
  %66 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %66, i32 0, i32 5
  store i32* null, i32** %67, align 8
  %68 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %68, i32 0, i32 4
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %61, %53
  %71 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %72 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %75, i32 0, i32 3
  store i32* null, i32** %76, align 8
  %77 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %78 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %80 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock_bh(i32* %80)
  %82 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %83 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %82, i32 0, i32 0
  %84 = call i32 @del_timer_sync(i32* %83)
  %85 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %86 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %85)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @sdata_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @cfg80211_assoc_timeout(i32, %struct.cfg80211_bss*) #1

declare dso_local i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @sdata_unlock(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

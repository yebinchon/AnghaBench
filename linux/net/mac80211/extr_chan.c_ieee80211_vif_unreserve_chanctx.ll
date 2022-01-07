; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_unreserve_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_unreserve_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__*, %struct.ieee80211_chanctx*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_chanctx = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.ieee80211_chanctx* }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_REPLACES_OTHER = common dso_local global i64 0, align 8
@IEEE80211_CHANCTX_WILL_BE_REPLACED = common dso_local global i64 0, align 8
@IEEE80211_CHANCTX_REPLACE_NONE = common dso_local global i64 0, align 8
@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_vif_unreserve_chanctx(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %5, i32 0, i32 1
  %7 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  store %struct.ieee80211_chanctx* %7, %struct.ieee80211_chanctx** %4, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %14 = icmp ne %struct.ieee80211_chanctx* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %94

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 2
  %25 = call i32 @list_del(i32* %24)
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 1
  store %struct.ieee80211_chanctx* null, %struct.ieee80211_chanctx** %27, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %32 = call i64 @ieee80211_chanctx_refcount(%struct.TYPE_5__* %30, %struct.ieee80211_chanctx* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %93

34:                                               ; preds = %22
  %35 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IEEE80211_CHANCTX_REPLACES_OTHER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %34
  %41 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %94

52:                                               ; preds = %40
  %53 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IEEE80211_CHANCTX_WILL_BE_REPLACED, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON(i32 %60)
  %62 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %65, align 8
  %67 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %68 = icmp ne %struct.ieee80211_chanctx* %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @WARN_ON(i32 %69)
  %71 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store %struct.ieee80211_chanctx* null, %struct.ieee80211_chanctx** %74, align 8
  %75 = load i64, i64* @IEEE80211_CHANCTX_REPLACE_NONE, align 8
  %76 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 %75, i64* %79, align 8
  %80 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %80, i32 0, i32 1
  %82 = call i32 @list_del_rcu(i32* %81)
  %83 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %84 = load i32, i32* @rcu_head, align 4
  %85 = call i32 @kfree_rcu(%struct.ieee80211_chanctx* %83, i32 %84)
  br label %92

86:                                               ; preds = %34
  %87 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %91 = call i32 @ieee80211_free_chanctx(%struct.TYPE_5__* %89, %struct.ieee80211_chanctx* %90)
  br label %92

92:                                               ; preds = %86, %52
  br label %93

93:                                               ; preds = %92, %22
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %49, %19
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @ieee80211_chanctx_refcount(%struct.TYPE_5__*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.ieee80211_chanctx*, i32) #1

declare dso_local i32 @ieee80211_free_chanctx(%struct.TYPE_5__*, %struct.ieee80211_chanctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

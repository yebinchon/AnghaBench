; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c_ieee80211_add_virtual_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c_ieee80211_add_virtual_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.ieee80211_sub_if_data = type { i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@WANT_MONITOR_VIF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i8* null, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-monitor\00", align 1
@IEEE80211_ENCRYPT_HEADROOM = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_EXCLUSIVE = common dso_local global i32 0, align 4
@ieee80211_iface_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_add_virtual_monitor(%struct.ieee80211_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 4
  %8 = load i32, i32* @WANT_MONITOR_VIF, align 4
  %9 = call i32 @ieee80211_hw_check(%struct.TYPE_6__* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %130

12:                                               ; preds = %1
  %13 = call i32 (...) @ASSERT_RTNL()
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %130

19:                                               ; preds = %12
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 48, %23
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ieee80211_sub_if_data* @kzalloc(i64 %24, i32 %25)
  store %struct.ieee80211_sub_if_data* %26, %struct.ieee80211_sub_if_data** %4, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %28 = icmp ne %struct.ieee80211_sub_if_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %130

32:                                               ; preds = %19
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 6
  store %struct.ieee80211_local* %33, %struct.ieee80211_local** %35, align 8
  %36 = load i8*, i8** @NL80211_IFTYPE_MONITOR, align 8
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IFNAMSIZ, align 4
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @wiphy_name(i32 %47)
  %49 = call i32 @snprintf(i32 %42, i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** @NL80211_IFTYPE_MONITOR, align 8
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* @IEEE80211_ENCRYPT_HEADROOM, align 4
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %58 = call i32 @ieee80211_set_default_queues(%struct.ieee80211_sub_if_data* %57)
  %59 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %60 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %61 = call i32 @drv_add_interface(%struct.ieee80211_local* %59, %struct.ieee80211_sub_if_data* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %32
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %67 = call i32 @kfree(%struct.ieee80211_sub_if_data* %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %130

69:                                               ; preds = %32
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %71 = load i8*, i8** @NL80211_IFTYPE_MONITOR, align 8
  %72 = call i32 @ieee80211_check_queues(%struct.ieee80211_sub_if_data* %70, i8* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %77 = call i32 @kfree(%struct.ieee80211_sub_if_data* %76)
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %130

79:                                               ; preds = %69
  %80 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %80, i32 0, i32 0
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %87 = call i32 @rcu_assign_pointer(i64 %85, %struct.ieee80211_sub_if_data* %86)
  %88 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %92 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %91, i32 0, i32 2
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %95 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %96 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %95, i32 0, i32 3
  %97 = load i32, i32* @IEEE80211_CHANCTX_EXCLUSIVE, align 4
  %98 = call i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data* %94, i32* %96, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %99, i32 0, i32 2
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %79
  %105 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %106 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %105, i32 0, i32 0
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @RCU_INIT_POINTER(i64 %110, i32* null)
  %112 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %113 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = call i32 (...) @synchronize_net()
  %116 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %118 = call i32 @drv_remove_interface(%struct.ieee80211_local* %116, %struct.ieee80211_sub_if_data* %117)
  %119 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %120 = call i32 @kfree(%struct.ieee80211_sub_if_data* %119)
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %130

122:                                              ; preds = %79
  %123 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %123, i32 0, i32 1
  %125 = call i32 @skb_queue_head_init(i32* %124)
  %126 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %127 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %126, i32 0, i32 0
  %128 = load i32, i32* @ieee80211_iface_work, align 4
  %129 = call i32 @INIT_WORK(i32* %127, i32 %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %122, %104, %75, %65, %29, %18, %11
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @ieee80211_hw_check(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @kzalloc(i64, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @wiphy_name(i32) #1

declare dso_local i32 @ieee80211_set_default_queues(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_add_interface(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_check_queues(%struct.ieee80211_sub_if_data*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i64, i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @drv_remove_interface(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BATADV_TT_SYNC_MASK = common dso_local global i32 0, align 4
@BATADV_TT_REMOTE_MASK = common dso_local global i32 0, align 4
@batadv_tt_tvlv_ogm_handler_v1 = common dso_local global i32* null, align 8
@batadv_tt_tvlv_unicast_handler_v1 = common dso_local global i32 0, align 4
@BATADV_TVLV_TT = common dso_local global i32 0, align 4
@BATADV_NO_FLAGS = common dso_local global i32 0, align 4
@batadv_roam_tvlv_unicast_handler_v1 = common dso_local global i32 0, align 4
@BATADV_TVLV_ROAM = common dso_local global i32 0, align 4
@batadv_tt_purge = common dso_local global i32 0, align 4
@batadv_event_workqueue = common dso_local global i32 0, align 4
@BATADV_TT_WORK_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_tt_init(%struct.batadv_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  %5 = load i32, i32* @BATADV_TT_SYNC_MASK, align 4
  %6 = load i32, i32* @BATADV_TT_REMOTE_MASK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUILD_BUG_ON(i32 %10)
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %13 = call i32 @batadv_tt_local_init(%struct.batadv_priv* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %20 = call i32 @batadv_tt_global_init(%struct.batadv_priv* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %49

25:                                               ; preds = %18
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %27 = load i32*, i32** @batadv_tt_tvlv_ogm_handler_v1, align 8
  %28 = load i32, i32* @batadv_tt_tvlv_unicast_handler_v1, align 4
  %29 = load i32, i32* @BATADV_TVLV_TT, align 4
  %30 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %31 = call i32 @batadv_tvlv_handler_register(%struct.batadv_priv* %26, i32* %27, i32 %28, i32 %29, i32 1, i32 %30)
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %33 = load i32, i32* @batadv_roam_tvlv_unicast_handler_v1, align 4
  %34 = load i32, i32* @BATADV_TVLV_ROAM, align 4
  %35 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %36 = call i32 @batadv_tvlv_handler_register(%struct.batadv_priv* %32, i32* null, i32 %33, i32 %34, i32 1, i32 %35)
  %37 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %38 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* @batadv_tt_purge, align 4
  %41 = call i32 @INIT_DELAYED_WORK(i32* %39, i32 %40)
  %42 = load i32, i32* @batadv_event_workqueue, align 4
  %43 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %44 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* @BATADV_TT_WORK_PERIOD, align 4
  %47 = call i32 @msecs_to_jiffies(i32 %46)
  %48 = call i32 @queue_delayed_work(i32 %42, i32* %45, i32 %47)
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %25, %23, %16
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @batadv_tt_local_init(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_tt_global_init(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_tvlv_handler_register(%struct.batadv_priv*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

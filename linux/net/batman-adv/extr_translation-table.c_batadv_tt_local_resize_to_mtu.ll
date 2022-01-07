; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_resize_to_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_resize_to_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BATADV_TT_LOCAL_TIMEOUT = common dso_local global i32 0, align 4
@batadv_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Forced to purge local tt entries to fit new maximum fragment MTU (%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_tt_local_resize_to_mtu(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.batadv_priv* %9, %struct.batadv_priv** %3, align 8
  %10 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %11 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %10, i32 0, i32 1
  %12 = call i32 @atomic_read(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @BATADV_TT_LOCAL_TIMEOUT, align 4
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %16 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  br label %19

19:                                               ; preds = %1, %26
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %21 = call i32 @batadv_tt_local_table_transmit_size(%struct.batadv_priv* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @batadv_tt_local_purge(%struct.batadv_priv* %27, i32 %28)
  %30 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %31 = call i32 @batadv_tt_local_purge_pending_clients(%struct.batadv_priv* %30)
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %34 = load i32, i32* @batadv_info, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @net_ratelimited_function(i32 %34, %struct.net_device* %35, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %19

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %43 = call i32 @batadv_tt_local_commit_changes_nolock(%struct.batadv_priv* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %46 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @batadv_tt_local_table_transmit_size(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_tt_local_purge(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_tt_local_purge_pending_clients(%struct.batadv_priv*) #1

declare dso_local i32 @net_ratelimited_function(i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @batadv_tt_local_commit_changes_nolock(%struct.batadv_priv*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

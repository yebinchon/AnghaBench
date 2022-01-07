; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_commit_changes_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_commit_changes_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@BATADV_TT_CLIENT_NEW = common dso_local global i32 0, align 4
@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Local changes committed, updating to ttvn %u\0A\00", align 1
@BATADV_TT_OGM_APPEND_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*)* @batadv_tt_local_commit_changes_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_local_commit_changes_nolock(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %3 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %4 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %8 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %14 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @batadv_atomic_dec_not_zero(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %20 = call i32 @batadv_tt_tvlv_container_update(%struct.batadv_priv* %19)
  br label %21

21:                                               ; preds = %18, %12
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %24 = load i32, i32* @BATADV_TT_CLIENT_NEW, align 4
  %25 = call i32 @batadv_tt_local_set_flags(%struct.batadv_priv* %23, i32 %24, i32 0, i32 1)
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %27 = call i32 @batadv_tt_local_purge_pending_clients(%struct.batadv_priv* %26)
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %29 = call i32 @batadv_tt_local_update_crc(%struct.batadv_priv* %28)
  %30 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %31 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load i32, i32* @BATADV_DBG_TT, align 4
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %37 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @atomic_read(i32* %38)
  %40 = call i32 @batadv_dbg(i32 %34, %struct.batadv_priv* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %42 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* @BATADV_TT_OGM_APPEND_MAX, align 4
  %45 = call i32 @atomic_set(i32* %43, i32 %44)
  %46 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %47 = call i32 @batadv_tt_tvlv_container_update(%struct.batadv_priv* %46)
  br label %48

48:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @batadv_atomic_dec_not_zero(i32*) #1

declare dso_local i32 @batadv_tt_tvlv_container_update(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_tt_local_set_flags(%struct.batadv_priv*, i32, i32, i32) #1

declare dso_local i32 @batadv_tt_local_purge_pending_clients(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_tt_local_update_crc(%struct.batadv_priv*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

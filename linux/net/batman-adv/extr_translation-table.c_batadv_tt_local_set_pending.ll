; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_set_pending.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_set_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tt_local_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BATADV_TT_CLIENT_PENDING = common dso_local global i32 0, align 4
@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Local tt entry (%pM, vid: %d) pending to be removed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_tt_local_entry*, i32, i8*)* @batadv_tt_local_set_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_local_set_pending(%struct.batadv_priv* %0, %struct.batadv_tt_local_entry* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_tt_local_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.batadv_tt_local_entry* %1, %struct.batadv_tt_local_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %10 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @batadv_tt_local_event(%struct.batadv_priv* %9, %struct.batadv_tt_local_entry* %10, i32 %11)
  %13 = load i32, i32* @BATADV_TT_CLIENT_PENDING, align 4
  %14 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %6, align 8
  %15 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %13
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @BATADV_DBG_TT, align 4
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %21 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %6, align 8
  %22 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %6, align 8
  %26 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @batadv_print_vid(i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @batadv_dbg(i32 %19, %struct.batadv_priv* %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29, i8* %30)
  ret void
}

declare dso_local i32 @batadv_tt_local_event(%struct.batadv_priv*, %struct.batadv_tt_local_entry*, i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, i32, i8*) #1

declare dso_local i32 @batadv_print_vid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

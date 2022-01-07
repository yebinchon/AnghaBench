; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_tvlv_container_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_tvlv_container_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }

@BATADV_TVLV_DAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*)* @batadv_dat_tvlv_container_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_dat_tvlv_container_update(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca i8, align 1
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %4 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %4, i32 0, i32 0
  %6 = call signext i8 @atomic_read(i32* %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8, i8* %3, align 1
  %8 = sext i8 %7 to i32
  switch i32 %8, label %17 [
    i32 0, label %9
    i32 1, label %13
  ]

9:                                                ; preds = %1
  %10 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %11 = load i32, i32* @BATADV_TVLV_DAT, align 4
  %12 = call i32 @batadv_tvlv_container_unregister(%struct.batadv_priv* %10, i32 %11, i32 1)
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %15 = load i32, i32* @BATADV_TVLV_DAT, align 4
  %16 = call i32 @batadv_tvlv_container_register(%struct.batadv_priv* %14, i32 %15, i32 1, i32* null, i32 0)
  br label %17

17:                                               ; preds = %1, %13, %9
  ret void
}

declare dso_local signext i8 @atomic_read(i32*) #1

declare dso_local i32 @batadv_tvlv_container_unregister(%struct.batadv_priv*, i32, i32) #1

declare dso_local i32 @batadv_tvlv_container_register(%struct.batadv_priv*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

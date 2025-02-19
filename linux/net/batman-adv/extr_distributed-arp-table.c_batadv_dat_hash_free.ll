; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_hash_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_hash_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*)* @batadv_dat_hash_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_dat_hash_free(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %3 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %4 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %11 = call i32 @__batadv_dat_purge(%struct.batadv_priv* %10, i32* null)
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %13 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @batadv_hash_destroy(i32* %15)
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %18 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @__batadv_dat_purge(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @batadv_hash_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

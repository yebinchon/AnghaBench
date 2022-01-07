; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_commit_changes.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_commit_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_tt_local_commit_changes(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %3 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %4 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %8 = call i32 @batadv_tt_local_commit_changes_nolock(%struct.batadv_priv* %7)
  %9 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %10 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @spin_unlock_bh(i32* %11)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @batadv_tt_local_commit_changes_nolock(%struct.batadv_priv*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

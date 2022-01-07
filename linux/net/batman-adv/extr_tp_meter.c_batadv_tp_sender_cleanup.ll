; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_sender_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_sender_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tp_vars = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_tp_vars*)* @batadv_tp_sender_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tp_sender_cleanup(%struct.batadv_priv* %0, %struct.batadv_tp_vars* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_tp_vars*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_tp_vars* %1, %struct.batadv_tp_vars** %4, align 8
  %5 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %6 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %5, i32 0, i32 3
  %7 = call i32 @cancel_delayed_work(i32* %6)
  %8 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %9 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %14 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %13, i32 0, i32 2
  %15 = call i32 @hlist_del_rcu(i32* %14)
  %16 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %17 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %22 = call i32 @batadv_tp_vars_put(%struct.batadv_tp_vars* %21)
  %23 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %24 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @atomic_dec(i32* %26)
  %28 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %29 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %28, i32 0, i32 0
  %30 = call i32 @del_timer_sync(i32* %29)
  %31 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %32 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %31, i32 0, i32 0
  %33 = call i32 @del_timer(i32* %32)
  %34 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %4, align 8
  %35 = call i32 @batadv_tp_vars_put(%struct.batadv_tp_vars* %34)
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @batadv_tp_vars_put(%struct.batadv_tp_vars*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

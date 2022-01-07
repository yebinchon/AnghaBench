; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ecache.c_nf_conntrack_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ecache.c_nf_conntrack_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_ct_event_notifier = type { i32 }

@nf_ct_ecache_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_conntrack_unregister_notifier(%struct.net* %0, %struct.nf_ct_event_notifier* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nf_ct_event_notifier*, align 8
  %5 = alloca %struct.nf_ct_event_notifier*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.nf_ct_event_notifier* %1, %struct.nf_ct_event_notifier** %4, align 8
  %6 = call i32 @mutex_lock(i32* @nf_ct_ecache_mutex)
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = getelementptr inbounds %struct.net, %struct.net* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @lockdep_is_held(i32* @nf_ct_ecache_mutex)
  %12 = call %struct.nf_ct_event_notifier* @rcu_dereference_protected(i32 %10, i32 %11)
  store %struct.nf_ct_event_notifier* %12, %struct.nf_ct_event_notifier** %5, align 8
  %13 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %5, align 8
  %14 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %4, align 8
  %15 = icmp ne %struct.nf_ct_event_notifier* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.net*, %struct.net** %3, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @RCU_INIT_POINTER(i32 %21, i32* null)
  %23 = call i32 @mutex_unlock(i32* @nf_ct_ecache_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nf_ct_event_notifier* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

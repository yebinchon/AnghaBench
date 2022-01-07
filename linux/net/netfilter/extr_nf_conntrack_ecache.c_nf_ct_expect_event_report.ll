; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ecache.c_nf_ct_expect_event_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ecache.c_nf_ct_expect_event_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_exp_event_notifier = type { i32 (i32, %struct.nf_exp_event*)* }
%struct.nf_exp_event = type opaque
%struct.nf_conntrack_ecache = type { i32 }
%struct.nf_exp_event.0 = type { i32, i32, %struct.nf_conntrack_expect* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_expect_event_report(i32 %0, %struct.nf_conntrack_expect* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conntrack_expect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.nf_exp_event_notifier*, align 8
  %11 = alloca %struct.nf_conntrack_ecache*, align 8
  %12 = alloca %struct.nf_exp_event.0, align 8
  store i32 %0, i32* %5, align 4
  store %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_expect** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %14 = call %struct.net* @nf_ct_exp_net(%struct.nf_conntrack_expect* %13)
  store %struct.net* %14, %struct.net** %9, align 8
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.net*, %struct.net** %9, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nf_exp_event_notifier* @rcu_dereference(i32 %19)
  store %struct.nf_exp_event_notifier* %20, %struct.nf_exp_event_notifier** %10, align 8
  %21 = load %struct.nf_exp_event_notifier*, %struct.nf_exp_event_notifier** %10, align 8
  %22 = icmp ne %struct.nf_exp_event_notifier* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %55

24:                                               ; preds = %4
  %25 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  %26 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.nf_conntrack_ecache* @nf_ct_ecache_find(i32 %27)
  store %struct.nf_conntrack_ecache* %28, %struct.nf_conntrack_ecache** %11, align 8
  %29 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %11, align 8
  %30 = icmp ne %struct.nf_conntrack_ecache* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %55

32:                                               ; preds = %24
  %33 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %11, align 8
  %34 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.nf_exp_event.0, %struct.nf_exp_event.0* %12, i32 0, i32 0
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %41, align 8
  %43 = getelementptr inbounds %struct.nf_exp_event.0, %struct.nf_exp_event.0* %12, i32 0, i32 1
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds %struct.nf_exp_event.0, %struct.nf_exp_event.0* %12, i32 0, i32 2
  %46 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %6, align 8
  store %struct.nf_conntrack_expect* %46, %struct.nf_conntrack_expect** %45, align 8
  %47 = load %struct.nf_exp_event_notifier*, %struct.nf_exp_event_notifier** %10, align 8
  %48 = getelementptr inbounds %struct.nf_exp_event_notifier, %struct.nf_exp_event_notifier* %47, i32 0, i32 0
  %49 = load i32 (i32, %struct.nf_exp_event*)*, i32 (i32, %struct.nf_exp_event*)** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 1, %50
  %52 = bitcast %struct.nf_exp_event.0* %12 to %struct.nf_exp_event*
  %53 = call i32 %49(i32 %51, %struct.nf_exp_event* %52)
  br label %54

54:                                               ; preds = %40, %32
  br label %55

55:                                               ; preds = %54, %31, %23
  %56 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.net* @nf_ct_exp_net(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_exp_event_notifier* @rcu_dereference(i32) #1

declare dso_local %struct.nf_conntrack_ecache* @nf_ct_ecache_find(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

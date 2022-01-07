; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ecache.c_nf_ct_deliver_cached_events.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ecache.c_nf_ct_deliver_cached_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_ct_event_notifier = type { i32 (i64, %struct.nf_ct_event*)* }
%struct.nf_ct_event = type opaque
%struct.nf_conntrack_ecache = type { i64, i64, i32 }
%struct.nf_ct_event.0 = type { i64, i64, %struct.nf_conn* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_deliver_cached_events(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nf_ct_event_notifier*, align 8
  %7 = alloca %struct.nf_conntrack_ecache*, align 8
  %8 = alloca %struct.nf_ct_event.0, align 8
  %9 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %10 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %11 = call %struct.net* @nf_ct_net(%struct.nf_conn* %10)
  store %struct.net* %11, %struct.net** %3, align 8
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nf_ct_event_notifier* @rcu_dereference(i32 %16)
  store %struct.nf_ct_event_notifier* %17, %struct.nf_ct_event_notifier** %6, align 8
  %18 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %6, align 8
  %19 = icmp eq %struct.nf_ct_event_notifier* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %100

21:                                               ; preds = %1
  %22 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %23 = call %struct.nf_conntrack_ecache* @nf_ct_ecache_find(%struct.nf_conn* %22)
  store %struct.nf_conntrack_ecache* %23, %struct.nf_conntrack_ecache** %7, align 8
  %24 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %7, align 8
  %25 = icmp eq %struct.nf_conntrack_ecache* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %100

27:                                               ; preds = %21
  %28 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %7, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %28, i32 0, i32 2
  %30 = call i64 @xchg(i32* %29, i32 0)
  store i64 %30, i64* %4, align 8
  %31 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %32 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %36 = call i64 @nf_ct_is_dying(%struct.nf_conn* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %27
  br label %100

39:                                               ; preds = %34
  %40 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %7, align 8
  %41 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = or i64 %43, %44
  %46 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %7, align 8
  %47 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %45, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %100

52:                                               ; preds = %39
  %53 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %54 = getelementptr inbounds %struct.nf_ct_event.0, %struct.nf_ct_event.0* %8, i32 0, i32 2
  store %struct.nf_conn* %53, %struct.nf_conn** %54, align 8
  %55 = getelementptr inbounds %struct.nf_ct_event.0, %struct.nf_ct_event.0* %8, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.nf_ct_event.0, %struct.nf_ct_event.0* %8, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %6, align 8
  %58 = getelementptr inbounds %struct.nf_ct_event_notifier, %struct.nf_ct_event_notifier* %57, i32 0, i32 0
  %59 = load i32 (i64, %struct.nf_ct_event*)*, i32 (i64, %struct.nf_ct_event*)** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = or i64 %60, %61
  %63 = bitcast %struct.nf_ct_event.0* %8 to %struct.nf_ct_event*
  %64 = call i32 %59(i64 %62, %struct.nf_ct_event* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = load i64, i64* %5, align 8
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %67, %52
  %72 = phi i1 [ false, %52 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %100

77:                                               ; preds = %71
  %78 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %79 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %78, i32 0, i32 0
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i64, i64* %4, align 8
  %85 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %7, align 8
  %86 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = or i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %96

89:                                               ; preds = %77
  %90 = load i64, i64* %5, align 8
  %91 = xor i64 %90, -1
  %92 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %7, align 8
  %93 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = and i64 %94, %91
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %89, %83
  %97 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %98 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_bh(i32* %98)
  br label %100

100:                                              ; preds = %96, %76, %51, %38, %26, %20
  %101 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_ct_event_notifier* @rcu_dereference(i32) #1

declare dso_local %struct.nf_conntrack_ecache* @nf_ct_ecache_find(%struct.nf_conn*) #1

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_is_dying(%struct.nf_conn*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

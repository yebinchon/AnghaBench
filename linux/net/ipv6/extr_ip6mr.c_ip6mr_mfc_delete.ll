; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_mfc_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_mfc_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32, i32 }
%struct.mf6cctl = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mfc6_cache = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ip6mr_rht_params = common dso_local global i32 0, align 4
@FIB_EVENT_ENTRY_DEL = common dso_local global i32 0, align 4
@RTM_DELROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, %struct.mf6cctl*, i32)* @ip6mr_mfc_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6mr_mfc_delete(%struct.mr_table* %0, %struct.mf6cctl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mr_table*, align 8
  %6 = alloca %struct.mf6cctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mfc6_cache*, align 8
  store %struct.mr_table* %0, %struct.mr_table** %5, align 8
  store %struct.mf6cctl* %1, %struct.mf6cctl** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %11 = load %struct.mf6cctl*, %struct.mf6cctl** %6, align 8
  %12 = getelementptr inbounds %struct.mf6cctl, %struct.mf6cctl* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.mf6cctl*, %struct.mf6cctl** %6, align 8
  %15 = getelementptr inbounds %struct.mf6cctl, %struct.mf6cctl* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.mfc6_cache* @ip6mr_cache_find_parent(%struct.mr_table* %10, i32* %13, i32* %16, i32 %17)
  store %struct.mfc6_cache* %18, %struct.mfc6_cache** %8, align 8
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %21 = icmp ne %struct.mfc6_cache* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %3
  %26 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %27 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %26, i32 0, i32 2
  %28 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %29 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* @ip6mr_rht_params, align 4
  %32 = call i32 @rhltable_remove(i32* %27, i32* %30, i32 %31)
  %33 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %34 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @list_del_rcu(i32* %35)
  %37 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %38 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %37, i32 0, i32 1
  %39 = call i32 @read_pnet(i32* %38)
  %40 = load i32, i32* @FIB_EVENT_ENTRY_DEL, align 4
  %41 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %42 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %43 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @call_ip6mr_mfc_entry_notifiers(i32 %39, i32 %40, %struct.mfc6_cache* %41, i32 %44)
  %46 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %47 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %48 = load i32, i32* @RTM_DELROUTE, align 4
  %49 = call i32 @mr6_netlink_event(%struct.mr_table* %46, %struct.mfc6_cache* %47, i32 %48)
  %50 = load %struct.mfc6_cache*, %struct.mfc6_cache** %8, align 8
  %51 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %50, i32 0, i32 0
  %52 = call i32 @mr_cache_put(%struct.TYPE_6__* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %25, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mfc6_cache* @ip6mr_cache_find_parent(%struct.mr_table*, i32*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rhltable_remove(i32*, i32*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @call_ip6mr_mfc_entry_notifiers(i32, i32, %struct.mfc6_cache*, i32) #1

declare dso_local i32 @read_pnet(i32*) #1

declare dso_local i32 @mr6_netlink_event(%struct.mr_table*, %struct.mfc6_cache*, i32) #1

declare dso_local i32 @mr_cache_put(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

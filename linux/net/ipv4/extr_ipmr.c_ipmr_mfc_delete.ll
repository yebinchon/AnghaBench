; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_mfc_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_mfc_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32, i32 }
%struct.mfcctl = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net = type { i32 }
%struct.mfc_cache = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ipmr_rht_params = common dso_local global i32 0, align 4
@FIB_EVENT_ENTRY_DEL = common dso_local global i32 0, align 4
@RTM_DELROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, %struct.mfcctl*, i32)* @ipmr_mfc_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_mfc_delete(%struct.mr_table* %0, %struct.mfcctl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mr_table*, align 8
  %6 = alloca %struct.mfcctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.mfc_cache*, align 8
  store %struct.mr_table* %0, %struct.mr_table** %5, align 8
  store %struct.mfcctl* %1, %struct.mfcctl** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %11 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %10, i32 0, i32 2
  %12 = call %struct.net* @read_pnet(i32* %11)
  store %struct.net* %12, %struct.net** %8, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %15 = load %struct.mfcctl*, %struct.mfcctl** %6, align 8
  %16 = getelementptr inbounds %struct.mfcctl, %struct.mfcctl* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mfcctl*, %struct.mfcctl** %6, align 8
  %20 = getelementptr inbounds %struct.mfcctl, %struct.mfcctl* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.mfc_cache* @ipmr_cache_find_parent(%struct.mr_table* %14, i32 %18, i32 %22, i32 %23)
  store %struct.mfc_cache* %24, %struct.mfc_cache** %9, align 8
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load %struct.mfc_cache*, %struct.mfc_cache** %9, align 8
  %27 = icmp ne %struct.mfc_cache* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %57

31:                                               ; preds = %3
  %32 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %33 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %32, i32 0, i32 1
  %34 = load %struct.mfc_cache*, %struct.mfc_cache** %9, align 8
  %35 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* @ipmr_rht_params, align 4
  %38 = call i32 @rhltable_remove(i32* %33, i32* %36, i32 %37)
  %39 = load %struct.mfc_cache*, %struct.mfc_cache** %9, align 8
  %40 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @list_del_rcu(i32* %41)
  %43 = load %struct.net*, %struct.net** %8, align 8
  %44 = load i32, i32* @FIB_EVENT_ENTRY_DEL, align 4
  %45 = load %struct.mfc_cache*, %struct.mfc_cache** %9, align 8
  %46 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %47 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @call_ipmr_mfc_entry_notifiers(%struct.net* %43, i32 %44, %struct.mfc_cache* %45, i32 %48)
  %50 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %51 = load %struct.mfc_cache*, %struct.mfc_cache** %9, align 8
  %52 = load i32, i32* @RTM_DELROUTE, align 4
  %53 = call i32 @mroute_netlink_event(%struct.mr_table* %50, %struct.mfc_cache* %51, i32 %52)
  %54 = load %struct.mfc_cache*, %struct.mfc_cache** %9, align 8
  %55 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %54, i32 0, i32 0
  %56 = call i32 @mr_cache_put(%struct.TYPE_6__* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %31, %28
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.net* @read_pnet(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mfc_cache* @ipmr_cache_find_parent(%struct.mr_table*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rhltable_remove(i32*, i32*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @call_ipmr_mfc_entry_notifiers(%struct.net*, i32, %struct.mfc_cache*, i32) #1

declare dso_local i32 @mroute_netlink_event(%struct.mr_table*, %struct.mfc_cache*, i32) #1

declare dso_local i32 @mr_cache_put(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_flow_key_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_flow_key_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i64, i64, i32 }
%struct.sw_flow = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.table_instance = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@REHASH_INTERVAL = common dso_local global i64 0, align 8
@flow_tbl_destroy_rcu_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_table*, %struct.sw_flow*)* @flow_key_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_key_insert(%struct.flow_table* %0, %struct.sw_flow* %1) #0 {
  %3 = alloca %struct.flow_table*, align 8
  %4 = alloca %struct.sw_flow*, align 8
  %5 = alloca %struct.table_instance*, align 8
  %6 = alloca %struct.table_instance*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %3, align 8
  store %struct.sw_flow* %1, %struct.sw_flow** %4, align 8
  store %struct.table_instance* null, %struct.table_instance** %5, align 8
  %7 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %8 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %7, i32 0, i32 1
  %9 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %10 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @flow_hash(i32* %8, i32* %12)
  %14 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %15 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %18 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.table_instance* @ovsl_dereference(i32 %19)
  store %struct.table_instance* %20, %struct.table_instance** %6, align 8
  %21 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %22 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %23 = call i32 @table_instance_insert(%struct.table_instance* %21, %struct.sw_flow* %22)
  %24 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %25 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %29 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %32 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %37 = call %struct.table_instance* @table_instance_expand(%struct.table_instance* %36, i32 0)
  store %struct.table_instance* %37, %struct.table_instance** %5, align 8
  br label %54

38:                                               ; preds = %2
  %39 = load i64, i64* @jiffies, align 8
  %40 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %41 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REHASH_INTERVAL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i64 @time_after(i64 %39, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %49 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %50 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.table_instance* @table_instance_rehash(%struct.table_instance* %48, i64 %51, i32 0)
  store %struct.table_instance* %52, %struct.table_instance** %5, align 8
  br label %53

53:                                               ; preds = %47, %38
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %56 = icmp ne %struct.table_instance* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %59 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %62 = call i32 @rcu_assign_pointer(i32 %60, %struct.table_instance* %61)
  %63 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %64 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %63, i32 0, i32 1
  %65 = load i32, i32* @flow_tbl_destroy_rcu_cb, align 4
  %66 = call i32 @call_rcu(i32* %64, i32 %65)
  %67 = load i64, i64* @jiffies, align 8
  %68 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %69 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32 @flow_hash(i32*, i32*) #1

declare dso_local %struct.table_instance* @ovsl_dereference(i32) #1

declare dso_local i32 @table_instance_insert(%struct.table_instance*, %struct.sw_flow*) #1

declare dso_local %struct.table_instance* @table_instance_expand(%struct.table_instance*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local %struct.table_instance* @table_instance_rehash(%struct.table_instance*, i64, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.table_instance*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

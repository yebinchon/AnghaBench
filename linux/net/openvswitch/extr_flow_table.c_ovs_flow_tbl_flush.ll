; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i64, i64, i32, i32, i32 }
%struct.table_instance = type { i32 }

@TBL_MIN_BUCKETS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_flow_tbl_flush(%struct.flow_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flow_table*, align 8
  %4 = alloca %struct.table_instance*, align 8
  %5 = alloca %struct.table_instance*, align 8
  %6 = alloca %struct.table_instance*, align 8
  %7 = alloca %struct.table_instance*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %3, align 8
  %8 = load i32, i32* @TBL_MIN_BUCKETS, align 4
  %9 = call %struct.table_instance* @table_instance_alloc(i32 %8)
  store %struct.table_instance* %9, %struct.table_instance** %5, align 8
  %10 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %11 = icmp ne %struct.table_instance* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load i32, i32* @TBL_MIN_BUCKETS, align 4
  %17 = call %struct.table_instance* @table_instance_alloc(i32 %16)
  store %struct.table_instance* %17, %struct.table_instance** %7, align 8
  %18 = load %struct.table_instance*, %struct.table_instance** %7, align 8
  %19 = icmp ne %struct.table_instance* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %50

21:                                               ; preds = %15
  %22 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %23 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.table_instance* @ovsl_dereference(i32 %24)
  store %struct.table_instance* %25, %struct.table_instance** %4, align 8
  %26 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %27 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.table_instance* @ovsl_dereference(i32 %28)
  store %struct.table_instance* %29, %struct.table_instance** %6, align 8
  %30 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %31 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %34 = call i32 @rcu_assign_pointer(i32 %32, %struct.table_instance* %33)
  %35 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %36 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.table_instance*, %struct.table_instance** %7, align 8
  %39 = call i32 @rcu_assign_pointer(i32 %37, %struct.table_instance* %38)
  %40 = load i32, i32* @jiffies, align 4
  %41 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %42 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %44 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %46 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %48 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %49 = call i32 @table_instance_destroy(%struct.table_instance* %47, %struct.table_instance* %48, i32 1)
  store i32 0, i32* %2, align 4
  br label %55

50:                                               ; preds = %20
  %51 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %52 = call i32 @__table_instance_destroy(%struct.table_instance* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %50, %21, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.table_instance* @table_instance_alloc(i32) #1

declare dso_local %struct.table_instance* @ovsl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.table_instance*) #1

declare dso_local i32 @table_instance_destroy(%struct.table_instance*, %struct.table_instance*, i32) #1

declare dso_local i32 @__table_instance_destroy(%struct.table_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

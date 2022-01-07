; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i64, i64, i32, i32, i32, i32 }
%struct.table_instance = type { i32 }

@TBL_MIN_BUCKETS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_flow_tbl_init(%struct.flow_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flow_table*, align 8
  %4 = alloca %struct.table_instance*, align 8
  %5 = alloca %struct.table_instance*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %3, align 8
  %6 = load i32, i32* @TBL_MIN_BUCKETS, align 4
  %7 = call %struct.table_instance* @table_instance_alloc(i32 %6)
  store %struct.table_instance* %7, %struct.table_instance** %4, align 8
  %8 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %9 = icmp ne %struct.table_instance* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load i32, i32* @TBL_MIN_BUCKETS, align 4
  %15 = call %struct.table_instance* @table_instance_alloc(i32 %14)
  store %struct.table_instance* %15, %struct.table_instance** %5, align 8
  %16 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %17 = icmp ne %struct.table_instance* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %40

19:                                               ; preds = %13
  %20 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %21 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %24 = call i32 @rcu_assign_pointer(i32 %22, %struct.table_instance* %23)
  %25 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %26 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %29 = call i32 @rcu_assign_pointer(i32 %27, %struct.table_instance* %28)
  %30 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %31 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %30, i32 0, i32 3
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load i32, i32* @jiffies, align 4
  %34 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %35 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %37 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %39 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i32 0, i32* %2, align 4
  br label %45

40:                                               ; preds = %18
  %41 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %42 = call i32 @__table_instance_destroy(%struct.table_instance* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %19, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.table_instance* @table_instance_alloc(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.table_instance*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__table_instance_destroy(%struct.table_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

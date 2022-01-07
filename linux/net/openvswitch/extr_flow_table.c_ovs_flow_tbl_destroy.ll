; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i32, i32 }
%struct.table_instance = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_flow_tbl_destroy(%struct.flow_table* %0) #0 {
  %2 = alloca %struct.flow_table*, align 8
  %3 = alloca %struct.table_instance*, align 8
  %4 = alloca %struct.table_instance*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %2, align 8
  %5 = load %struct.flow_table*, %struct.flow_table** %2, align 8
  %6 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.table_instance* @rcu_dereference_raw(i32 %7)
  store %struct.table_instance* %8, %struct.table_instance** %3, align 8
  %9 = load %struct.flow_table*, %struct.flow_table** %2, align 8
  %10 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.table_instance* @rcu_dereference_raw(i32 %11)
  store %struct.table_instance* %12, %struct.table_instance** %4, align 8
  %13 = load %struct.table_instance*, %struct.table_instance** %3, align 8
  %14 = load %struct.table_instance*, %struct.table_instance** %4, align 8
  %15 = call i32 @table_instance_destroy(%struct.table_instance* %13, %struct.table_instance* %14, i32 0)
  ret void
}

declare dso_local %struct.table_instance* @rcu_dereference_raw(i32) #1

declare dso_local i32 @table_instance_destroy(%struct.table_instance*, %struct.table_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

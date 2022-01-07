; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i64, i32, i32, i32 }
%struct.sw_flow = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.table_instance = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovs_flow_tbl_remove(%struct.flow_table* %0, %struct.sw_flow* %1) #0 {
  %3 = alloca %struct.flow_table*, align 8
  %4 = alloca %struct.sw_flow*, align 8
  %5 = alloca %struct.table_instance*, align 8
  %6 = alloca %struct.table_instance*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %3, align 8
  store %struct.sw_flow* %1, %struct.sw_flow** %4, align 8
  %7 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %8 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.table_instance* @ovsl_dereference(i32 %9)
  store %struct.table_instance* %10, %struct.table_instance** %5, align 8
  %11 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %12 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.table_instance* @ovsl_dereference(i32 %13)
  store %struct.table_instance* %14, %struct.table_instance** %6, align 8
  %15 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %16 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %22 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %26 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = call i32 @hlist_del_rcu(i32* %28)
  %30 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %31 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %35 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %34, i32 0, i32 2
  %36 = call i64 @ovs_identifier_is_ufid(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %2
  %39 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %40 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %44 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = call i32 @hlist_del_rcu(i32* %46)
  %48 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %49 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %38, %2
  %53 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %54 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %55 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @flow_mask_remove(%struct.flow_table* %53, i32 %56)
  ret void
}

declare dso_local %struct.table_instance* @ovsl_dereference(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i64 @ovs_identifier_is_ufid(i32*) #1

declare dso_local i32 @flow_mask_remove(%struct.flow_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

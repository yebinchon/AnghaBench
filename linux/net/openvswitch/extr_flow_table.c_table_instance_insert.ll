; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_table_instance_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_table_instance_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_instance = type { i64 }
%struct.sw_flow = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.hlist_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.table_instance*, %struct.sw_flow*)* @table_instance_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @table_instance_insert(%struct.table_instance* %0, %struct.sw_flow* %1) #0 {
  %3 = alloca %struct.table_instance*, align 8
  %4 = alloca %struct.sw_flow*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  store %struct.table_instance* %0, %struct.table_instance** %3, align 8
  store %struct.sw_flow* %1, %struct.sw_flow** %4, align 8
  %6 = load %struct.table_instance*, %struct.table_instance** %3, align 8
  %7 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %8 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.hlist_head* @find_bucket(%struct.table_instance* %6, i32 %10)
  store %struct.hlist_head* %11, %struct.hlist_head** %5, align 8
  %12 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %13 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.table_instance*, %struct.table_instance** %3, align 8
  %17 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %21 = call i32 @hlist_add_head_rcu(i32* %19, %struct.hlist_head* %20)
  ret void
}

declare dso_local %struct.hlist_head* @find_bucket(%struct.table_instance*, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_tbl_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i32 }
%struct.sw_flow = type { i32 }
%struct.sw_flow_mask = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_flow_tbl_insert(%struct.flow_table* %0, %struct.sw_flow* %1, %struct.sw_flow_mask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flow_table*, align 8
  %6 = alloca %struct.sw_flow*, align 8
  %7 = alloca %struct.sw_flow_mask*, align 8
  %8 = alloca i32, align 4
  store %struct.flow_table* %0, %struct.flow_table** %5, align 8
  store %struct.sw_flow* %1, %struct.sw_flow** %6, align 8
  store %struct.sw_flow_mask* %2, %struct.sw_flow_mask** %7, align 8
  %9 = load %struct.flow_table*, %struct.flow_table** %5, align 8
  %10 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %11 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %7, align 8
  %12 = call i32 @flow_mask_insert(%struct.flow_table* %9, %struct.sw_flow* %10, %struct.sw_flow_mask* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load %struct.flow_table*, %struct.flow_table** %5, align 8
  %19 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %20 = call i32 @flow_key_insert(%struct.flow_table* %18, %struct.sw_flow* %19)
  %21 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %22 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %21, i32 0, i32 0
  %23 = call i64 @ovs_identifier_is_ufid(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.flow_table*, %struct.flow_table** %5, align 8
  %27 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %28 = call i32 @flow_ufid_insert(%struct.flow_table* %26, %struct.sw_flow* %27)
  br label %29

29:                                               ; preds = %25, %17
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @flow_mask_insert(%struct.flow_table*, %struct.sw_flow*, %struct.sw_flow_mask*) #1

declare dso_local i32 @flow_key_insert(%struct.flow_table*, %struct.sw_flow*) #1

declare dso_local i64 @ovs_identifier_is_ufid(i32*) #1

declare dso_local i32 @flow_ufid_insert(%struct.flow_table*, %struct.sw_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

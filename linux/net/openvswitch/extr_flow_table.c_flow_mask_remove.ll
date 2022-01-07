; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_flow_mask_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_flow_mask_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i32 }
%struct.sw_flow_mask = type { i32, i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_table*, %struct.sw_flow_mask*)* @flow_mask_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_mask_remove(%struct.flow_table* %0, %struct.sw_flow_mask* %1) #0 {
  %3 = alloca %struct.flow_table*, align 8
  %4 = alloca %struct.sw_flow_mask*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %3, align 8
  store %struct.sw_flow_mask* %1, %struct.sw_flow_mask** %4, align 8
  %5 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %6 = icmp ne %struct.sw_flow_mask* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = call i32 (...) @ASSERT_OVSL()
  %9 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %10 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %17 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %21 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %7
  %25 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %26 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %25, i32 0, i32 0
  %27 = call i32 @list_del_rcu(i32* %26)
  %28 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %4, align 8
  %29 = load i32, i32* @rcu, align 4
  %30 = call i32 @kfree_rcu(%struct.sw_flow_mask* %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %7
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @ASSERT_OVSL(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.sw_flow_mask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

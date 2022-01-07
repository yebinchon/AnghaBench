; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_flow_mask_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_flow_mask_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i32 }
%struct.sw_flow = type { %struct.sw_flow_mask* }
%struct.sw_flow_mask = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_table*, %struct.sw_flow*, %struct.sw_flow_mask*)* @flow_mask_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_mask_insert(%struct.flow_table* %0, %struct.sw_flow* %1, %struct.sw_flow_mask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flow_table*, align 8
  %6 = alloca %struct.sw_flow*, align 8
  %7 = alloca %struct.sw_flow_mask*, align 8
  %8 = alloca %struct.sw_flow_mask*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %5, align 8
  store %struct.sw_flow* %1, %struct.sw_flow** %6, align 8
  store %struct.sw_flow_mask* %2, %struct.sw_flow_mask** %7, align 8
  %9 = load %struct.flow_table*, %struct.flow_table** %5, align 8
  %10 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %7, align 8
  %11 = call %struct.sw_flow_mask* @flow_mask_find(%struct.flow_table* %9, %struct.sw_flow_mask* %10)
  store %struct.sw_flow_mask* %11, %struct.sw_flow_mask** %8, align 8
  %12 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %13 = icmp ne %struct.sw_flow_mask* %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = call %struct.sw_flow_mask* (...) @mask_alloc()
  store %struct.sw_flow_mask* %15, %struct.sw_flow_mask** %8, align 8
  %16 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %17 = icmp ne %struct.sw_flow_mask* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %14
  %22 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %7, align 8
  %23 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %26 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %7, align 8
  %28 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %31 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %33 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %32, i32 0, i32 1
  %34 = load %struct.flow_table*, %struct.flow_table** %5, align 8
  %35 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %34, i32 0, i32 0
  %36 = call i32 @list_add_rcu(i32* %33, i32* %35)
  br label %49

37:                                               ; preds = %3
  %38 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %39 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %46 = getelementptr inbounds %struct.sw_flow_mask, %struct.sw_flow_mask* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %37, %21
  %50 = load %struct.sw_flow_mask*, %struct.sw_flow_mask** %8, align 8
  %51 = load %struct.sw_flow*, %struct.sw_flow** %6, align 8
  %52 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %51, i32 0, i32 0
  store %struct.sw_flow_mask* %50, %struct.sw_flow_mask** %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.sw_flow_mask* @flow_mask_find(%struct.flow_table*, %struct.sw_flow_mask*) #1

declare dso_local %struct.sw_flow_mask* @mask_alloc(...) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

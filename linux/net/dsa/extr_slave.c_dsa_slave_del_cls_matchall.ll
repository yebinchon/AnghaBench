; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_del_cls_matchall.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_del_cls_matchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_cls_matchall_offload = type { i32 }
%struct.dsa_port = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32*)* }
%struct.dsa_mall_tc_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.tc_cls_matchall_offload*)* @dsa_slave_del_cls_matchall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_slave_del_cls_matchall(%struct.net_device* %0, %struct.tc_cls_matchall_offload* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tc_cls_matchall_offload*, align 8
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca %struct.dsa_mall_tc_entry*, align 8
  %7 = alloca %struct.dsa_switch*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.tc_cls_matchall_offload* %1, %struct.tc_cls_matchall_offload** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %8)
  store %struct.dsa_port* %9, %struct.dsa_port** %5, align 8
  %10 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 1
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %7, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %16, align 8
  %18 = icmp ne i32 (%struct.dsa_switch*, i32, i32*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %4, align 8
  %23 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.dsa_mall_tc_entry* @dsa_slave_mall_tc_entry_find(%struct.net_device* %21, i32 %24)
  store %struct.dsa_mall_tc_entry* %25, %struct.dsa_mall_tc_entry** %6, align 8
  %26 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %6, align 8
  %27 = icmp ne %struct.dsa_mall_tc_entry* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %54

29:                                               ; preds = %20
  %30 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %6, align 8
  %31 = getelementptr inbounds %struct.dsa_mall_tc_entry, %struct.dsa_mall_tc_entry* %30, i32 0, i32 2
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %6, align 8
  %34 = getelementptr inbounds %struct.dsa_mall_tc_entry, %struct.dsa_mall_tc_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %49 [
    i32 128, label %36
  ]

36:                                               ; preds = %29
  %37 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %38 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %40, align 8
  %42 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %43 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %44 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %6, align 8
  %47 = getelementptr inbounds %struct.dsa_mall_tc_entry, %struct.dsa_mall_tc_entry* %46, i32 0, i32 1
  %48 = call i32 %41(%struct.dsa_switch* %42, i32 %45, i32* %47)
  br label %51

49:                                               ; preds = %29
  %50 = call i32 @WARN_ON(i32 1)
  br label %51

51:                                               ; preds = %49, %36
  %52 = load %struct.dsa_mall_tc_entry*, %struct.dsa_mall_tc_entry** %6, align 8
  %53 = call i32 @kfree(%struct.dsa_mall_tc_entry* %52)
  br label %54

54:                                               ; preds = %51, %28, %19
  ret void
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local %struct.dsa_mall_tc_entry* @dsa_slave_mall_tc_entry_find(%struct.net_device*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.dsa_mall_tc_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

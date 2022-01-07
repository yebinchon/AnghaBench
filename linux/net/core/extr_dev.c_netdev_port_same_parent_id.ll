; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_port_same_parent_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_port_same_parent_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_port_same_parent_id(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netdev_phys_item_id, align 4
  %7 = alloca %struct.netdev_phys_item_id, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = bitcast %struct.netdev_phys_item_id* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = bitcast %struct.netdev_phys_item_id* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i64 @dev_get_port_parent_id(%struct.net_device* %10, %struct.netdev_phys_item_id* %6, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i64 @dev_get_port_parent_id(%struct.net_device* %14, %struct.netdev_phys_item_id* %7, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %20

18:                                               ; preds = %13
  %19 = call i32 @netdev_phys_item_id_same(%struct.netdev_phys_item_id* %6, %struct.netdev_phys_item_id* %7)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dev_get_port_parent_id(%struct.net_device*, %struct.netdev_phys_item_id*, i32) #2

declare dso_local i32 @netdev_phys_item_id_same(%struct.netdev_phys_item_id*, %struct.netdev_phys_item_id*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

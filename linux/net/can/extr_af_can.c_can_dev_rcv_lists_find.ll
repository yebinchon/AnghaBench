; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_dev_rcv_lists_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_dev_rcv_lists_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_dev_rcv_lists = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.can_dev_rcv_lists* }
%struct.net_device = type { %struct.can_ml_priv* }
%struct.can_ml_priv = type { %struct.can_dev_rcv_lists }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.can_dev_rcv_lists* (%struct.net*, %struct.net_device*)* @can_dev_rcv_lists_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.can_dev_rcv_lists* @can_dev_rcv_lists_find(%struct.net* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.can_dev_rcv_lists*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.can_ml_priv*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.can_ml_priv*, %struct.can_ml_priv** %11, align 8
  store %struct.can_ml_priv* %12, %struct.can_ml_priv** %6, align 8
  %13 = load %struct.can_ml_priv*, %struct.can_ml_priv** %6, align 8
  %14 = getelementptr inbounds %struct.can_ml_priv, %struct.can_ml_priv* %13, i32 0, i32 0
  store %struct.can_dev_rcv_lists* %14, %struct.can_dev_rcv_lists** %3, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.can_dev_rcv_lists*, %struct.can_dev_rcv_lists** %18, align 8
  store %struct.can_dev_rcv_lists* %19, %struct.can_dev_rcv_lists** %3, align 8
  br label %20

20:                                               ; preds = %15, %9
  %21 = load %struct.can_dev_rcv_lists*, %struct.can_dev_rcv_lists** %3, align 8
  ret %struct.can_dev_rcv_lists* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

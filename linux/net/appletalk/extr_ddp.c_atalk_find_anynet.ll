; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_find_anynet.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_find_anynet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { %struct.atalk_iface* }

@ATIF_PROBE = common dso_local global i32 0, align 4
@ATADDR_BCAST = common dso_local global i32 0, align 4
@ATADDR_ANYNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atalk_iface* (i32, %struct.net_device*)* @atalk_find_anynet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atalk_iface* @atalk_find_anynet(i32 %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.atalk_iface*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.atalk_iface*, %struct.atalk_iface** %7, align 8
  store %struct.atalk_iface* %8, %struct.atalk_iface** %5, align 8
  %9 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %10 = icmp ne %struct.atalk_iface* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %13 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATIF_PROBE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %2
  br label %38

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ATADDR_BCAST, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %25 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @ATADDR_ANYNODE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %38

35:                                               ; preds = %30, %23, %19
  br label %36

36:                                               ; preds = %38, %35
  %37 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  ret %struct.atalk_iface* %37

38:                                               ; preds = %34, %18
  store %struct.atalk_iface* null, %struct.atalk_iface** %5, align 8
  br label %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

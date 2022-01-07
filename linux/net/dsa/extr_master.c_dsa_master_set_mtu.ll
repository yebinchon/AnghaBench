; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_set_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dsa_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_DATA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to set MTU to include for DSA overheads\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dsa_port*)* @dsa_master_set_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_master_set_mtu(%struct.net_device* %0, %struct.dsa_port* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dsa_port* %1, %struct.dsa_port** %4, align 8
  %7 = load i32, i32* @ETH_DATA_LEN, align 4
  %8 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %9 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %7, %12
  store i32 %13, i32* %5, align 4
  %14 = call i32 (...) @rtnl_lock()
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ule i32 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_set_mtu(%struct.net_device* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netdev_dbg(%struct.net_device* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %2
  %31 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

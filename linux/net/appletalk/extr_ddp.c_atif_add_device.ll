; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atif_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atif_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { %struct.atalk_iface*, i64, %struct.atalk_addr, %struct.net_device* }
%struct.atalk_addr = type { i32 }
%struct.net_device = type { %struct.atalk_iface* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@atalk_interfaces_lock = common dso_local global i32 0, align 4
@atalk_interfaces = common dso_local global %struct.atalk_iface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atalk_iface* (%struct.net_device*, %struct.atalk_addr*)* @atif_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atalk_iface* @atif_add_device(%struct.net_device* %0, %struct.atalk_addr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atalk_addr*, align 8
  %5 = alloca %struct.atalk_iface*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.atalk_addr* %1, %struct.atalk_addr** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.atalk_iface* @kzalloc(i32 32, i32 %6)
  store %struct.atalk_iface* %7, %struct.atalk_iface** %5, align 8
  %8 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %9 = icmp ne %struct.atalk_iface* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @dev_hold(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %16 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %15, i32 0, i32 3
  store %struct.net_device* %14, %struct.net_device** %16, align 8
  %17 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store %struct.atalk_iface* %17, %struct.atalk_iface** %19, align 8
  %20 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %21 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %20, i32 0, i32 2
  %22 = load %struct.atalk_addr*, %struct.atalk_addr** %4, align 8
  %23 = bitcast %struct.atalk_addr* %21 to i8*
  %24 = bitcast %struct.atalk_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %26 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = call i32 @write_lock_bh(i32* @atalk_interfaces_lock)
  %28 = load %struct.atalk_iface*, %struct.atalk_iface** @atalk_interfaces, align 8
  %29 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  %30 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %29, i32 0, i32 0
  store %struct.atalk_iface* %28, %struct.atalk_iface** %30, align 8
  %31 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  store %struct.atalk_iface* %31, %struct.atalk_iface** @atalk_interfaces, align 8
  %32 = call i32 @write_unlock_bh(i32* @atalk_interfaces_lock)
  br label %33

33:                                               ; preds = %11, %10
  %34 = load %struct.atalk_iface*, %struct.atalk_iface** %5, align 8
  ret %struct.atalk_iface* %34
}

declare dso_local %struct.atalk_iface* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

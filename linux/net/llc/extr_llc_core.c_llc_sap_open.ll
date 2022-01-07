; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_core.c_llc_sap_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_core.c_llc_sap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)*, i32, %struct.TYPE_2__ }
%struct.sk_buff = type opaque
%struct.packet_type = type opaque
%struct.net_device = type opaque
%struct.TYPE_2__ = type { i8 }
%struct.sk_buff.0 = type opaque
%struct.packet_type.2 = type opaque
%struct.net_device.1 = type opaque

@llc_sap_list_lock = common dso_local global i32 0, align 4
@llc_sap_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.llc_sap* @llc_sap_open(i8 zeroext %0, i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)*, align 8
  %5 = alloca %struct.llc_sap*, align 8
  store i8 %0, i8* %3, align 1
  store i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)* %1, i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)** %4, align 8
  store %struct.llc_sap* null, %struct.llc_sap** %5, align 8
  %6 = call i32 @spin_lock_bh(i32* @llc_sap_list_lock)
  %7 = load i8, i8* %3, align 1
  %8 = call i64 @__llc_sap_find(i8 zeroext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %28

11:                                               ; preds = %2
  %12 = call %struct.llc_sap* (...) @llc_sap_alloc()
  store %struct.llc_sap* %12, %struct.llc_sap** %5, align 8
  %13 = load %struct.llc_sap*, %struct.llc_sap** %5, align 8
  %14 = icmp ne %struct.llc_sap* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %28

16:                                               ; preds = %11
  %17 = load i8, i8* %3, align 1
  %18 = load %struct.llc_sap*, %struct.llc_sap** %5, align 8
  %19 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8 %17, i8* %20, align 4
  %21 = load i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)*, i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)** %4, align 8
  %22 = bitcast i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)* %21 to i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)*
  %23 = load %struct.llc_sap*, %struct.llc_sap** %5, align 8
  %24 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %23, i32 0, i32 0
  store i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* %22, i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)** %24, align 8
  %25 = load %struct.llc_sap*, %struct.llc_sap** %5, align 8
  %26 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %25, i32 0, i32 1
  %27 = call i32 @list_add_tail_rcu(i32* %26, i32* @llc_sap_list)
  br label %28

28:                                               ; preds = %16, %15, %10
  %29 = call i32 @spin_unlock_bh(i32* @llc_sap_list_lock)
  %30 = load %struct.llc_sap*, %struct.llc_sap** %5, align 8
  ret %struct.llc_sap* %30
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @__llc_sap_find(i8 zeroext) #1

declare dso_local %struct.llc_sap* @llc_sap_alloc(...) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

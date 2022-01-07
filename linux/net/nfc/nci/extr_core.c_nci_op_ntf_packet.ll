; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_op_ntf_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_op_ntf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nci_driver_ops = type { i32 (%struct.nci_dev.0*, %struct.sk_buff*)* }
%struct.nci_dev.0 = type opaque

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, i32, %struct.sk_buff*, %struct.nci_driver_ops*, i64)* @nci_op_ntf_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_op_ntf_packet(%struct.nci_dev* %0, i32 %1, %struct.sk_buff* %2, %struct.nci_driver_ops* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nci_driver_ops*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nci_driver_ops*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %struct.nci_driver_ops* %3, %struct.nci_driver_ops** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.nci_driver_ops*, %struct.nci_driver_ops** %10, align 8
  %14 = load i64, i64* %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.nci_driver_ops* @ops_cmd_lookup(%struct.nci_driver_ops* %13, i64 %14, i32 %15)
  store %struct.nci_driver_ops* %16, %struct.nci_driver_ops** %12, align 8
  %17 = load %struct.nci_driver_ops*, %struct.nci_driver_ops** %12, align 8
  %18 = icmp ne %struct.nci_driver_ops* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.nci_driver_ops*, %struct.nci_driver_ops** %12, align 8
  %21 = getelementptr inbounds %struct.nci_driver_ops, %struct.nci_driver_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.nci_dev.0*, %struct.sk_buff*)*, i32 (%struct.nci_dev.0*, %struct.sk_buff*)** %21, align 8
  %23 = icmp ne i32 (%struct.nci_dev.0*, %struct.sk_buff*)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %5
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %35

27:                                               ; preds = %19
  %28 = load %struct.nci_driver_ops*, %struct.nci_driver_ops** %12, align 8
  %29 = getelementptr inbounds %struct.nci_driver_ops, %struct.nci_driver_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.nci_dev.0*, %struct.sk_buff*)*, i32 (%struct.nci_dev.0*, %struct.sk_buff*)** %29, align 8
  %31 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %32 = bitcast %struct.nci_dev* %31 to %struct.nci_dev.0*
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call i32 %30(%struct.nci_dev.0* %32, %struct.sk_buff* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %27, %24
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.nci_driver_ops* @ops_cmd_lookup(%struct.nci_driver_ops*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

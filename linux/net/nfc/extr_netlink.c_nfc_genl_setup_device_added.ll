; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_setup_device_added.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_setup_device_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@NFC_ATTR_DEVICE_NAME = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_PROTOCOLS = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_POWERED = common dso_local global i32 0, align 4
@NFC_ATTR_RF_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, %struct.sk_buff*)* @nfc_genl_setup_device_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_setup_device_added(%struct.nfc_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %7 = load i32, i32* @NFC_ATTR_DEVICE_NAME, align 4
  %8 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %9 = call i32 @nfc_device_name(%struct.nfc_dev* %8)
  %10 = call i64 @nla_put_string(%struct.sk_buff* %6, i32 %7, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load i32, i32* @NFC_ATTR_DEVICE_INDEX, align 4
  %15 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %16 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @nla_put_u32(%struct.sk_buff* %13, i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %12
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @NFC_ATTR_PROTOCOLS, align 4
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @nla_put_u32(%struct.sk_buff* %21, i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load i32, i32* @NFC_ATTR_DEVICE_POWERED, align 4
  %31 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %32 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @nla_put_u8(%struct.sk_buff* %29, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @NFC_ATTR_RF_MODE, align 4
  %39 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %40 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nla_put_u8(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %28, %20, %12, %2
  store i32 -1, i32* %3, align 4
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nfc_device_name(%struct.nfc_dev*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

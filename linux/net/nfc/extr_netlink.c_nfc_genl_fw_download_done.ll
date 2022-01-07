; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_fw_download_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_fw_download_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfc_genl_family = common dso_local global i32 0, align 4
@NFC_CMD_FW_DOWNLOAD = common dso_local global i32 0, align 4
@NFC_ATTR_FIRMWARE_NAME = common dso_local global i32 0, align 4
@NFC_ATTR_FIRMWARE_DOWNLOAD_STATUS = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_genl_fw_download_done(%struct.nfc_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sk_buff* @nlmsg_new(i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = load i32, i32* @NFC_CMD_FW_DOWNLOAD, align 4
  %21 = call i8* @genlmsg_put(%struct.sk_buff* %19, i32 0, i32 0, i32* @nfc_genl_family, i32 0, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %54

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load i32, i32* @NFC_ATTR_FIRMWARE_NAME, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @nla_put_string(%struct.sk_buff* %26, i32 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* @NFC_ATTR_FIRMWARE_DOWNLOAD_STATUS, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load i32, i32* @NFC_ATTR_DEVICE_INDEX, align 4
  %40 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %41 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_u32(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %31, %25
  br label %53

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @genlmsg_end(%struct.sk_buff* %47, i8* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @genlmsg_multicast(i32* @nfc_genl_family, %struct.sk_buff* %50, i32 0, i32 0, i32 %51)
  store i32 0, i32* %4, align 4
  br label %59

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @nlmsg_free(%struct.sk_buff* %55)
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %46, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

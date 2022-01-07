; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_send_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_send_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfc_llcp_local = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@nfc_genl_family = common dso_local global i32 0, align 4
@NFC_CMD_LLC_GET_PARAMS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_LLC_PARAM_LTO = common dso_local global i32 0, align 4
@NFC_ATTR_LLC_PARAM_RW = common dso_local global i32 0, align 4
@NFC_ATTR_LLC_PARAM_MIUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nfc_llcp_local*, i32, i32)* @nfc_genl_send_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_send_params(%struct.sk_buff* %0, %struct.nfc_llcp_local* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_llcp_local*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nfc_llcp_local* %1, %struct.nfc_llcp_local** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @NFC_CMD_LLC_GET_PARAMS, align 4
  %15 = call i8* @genlmsg_put(%struct.sk_buff* %11, i32 %12, i32 %13, i32* @nfc_genl_family, i32 0, i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EMSGSIZE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %67

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load i32, i32* @NFC_ATTR_DEVICE_INDEX, align 4
  %24 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %25 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @nla_put_u32(%struct.sk_buff* %22, i32 %23, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %21
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* @NFC_ATTR_LLC_PARAM_LTO, align 4
  %34 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %35 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @nla_put_u8(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i32, i32* @NFC_ATTR_LLC_PARAM_RW, align 4
  %42 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %43 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_u8(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i32, i32* @NFC_ATTR_LLC_PARAM_MIUX, align 4
  %50 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %51 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @be16_to_cpu(i32 %52)
  %54 = call i64 @nla_put_u16(%struct.sk_buff* %48, i32 %49, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47, %39, %31, %21
  br label %61

57:                                               ; preds = %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @genlmsg_end(%struct.sk_buff* %58, i8* %59)
  store i32 0, i32* %5, align 4
  br label %67

61:                                               ; preds = %56
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @genlmsg_cancel(%struct.sk_buff* %62, i8* %63)
  %65 = load i32, i32* @EMSGSIZE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %57, %18
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

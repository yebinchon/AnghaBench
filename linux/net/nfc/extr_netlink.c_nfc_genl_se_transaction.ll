; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_se_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_se_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32 }
%struct.nfc_evt_transaction = type { i32, i32, i32, i32 }
%struct.nfc_se = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfc_genl_family = common dso_local global i32 0, align 4
@NFC_EVENT_SE_TRANSACTION = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_SE_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_SE_TYPE = common dso_local global i32 0, align 4
@NFC_ATTR_SE_AID = common dso_local global i32 0, align 4
@NFC_ATTR_SE_PARAMS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_genl_se_transaction(%struct.nfc_dev* %0, i32 %1, %struct.nfc_evt_transaction* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_evt_transaction*, align 8
  %8 = alloca %struct.nfc_se*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfc_evt_transaction* %2, %struct.nfc_evt_transaction** %7, align 8
  %11 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sk_buff* @nlmsg_new(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %99

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = load i32, i32* @NFC_EVENT_SE_TRANSACTION, align 4
  %22 = call i8* @genlmsg_put(%struct.sk_buff* %20, i32 0, i32 0, i32* @nfc_genl_family, i32 0, i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %90

26:                                               ; preds = %19
  %27 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.nfc_se* @nfc_find_se(%struct.nfc_dev* %27, i32 %28)
  store %struct.nfc_se* %29, %struct.nfc_se** %8, align 8
  %30 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %31 = icmp ne %struct.nfc_se* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %90

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = load i32, i32* @NFC_ATTR_DEVICE_INDEX, align 4
  %36 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %37 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @nla_put_u32(%struct.sk_buff* %34, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load i32, i32* @NFC_ATTR_SE_INDEX, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @nla_put_u32(%struct.sk_buff* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %77, label %47

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = load i32, i32* @NFC_ATTR_SE_TYPE, align 4
  %50 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %51 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u8(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %47
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = load i32, i32* @NFC_ATTR_SE_AID, align 4
  %58 = load %struct.nfc_evt_transaction*, %struct.nfc_evt_transaction** %7, align 8
  %59 = getelementptr inbounds %struct.nfc_evt_transaction, %struct.nfc_evt_transaction* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nfc_evt_transaction*, %struct.nfc_evt_transaction** %7, align 8
  %62 = getelementptr inbounds %struct.nfc_evt_transaction, %struct.nfc_evt_transaction* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @nla_put(%struct.sk_buff* %56, i32 %57, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %55
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = load i32, i32* @NFC_ATTR_SE_PARAMS, align 4
  %69 = load %struct.nfc_evt_transaction*, %struct.nfc_evt_transaction** %7, align 8
  %70 = getelementptr inbounds %struct.nfc_evt_transaction, %struct.nfc_evt_transaction* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nfc_evt_transaction*, %struct.nfc_evt_transaction** %7, align 8
  %73 = getelementptr inbounds %struct.nfc_evt_transaction, %struct.nfc_evt_transaction* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @nla_put(%struct.sk_buff* %67, i32 %68, i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66, %55, %47, %41, %33
  br label %89

78:                                               ; preds = %66
  %79 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %80 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %79, i32 0, i32 0
  %81 = load %struct.nfc_evt_transaction*, %struct.nfc_evt_transaction** %7, align 8
  %82 = call i32 @devm_kfree(i32* %80, %struct.nfc_evt_transaction* %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @genlmsg_end(%struct.sk_buff* %83, i8* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i32 @genlmsg_multicast(i32* @nfc_genl_family, %struct.sk_buff* %86, i32 0, i32 0, i32 %87)
  store i32 0, i32* %4, align 4
  br label %99

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %32, %25
  %91 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %92 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %91, i32 0, i32 0
  %93 = load %struct.nfc_evt_transaction*, %struct.nfc_evt_transaction** %7, align 8
  %94 = call i32 @devm_kfree(i32* %92, %struct.nfc_evt_transaction* %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = call i32 @nlmsg_free(%struct.sk_buff* %95)
  %97 = load i32, i32* @EMSGSIZE, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %90, %78, %16
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nfc_se* @nfc_find_se(%struct.nfc_dev*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.nfc_evt_transaction*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

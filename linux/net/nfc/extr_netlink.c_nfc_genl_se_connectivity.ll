; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_se_connectivity.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_se_connectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_se = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfc_genl_family = common dso_local global i32 0, align 4
@NFC_EVENT_SE_CONNECTIVITY = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_SE_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_SE_TYPE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_genl_se_connectivity(%struct.nfc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_se*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sk_buff* @nlmsg_new(i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load i32, i32* @NFC_EVENT_SE_CONNECTIVITY, align 4
  %20 = call i8* @genlmsg_put(%struct.sk_buff* %18, i32 0, i32 0, i32* @nfc_genl_family, i32 0, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %62

24:                                               ; preds = %17
  %25 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.nfc_se* @nfc_find_se(%struct.nfc_dev* %25, i32 %26)
  store %struct.nfc_se* %27, %struct.nfc_se** %6, align 8
  %28 = load %struct.nfc_se*, %struct.nfc_se** %6, align 8
  %29 = icmp ne %struct.nfc_se* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %62

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load i32, i32* @NFC_ATTR_DEVICE_INDEX, align 4
  %34 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %35 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* @NFC_ATTR_SE_INDEX, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @nla_put_u32(%struct.sk_buff* %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load i32, i32* @NFC_ATTR_SE_TYPE, align 4
  %48 = load %struct.nfc_se*, %struct.nfc_se** %6, align 8
  %49 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_u8(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %39, %31
  br label %61

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @genlmsg_end(%struct.sk_buff* %55, i8* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @genlmsg_multicast(i32* @nfc_genl_family, %struct.sk_buff* %58, i32 0, i32 0, i32 %59)
  store i32 0, i32* %3, align 4
  br label %67

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %30, %23
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i32 @nlmsg_free(%struct.sk_buff* %63)
  %65 = load i32, i32* @EMSGSIZE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %54, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nfc_se* @nfc_find_se(%struct.nfc_dev*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

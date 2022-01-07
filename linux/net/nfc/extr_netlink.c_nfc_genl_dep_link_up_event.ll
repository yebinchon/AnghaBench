; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dep_link_up_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dep_link_up_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"DEP link is up\0A\00", align 1
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfc_genl_family = common dso_local global i32 0, align 4
@NFC_CMD_DEP_LINK_UP = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i64 0, align 8
@NFC_ATTR_TARGET_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_COMM_MODE = common dso_local global i32 0, align 4
@NFC_ATTR_RF_MODE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_genl_dep_link_up_event(%struct.nfc_dev* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @nlmsg_new(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %76

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = load i32, i32* @NFC_CMD_DEP_LINK_UP, align 4
  %24 = call i8* @genlmsg_put(%struct.sk_buff* %22, i32 0, i32 0, i32* @nfc_genl_family, i32 0, i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %71

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = load i32, i32* @NFC_ATTR_DEVICE_INDEX, align 4
  %31 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %32 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @nla_put_u32(%struct.sk_buff* %29, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %70

37:                                               ; preds = %28
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @NFC_RF_INITIATOR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = load i32, i32* @NFC_ATTR_TARGET_INDEX, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @nla_put_u32(%struct.sk_buff* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %70

48:                                               ; preds = %41, %37
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = load i32, i32* @NFC_ATTR_COMM_MODE, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @nla_put_u8(%struct.sk_buff* %49, i32 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = load i32, i32* @NFC_ATTR_RF_MODE, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @nla_put_u8(%struct.sk_buff* %55, i32 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %48
  br label %70

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @genlmsg_end(%struct.sk_buff* %62, i8* %63)
  %65 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %66 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call i32 @genlmsg_multicast(i32* @nfc_genl_family, %struct.sk_buff* %67, i32 0, i32 0, i32 %68)
  store i32 0, i32* %5, align 4
  br label %76

70:                                               ; preds = %60, %47, %36
  br label %71

71:                                               ; preds = %70, %27
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = call i32 @nlmsg_free(%struct.sk_buff* %72)
  %74 = load i32, i32* @EMSGSIZE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %61, %18
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

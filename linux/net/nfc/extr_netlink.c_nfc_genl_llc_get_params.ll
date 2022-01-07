; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_llc_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_llc_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32* }
%struct.nfc_dev = type { i32 }
%struct.nfc_llcp_local = type { i32 }

@NFC_ATTR_DEVICE_INDEX = common dso_local global i64 0, align 8
@NFC_ATTR_FIRMWARE_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nfc_genl_llc_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_llc_get_params(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca %struct.nfc_llcp_local*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i32 0, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @NFC_ATTR_FIRMWARE_NAME, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %94

29:                                               ; preds = %18
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nla_get_u32(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.nfc_dev* @nfc_get_device(i32 %37)
  store %struct.nfc_dev* %38, %struct.nfc_dev** %6, align 8
  %39 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %40 = icmp ne %struct.nfc_dev* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %94

44:                                               ; preds = %29
  %45 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %46 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %45, i32 0, i32 0
  %47 = call i32 @device_lock(i32* %46)
  %48 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %49 = call %struct.nfc_llcp_local* @nfc_llcp_find_local(%struct.nfc_dev* %48)
  store %struct.nfc_llcp_local* %49, %struct.nfc_llcp_local** %7, align 8
  %50 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %51 = icmp ne %struct.nfc_llcp_local* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %74

55:                                               ; preds = %44
  %56 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.sk_buff* @nlmsg_new(i32 %56, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %9, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %74

64:                                               ; preds = %55
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @nfc_genl_send_params(%struct.sk_buff* %65, %struct.nfc_llcp_local* %66, i32 %69, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %64, %61, %52
  %75 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %76 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %75, i32 0, i32 0
  %77 = call i32 @device_unlock(i32* %76)
  %78 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %79 = call i32 @nfc_put_device(%struct.nfc_dev* %78)
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = call i32 @nlmsg_free(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %94

90:                                               ; preds = %74
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %93 = call i32 @genlmsg_reply(%struct.sk_buff* %91, %struct.genl_info* %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %88, %41, %26
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.nfc_dev* @nfc_get_device(i32) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local %struct.nfc_llcp_local* @nfc_llcp_find_local(%struct.nfc_dev*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nfc_genl_send_params(%struct.sk_buff*, %struct.nfc_llcp_local*, i32, i32) #1

declare dso_local i32 @device_unlock(i32*) #1

declare dso_local i32 @nfc_put_device(%struct.nfc_dev*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

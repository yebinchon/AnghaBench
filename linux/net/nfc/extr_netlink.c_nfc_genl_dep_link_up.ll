; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dep_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dep_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.nfc_dev = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"DEP link up\0A\00", align 1
@NFC_ATTR_DEVICE_INDEX = common dso_local global i64 0, align 8
@NFC_ATTR_COMM_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFC_ATTR_TARGET_INDEX = common dso_local global i64 0, align 8
@NFC_TARGET_IDX_ANY = common dso_local global i32 0, align 4
@NFC_COMM_ACTIVE = common dso_local global i64 0, align 8
@NFC_COMM_PASSIVE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nfc_genl_dep_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_dep_link_up(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @NFC_ATTR_COMM_MODE, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %90

30:                                               ; preds = %19
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @nla_get_u32(i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @NFC_ATTR_TARGET_INDEX, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %30
  %46 = load i32, i32* @NFC_TARGET_IDX_ANY, align 4
  store i32 %46, i32* %8, align 4
  br label %56

47:                                               ; preds = %30
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @NFC_ATTR_TARGET_INDEX, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @nla_get_u32(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %47, %45
  %57 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %58 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @NFC_ATTR_COMM_MODE, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @nla_get_u8(i32 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @NFC_COMM_ACTIVE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @NFC_COMM_PASSIVE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %90

74:                                               ; preds = %67, %56
  %75 = load i8*, i8** %9, align 8
  %76 = call %struct.nfc_dev* @nfc_get_device(i8* %75)
  store %struct.nfc_dev* %76, %struct.nfc_dev** %6, align 8
  %77 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %78 = icmp ne %struct.nfc_dev* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %90

82:                                               ; preds = %74
  %83 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @nfc_dep_link_up(%struct.nfc_dev* %83, i32 %84, i64 %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %88 = call i32 @nfc_put_device(%struct.nfc_dev* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %82, %79, %71, %27
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @nla_get_u32(i32) #1

declare dso_local i64 @nla_get_u8(i32) #1

declare dso_local %struct.nfc_dev* @nfc_get_device(i8*) #1

declare dso_local i32 @nfc_dep_link_up(%struct.nfc_dev*, i32, i64) #1

declare dso_local i32 @nfc_put_device(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

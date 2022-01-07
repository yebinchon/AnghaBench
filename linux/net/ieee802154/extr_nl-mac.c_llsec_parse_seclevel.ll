; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_parse_seclevel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_llsec_parse_seclevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32* }
%struct.ieee802154_llsec_seclevel = type { i64, i8*, i8*, i8* }

@IEEE802154_ATTR_LLSEC_FRAME_TYPE = common dso_local global i64 0, align 8
@IEEE802154_ATTR_LLSEC_SECLEVELS = common dso_local global i64 0, align 8
@IEEE802154_ATTR_LLSEC_DEV_OVERRIDE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_FC_TYPE_MAC_CMD = common dso_local global i64 0, align 8
@IEEE802154_ATTR_LLSEC_CMD_FRAME_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.ieee802154_llsec_seclevel*)* @llsec_parse_seclevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_parse_seclevel(%struct.genl_info* %0, %struct.ieee802154_llsec_seclevel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.ieee802154_llsec_seclevel*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.ieee802154_llsec_seclevel* %1, %struct.ieee802154_llsec_seclevel** %5, align 8
  %6 = load %struct.ieee802154_llsec_seclevel*, %struct.ieee802154_llsec_seclevel** %5, align 8
  %7 = call i32 @memset(%struct.ieee802154_llsec_seclevel* %6, i32 0, i32 32)
  %8 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @IEEE802154_ATTR_LLSEC_FRAME_TYPE, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @IEEE802154_ATTR_LLSEC_SECLEVELS, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @IEEE802154_ATTR_LLSEC_DEV_OVERRIDE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23, %15, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %90

34:                                               ; preds = %23
  %35 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @IEEE802154_ATTR_LLSEC_FRAME_TYPE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @nla_get_u8(i32 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.ieee802154_llsec_seclevel*, %struct.ieee802154_llsec_seclevel** %5, align 8
  %44 = getelementptr inbounds %struct.ieee802154_llsec_seclevel, %struct.ieee802154_llsec_seclevel* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ieee802154_llsec_seclevel*, %struct.ieee802154_llsec_seclevel** %5, align 8
  %46 = getelementptr inbounds %struct.ieee802154_llsec_seclevel, %struct.ieee802154_llsec_seclevel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IEEE802154_FC_TYPE_MAC_CMD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %34
  %51 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @IEEE802154_ATTR_LLSEC_CMD_FRAME_ID, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %90

61:                                               ; preds = %50
  %62 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %63 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @IEEE802154_ATTR_LLSEC_CMD_FRAME_ID, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @nla_get_u8(i32 %67)
  %69 = load %struct.ieee802154_llsec_seclevel*, %struct.ieee802154_llsec_seclevel** %5, align 8
  %70 = getelementptr inbounds %struct.ieee802154_llsec_seclevel, %struct.ieee802154_llsec_seclevel* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %61, %34
  %72 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %73 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @IEEE802154_ATTR_LLSEC_SECLEVELS, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @nla_get_u8(i32 %77)
  %79 = load %struct.ieee802154_llsec_seclevel*, %struct.ieee802154_llsec_seclevel** %5, align 8
  %80 = getelementptr inbounds %struct.ieee802154_llsec_seclevel, %struct.ieee802154_llsec_seclevel* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %82 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @IEEE802154_ATTR_LLSEC_DEV_OVERRIDE, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @nla_get_u8(i32 %86)
  %88 = load %struct.ieee802154_llsec_seclevel*, %struct.ieee802154_llsec_seclevel** %5, align 8
  %89 = getelementptr inbounds %struct.ieee802154_llsec_seclevel, %struct.ieee802154_llsec_seclevel* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %71, %58, %31
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @memset(%struct.ieee802154_llsec_seclevel*, i32, i32) #1

declare dso_local i8* @nla_get_u8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

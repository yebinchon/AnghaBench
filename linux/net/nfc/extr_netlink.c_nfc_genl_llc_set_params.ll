; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_llc_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_llc_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.nfc_dev = type { i32, i64 }
%struct.nfc_llcp_local = type { i32, i64, i8* }

@NFC_ATTR_DEVICE_INDEX = common dso_local global i64 0, align 8
@NFC_ATTR_LLC_PARAM_LTO = common dso_local global i64 0, align 8
@NFC_ATTR_LLC_PARAM_RW = common dso_local global i64 0, align 8
@NFC_ATTR_LLC_PARAM_MIUX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LLCP_MAX_RW = common dso_local global i64 0, align 8
@LLCP_MAX_MIUX = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nfc_genl_llc_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_llc_set_params(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca %struct.nfc_llcp_local*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @NFC_ATTR_LLC_PARAM_LTO, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %19
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @NFC_ATTR_LLC_PARAM_RW, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @NFC_ATTR_LLC_PARAM_MIUX, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35, %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %178

46:                                               ; preds = %35, %27, %19
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NFC_ATTR_LLC_PARAM_RW, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @NFC_ATTR_LLC_PARAM_RW, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @nla_get_u8(i64 %60)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @LLCP_MAX_RW, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %178

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %72 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @NFC_ATTR_LLC_PARAM_MIUX, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %80 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @NFC_ATTR_LLC_PARAM_MIUX, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @nla_get_u16(i64 %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @LLCP_MAX_MIUX, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %178

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %70
  %94 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %95 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @nla_get_u32(i64 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call %struct.nfc_dev* @nfc_get_device(i32 %101)
  store %struct.nfc_dev* %102, %struct.nfc_dev** %6, align 8
  %103 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %104 = icmp ne %struct.nfc_dev* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %93
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %178

108:                                              ; preds = %93
  %109 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %110 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %109, i32 0, i32 0
  %111 = call i32 @device_lock(i32* %110)
  %112 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %113 = call %struct.nfc_llcp_local* @nfc_llcp_find_local(%struct.nfc_dev* %112)
  store %struct.nfc_llcp_local* %113, %struct.nfc_llcp_local** %7, align 8
  %114 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %115 = icmp ne %struct.nfc_llcp_local* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %11, align 4
  br label %171

119:                                              ; preds = %108
  %120 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %121 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @NFC_ATTR_LLC_PARAM_LTO, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %119
  %128 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %129 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @EINPROGRESS, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %11, align 4
  br label %171

135:                                              ; preds = %127
  %136 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %137 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @NFC_ATTR_LLC_PARAM_LTO, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i8* @nla_get_u8(i64 %141)
  %143 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %144 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %135, %119
  %146 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %147 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* @NFC_ATTR_LLC_PARAM_RW, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i64, i64* %8, align 8
  %155 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %156 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %145
  %158 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %159 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* @NFC_ATTR_LLC_PARAM_MIUX, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load i64, i64* %9, align 8
  %167 = call i32 @cpu_to_be16(i64 %166)
  %168 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %7, align 8
  %169 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %165, %157
  br label %171

171:                                              ; preds = %170, %132, %116
  %172 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %173 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %172, i32 0, i32 0
  %174 = call i32 @device_unlock(i32* %173)
  %175 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %176 = call i32 @nfc_put_device(%struct.nfc_dev* %175)
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %171, %105, %89, %66, %43
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i64 @nla_get_u16(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local %struct.nfc_dev* @nfc_get_device(i32) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local %struct.nfc_llcp_local* @nfc_llcp_find_local(%struct.nfc_dev*) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @device_unlock(i32*) #1

declare dso_local i32 @nfc_put_device(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_vendor_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_vendor_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.nfc_dev = type { i32, %struct.genl_info*, %struct.nfc_vendor_cmd* }
%struct.nfc_vendor_cmd = type { i64, i64, i32 (%struct.nfc_dev.0*, i32*, i64)* }
%struct.nfc_dev.0 = type opaque

@NFC_ATTR_DEVICE_INDEX = common dso_local global i64 0, align 8
@NFC_ATTR_VENDOR_ID = common dso_local global i64 0, align 8
@NFC_ATTR_VENDOR_SUBCMD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NFC_ATTR_VENDOR_DATA = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nfc_genl_vendor_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_vendor_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca %struct.nfc_vendor_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @NFC_ATTR_VENDOR_ID, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @NFC_ATTR_VENDOR_SUBCMD, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30, %22, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %157

41:                                               ; preds = %30
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @nla_get_u32(i64 %47)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %50 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @NFC_ATTR_VENDOR_ID, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @nla_get_u32(i64 %54)
  store i64 %55, i64* %9, align 8
  %56 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @NFC_ATTR_VENDOR_SUBCMD, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @nla_get_u32(i64 %61)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call %struct.nfc_dev* @nfc_get_device(i64 %63)
  store %struct.nfc_dev* %64, %struct.nfc_dev** %6, align 8
  %65 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %66 = icmp ne %struct.nfc_dev* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %41
  %68 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %69 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %68, i32 0, i32 2
  %70 = load %struct.nfc_vendor_cmd*, %struct.nfc_vendor_cmd** %69, align 8
  %71 = icmp ne %struct.nfc_vendor_cmd* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %74 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72, %67, %41
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %157

80:                                               ; preds = %72
  %81 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %82 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @NFC_ATTR_VENDOR_DATA, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %80
  %89 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %90 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* @NFC_ATTR_VENDOR_DATA, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32* @nla_data(i64 %94)
  store i32* %95, i32** %11, align 8
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @NFC_ATTR_VENDOR_DATA, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @nla_len(i64 %101)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %88
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %157

108:                                              ; preds = %88
  br label %110

109:                                              ; preds = %80
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  br label %110

110:                                              ; preds = %109, %108
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %151, %110
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %114 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %154

117:                                              ; preds = %111
  %118 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %119 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %118, i32 0, i32 2
  %120 = load %struct.nfc_vendor_cmd*, %struct.nfc_vendor_cmd** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.nfc_vendor_cmd, %struct.nfc_vendor_cmd* %120, i64 %122
  store %struct.nfc_vendor_cmd* %123, %struct.nfc_vendor_cmd** %7, align 8
  %124 = load %struct.nfc_vendor_cmd*, %struct.nfc_vendor_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.nfc_vendor_cmd, %struct.nfc_vendor_cmd* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %117
  %130 = load %struct.nfc_vendor_cmd*, %struct.nfc_vendor_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.nfc_vendor_cmd, %struct.nfc_vendor_cmd* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %117
  br label %151

136:                                              ; preds = %129
  %137 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %138 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %139 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %138, i32 0, i32 1
  store %struct.genl_info* %137, %struct.genl_info** %139, align 8
  %140 = load %struct.nfc_vendor_cmd*, %struct.nfc_vendor_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.nfc_vendor_cmd, %struct.nfc_vendor_cmd* %140, i32 0, i32 2
  %142 = load i32 (%struct.nfc_dev.0*, i32*, i64)*, i32 (%struct.nfc_dev.0*, i32*, i64)** %141, align 8
  %143 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %144 = bitcast %struct.nfc_dev* %143 to %struct.nfc_dev.0*
  %145 = load i32*, i32** %11, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i32 %142(%struct.nfc_dev.0* %144, i32* %145, i64 %146)
  store i32 %147, i32* %14, align 4
  %148 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %149 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %148, i32 0, i32 1
  store %struct.genl_info* null, %struct.genl_info** %149, align 8
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %3, align 4
  br label %157

151:                                              ; preds = %135
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %111

154:                                              ; preds = %111
  %155 = load i32, i32* @EOPNOTSUPP, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %154, %136, %105, %77, %38
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @nla_get_u32(i64) #1

declare dso_local %struct.nfc_dev* @nfc_get_device(i64) #1

declare dso_local i32* @nla_data(i64) #1

declare dso_local i64 @nla_len(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

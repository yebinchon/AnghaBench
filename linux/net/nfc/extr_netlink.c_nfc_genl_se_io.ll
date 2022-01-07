; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_se_io.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_se_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.nfc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.se_io_ctx = type { i8*, i8* }

@NFC_ATTR_DEVICE_INDEX = common dso_local global i64 0, align 8
@NFC_ATTR_SE_INDEX = common dso_local global i64 0, align 8
@NFC_ATTR_SE_APDU = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@se_io_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nfc_genl_se_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_se_io(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca %struct.se_io_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @NFC_ATTR_SE_INDEX, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @NFC_ATTR_SE_APDU, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27, %19, %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %123

38:                                               ; preds = %27
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @nla_get_u32(i32 %44)
  store i8* %45, i8** %8, align 8
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @NFC_ATTR_SE_INDEX, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @nla_get_u32(i32 %51)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call %struct.nfc_dev* @nfc_get_device(i8* %53)
  store %struct.nfc_dev* %54, %struct.nfc_dev** %6, align 8
  %55 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %56 = icmp ne %struct.nfc_dev* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %38
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %123

60:                                               ; preds = %38
  %61 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %62 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %67 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65, %60
  %73 = load i32, i32* @ENOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %123

75:                                               ; preds = %65
  %76 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %77 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @NFC_ATTR_SE_APDU, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @nla_len(i32 %81)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %123

88:                                               ; preds = %75
  %89 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %90 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @NFC_ATTR_SE_APDU, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32* @nla_data(i32 %94)
  store i32* %95, i32** %10, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %123

101:                                              ; preds = %88
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.se_io_ctx* @kzalloc(i32 16, i32 %102)
  store %struct.se_io_ctx* %103, %struct.se_io_ctx** %7, align 8
  %104 = load %struct.se_io_ctx*, %struct.se_io_ctx** %7, align 8
  %105 = icmp ne %struct.se_io_ctx* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %123

109:                                              ; preds = %101
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.se_io_ctx*, %struct.se_io_ctx** %7, align 8
  %112 = getelementptr inbounds %struct.se_io_ctx, %struct.se_io_ctx* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load %struct.se_io_ctx*, %struct.se_io_ctx** %7, align 8
  %115 = getelementptr inbounds %struct.se_io_ctx, %struct.se_io_ctx* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i32, i32* @se_io_cb, align 4
  %121 = load %struct.se_io_ctx*, %struct.se_io_ctx** %7, align 8
  %122 = call i32 @nfc_se_io(%struct.nfc_dev* %116, i8* %117, i32* %118, i64 %119, i32 %120, %struct.se_io_ctx* %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %109, %106, %98, %85, %72, %57, %35
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i8* @nla_get_u32(i32) #1

declare dso_local %struct.nfc_dev* @nfc_get_device(i8*) #1

declare dso_local i64 @nla_len(i32) #1

declare dso_local i32* @nla_data(i32) #1

declare dso_local %struct.se_io_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @nfc_se_io(%struct.nfc_dev*, i8*, i32*, i64, i32, %struct.se_io_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

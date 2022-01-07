; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_build_gb.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_build_gb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i64, i64, i64*, i32, i32 }

@LLCP_VERSION_11 = common dso_local global i64 0, align 8
@LLCP_TLV_VERSION = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LLCP_TLV_LTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Local wks 0x%lx\0A\00", align 1
@LLCP_TLV_WKS = common dso_local global i32 0, align 4
@LLCP_TLV_MIUX = common dso_local global i32 0, align 4
@llcp_magic = common dso_local global i64* null, align 8
@NFC_MAX_GT_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_llcp_local*)* @nfc_llcp_build_gb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_llcp_build_gb(%struct.nfc_llcp_local* %0) #0 {
  %2 = alloca %struct.nfc_llcp_local*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %2, align 8
  store i64* null, i64** %9, align 8
  store i64* null, i64** %10, align 8
  store i64* null, i64** %11, align 8
  store i64* null, i64** %12, align 8
  %16 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %2, align 8
  %17 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cpu_to_be16(i32 %18)
  store i32 %19, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load i64, i64* @LLCP_VERSION_11, align 8
  store i64 %20, i64* %4, align 8
  %21 = load i32, i32* @LLCP_TLV_VERSION, align 4
  %22 = call i64* @nfc_llcp_build_tlv(i32 %21, i64* %4, i32 1, i64* %5)
  store i64* %22, i64** %9, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %15, align 4
  br label %129

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %14, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %14, align 8
  %32 = load i32, i32* @LLCP_TLV_LTO, align 4
  %33 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %2, align 8
  %34 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %33, i32 0, i32 0
  %35 = call i64* @nfc_llcp_build_tlv(i32 %32, i64* %34, i32 1, i64* %6)
  store i64* %35, i64** %10, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  br label %129

41:                                               ; preds = %28
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %14, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %14, align 8
  %45 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %2, align 8
  %46 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @LLCP_TLV_WKS, align 4
  %50 = bitcast i32* %13 to i64*
  %51 = call i64* @nfc_llcp_build_tlv(i32 %49, i64* %50, i32 2, i64* %7)
  store i64* %51, i64** %11, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %15, align 4
  br label %129

57:                                               ; preds = %41
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %14, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %14, align 8
  %61 = load i32, i32* @LLCP_TLV_MIUX, align 4
  %62 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %2, align 8
  %63 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %62, i32 0, i32 3
  %64 = bitcast i32* %63 to i64*
  %65 = call i64* @nfc_llcp_build_tlv(i32 %61, i64* %64, i32 0, i64* %8)
  store i64* %65, i64** %12, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  br label %129

71:                                               ; preds = %57
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %14, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %14, align 8
  %75 = load i64*, i64** @llcp_magic, align 8
  %76 = call i64 @ARRAY_SIZE(i64* %75)
  %77 = load i64, i64* %14, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* @NFC_MAX_GT_LEN, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %15, align 4
  br label %129

85:                                               ; preds = %71
  %86 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %2, align 8
  %87 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  store i64* %88, i64** %3, align 8
  %89 = load i64*, i64** %3, align 8
  %90 = load i64*, i64** @llcp_magic, align 8
  %91 = load i64*, i64** @llcp_magic, align 8
  %92 = call i64 @ARRAY_SIZE(i64* %91)
  %93 = call i32 @memcpy(i64* %89, i64* %90, i64 %92)
  %94 = load i64*, i64** @llcp_magic, align 8
  %95 = call i64 @ARRAY_SIZE(i64* %94)
  %96 = load i64*, i64** %3, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 %95
  store i64* %97, i64** %3, align 8
  %98 = load i64*, i64** %3, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @memcpy(i64* %98, i64* %99, i64 %100)
  %102 = load i64, i64* %5, align 8
  %103 = load i64*, i64** %3, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 %102
  store i64* %104, i64** %3, align 8
  %105 = load i64*, i64** %3, align 8
  %106 = load i64*, i64** %10, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @memcpy(i64* %105, i64* %106, i64 %107)
  %109 = load i64, i64* %6, align 8
  %110 = load i64*, i64** %3, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 %109
  store i64* %111, i64** %3, align 8
  %112 = load i64*, i64** %3, align 8
  %113 = load i64*, i64** %11, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @memcpy(i64* %112, i64* %113, i64 %114)
  %116 = load i64, i64* %7, align 8
  %117 = load i64*, i64** %3, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 %116
  store i64* %118, i64** %3, align 8
  %119 = load i64*, i64** %3, align 8
  %120 = load i64*, i64** %12, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @memcpy(i64* %119, i64* %120, i64 %121)
  %123 = load i64, i64* %8, align 8
  %124 = load i64*, i64** %3, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 %123
  store i64* %125, i64** %3, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %2, align 8
  %128 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %85, %82, %68, %54, %38, %25
  %130 = load i64*, i64** %9, align 8
  %131 = call i32 @kfree(i64* %130)
  %132 = load i64*, i64** %10, align 8
  %133 = call i32 @kfree(i64* %132)
  %134 = load i64*, i64** %11, align 8
  %135 = call i32 @kfree(i64* %134)
  %136 = load i64*, i64** %12, align 8
  %137 = call i32 @kfree(i64* %136)
  %138 = load i32, i32* %15, align 4
  ret i32 %138
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64* @nfc_llcp_build_tlv(i32, i64*, i32, i64*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_parse_fw_image.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_parse_fw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_fw = type { i64, i64, %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }
%struct.fw_header = type { i64, i32, i32, i32 }
%struct.sst_byt_fw_module_header = type { i32 }

@SST_BYT_FW_SIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid FW sign/filesize mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"header sign=%4s size=0x%x modules=0x%x fmt=0x%x size=%zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid module %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_fw*)* @sst_byt_parse_fw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_parse_fw_image(%struct.sst_fw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_fw*, align 8
  %4 = alloca %struct.fw_header*, align 8
  %5 = alloca %struct.sst_byt_fw_module_header*, align 8
  %6 = alloca %struct.sst_dsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sst_fw* %0, %struct.sst_fw** %3, align 8
  %9 = load %struct.sst_fw*, %struct.sst_fw** %3, align 8
  %10 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %9, i32 0, i32 2
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %10, align 8
  store %struct.sst_dsp* %11, %struct.sst_dsp** %6, align 8
  %12 = load %struct.sst_fw*, %struct.sst_fw** %3, align 8
  %13 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.fw_header*
  store %struct.fw_header* %15, %struct.fw_header** %4, align 8
  %16 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %17 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SST_BYT_FW_SIGN, align 4
  %20 = call i64 @strncmp(i32 %18, i32 %19, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %1
  %23 = load %struct.sst_fw*, %struct.sst_fw** %3, align 8
  %24 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %27 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 24
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22, %1
  %32 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %33 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %95

38:                                               ; preds = %22
  %39 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %40 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %43 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %46 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %49 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %52 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %44, i64 %47, i32 %50, i32 %53, i32 24)
  %55 = load %struct.sst_fw*, %struct.sst_fw** %3, align 8
  %56 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr i8, i8* %58, i64 24
  %60 = bitcast i8* %59 to %struct.sst_byt_fw_module_header*
  store %struct.sst_byt_fw_module_header* %60, %struct.sst_byt_fw_module_header** %5, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %91, %38
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %64 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %61
  %68 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %69 = load %struct.sst_fw*, %struct.sst_fw** %3, align 8
  %70 = load %struct.sst_byt_fw_module_header*, %struct.sst_byt_fw_module_header** %5, align 8
  %71 = call i32 @sst_byt_parse_module(%struct.sst_dsp* %68, %struct.sst_fw* %69, %struct.sst_byt_fw_module_header* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %76 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %95

81:                                               ; preds = %67
  %82 = load %struct.sst_byt_fw_module_header*, %struct.sst_byt_fw_module_header** %5, align 8
  %83 = bitcast %struct.sst_byt_fw_module_header* %82 to i8*
  %84 = getelementptr i8, i8* %83, i64 4
  %85 = load %struct.sst_byt_fw_module_header*, %struct.sst_byt_fw_module_header** %5, align 8
  %86 = getelementptr inbounds %struct.sst_byt_fw_module_header, %struct.sst_byt_fw_module_header* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %84, i64 %88
  %90 = bitcast i8* %89 to %struct.sst_byt_fw_module_header*
  store %struct.sst_byt_fw_module_header* %90, %struct.sst_byt_fw_module_header** %5, align 8
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %61

94:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %74, %31
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @sst_byt_parse_module(%struct.sst_dsp*, %struct.sst_fw*, %struct.sst_byt_fw_module_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

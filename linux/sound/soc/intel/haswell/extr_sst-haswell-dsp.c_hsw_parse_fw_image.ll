; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_parse_fw_image.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_parse_fw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_fw = type { i32, i64, %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }
%struct.fw_header = type { i32, i32, i32, i32 }
%struct.fw_module_header = type { i32 }

@SST_HSW_FW_SIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"error: invalid fw sign/filesize mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"header size=0x%x modules=0x%x fmt=0x%x size=%zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error: invalid module %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_fw*)* @hsw_parse_fw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_parse_fw_image(%struct.sst_fw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_fw*, align 8
  %4 = alloca %struct.fw_header*, align 8
  %5 = alloca %struct.fw_module_header*, align 8
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
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SST_HSW_FW_SIGN, align 4
  %20 = call i64 @strncmp(i32 %18, i32 %19, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %1
  %23 = load %struct.sst_fw*, %struct.sst_fw** %3, align 8
  %24 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %28 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 16
  %33 = icmp ne i64 %26, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %22, %1
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %36 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %97

41:                                               ; preds = %22
  %42 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %43 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %46 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %49 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %52 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i32 16)
  %55 = load %struct.sst_fw*, %struct.sst_fw** %3, align 8
  %56 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr i8, i8* %58, i64 16
  %60 = bitcast i8* %59 to %struct.fw_module_header*
  store %struct.fw_module_header* %60, %struct.fw_module_header** %5, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %93, %41
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.fw_header*, %struct.fw_header** %4, align 8
  %64 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %61
  %69 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %70 = load %struct.sst_fw*, %struct.sst_fw** %3, align 8
  %71 = load %struct.fw_module_header*, %struct.fw_module_header** %5, align 8
  %72 = call i32 @hsw_parse_module(%struct.sst_dsp* %69, %struct.sst_fw* %70, %struct.fw_module_header* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %77 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %97

82:                                               ; preds = %68
  %83 = load %struct.fw_module_header*, %struct.fw_module_header** %5, align 8
  %84 = bitcast %struct.fw_module_header* %83 to i8*
  %85 = getelementptr i8, i8* %84, i64 4
  %86 = load %struct.fw_module_header*, %struct.fw_module_header** %5, align 8
  %87 = getelementptr inbounds %struct.fw_module_header, %struct.fw_module_header* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %85, i64 %90
  %92 = bitcast i8* %91 to %struct.fw_module_header*
  store %struct.fw_module_header* %92, %struct.fw_module_header** %5, align 8
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %61

96:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %75, %34
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hsw_parse_module(%struct.sst_dsp*, %struct.sst_fw*, %struct.fw_module_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

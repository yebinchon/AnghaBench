; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_intel_sst_reset_dsp_mrfld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_intel_sst_reset_dsp_mrfld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32 }
%union.config_status_reg_mrfld = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"sst: Resetting the DSP in mrfld\0A\00", align 1
@SST_CSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"value:0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_sst_reset_dsp_mrfld(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca %struct.intel_sst_drv*, align 8
  %3 = alloca %union.config_status_reg_mrfld, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %2, align 8
  %4 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %5 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i32, i8*, ...) @dev_dbg(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %9 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SST_CSR, align 4
  %12 = call i8* @sst_shim_read64(i32 %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  %14 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  store i32 %13, i32* %14, align 4
  %15 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %16 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @dev_dbg(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, 7
  store i32 %23, i32* %21, align 4
  %24 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %25 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SST_CSR, align 4
  %28 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sst_shim_write64(i32 %26, i32 %27, i32 %29)
  %31 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %32 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SST_CSR, align 4
  %35 = call i8* @sst_shim_read64(i32 %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  store i32 %36, i32* %37, align 4
  %38 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %39 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, -2
  store i32 %46, i32* %44, align 4
  %47 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %48 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SST_CSR, align 4
  %51 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sst_shim_write64(i32 %49, i32 %50, i32 %52)
  %54 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %55 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SST_CSR, align 4
  %58 = call i8* @sst_shim_read64(i32 %56, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  store i32 %59, i32* %60, align 4
  %61 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %62 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = bitcast %union.config_status_reg_mrfld* %3 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i8* @sst_shim_read64(i32, i32) #1

declare dso_local i32 @sst_shim_write64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

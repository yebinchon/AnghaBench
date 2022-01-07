; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_dsp_irq_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_dsp_irq_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, i32 }
%struct.skl_dev = type { %struct.sst_generic_ipc }
%struct.sst_generic_ipc = type { i32 }
%struct.skl_ipc_header = type { i32, i32, i32 }

@SKL_ADSPIS_CL_DMA = common dso_local global i32 0, align 4
@SKL_ADSPIS_IPC = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCIE = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCT = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCTE = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCIE_DONE = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCCTL = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCCTL_DONE = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"IPC irq: Firmware respond primary:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"IPC irq: Firmware respond extension:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"IPC irq: Notification from firmware\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_dsp_irq_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sst_dsp*, align 8
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca %struct.sst_generic_ipc*, align 8
  %9 = alloca %struct.skl_ipc_header, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.sst_dsp*
  store %struct.sst_dsp* %17, %struct.sst_dsp** %6, align 8
  %18 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %19 = call %struct.skl_dev* @sst_dsp_get_thread_context(%struct.sst_dsp* %18)
  store %struct.skl_dev* %19, %struct.skl_dev** %7, align 8
  %20 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %21 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %20, i32 0, i32 0
  store %struct.sst_generic_ipc* %21, %struct.sst_generic_ipc** %8, align 8
  %22 = bitcast %struct.skl_ipc_header* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 12, i1 false)
  store i32 0, i32* %13, align 4
  %23 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %24 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SKL_ADSPIS_CL_DMA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %31 = call i32 @skl_cldma_process_intr(%struct.sst_dsp* %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %34 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SKL_ADSPIS_IPC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %136

41:                                               ; preds = %32
  %42 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %43 = load i32, i32* @SKL_ADSP_REG_HIPCIE, align 4
  %44 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %46 = load i32, i32* @SKL_ADSP_REG_HIPCT, align 4
  %47 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %49 = load i32, i32* @SKL_ADSP_REG_HIPCTE, align 4
  %50 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @SKL_ADSP_REG_HIPCIE_DONE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %41
  %56 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %57 = load i32, i32* @SKL_ADSP_REG_HIPCCTL, align 4
  %58 = load i32, i32* @SKL_ADSP_REG_HIPCCTL_DONE, align 4
  %59 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %56, i32 %57, i32 %58, i32 0)
  %60 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %61 = load i32, i32* @SKL_ADSP_REG_HIPCIE, align 4
  %62 = load i32, i32* @SKL_ADSP_REG_HIPCIE_DONE, align 4
  %63 = load i32, i32* @SKL_ADSP_REG_HIPCIE_DONE, align 4
  %64 = call i32 @sst_dsp_shim_update_bits_forced(%struct.sst_dsp* %60, i32 %61, i32 %62, i32 %63)
  store i32 1, i32* %13, align 4
  %65 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %66 = load i32, i32* @SKL_ADSP_REG_HIPCCTL, align 4
  %67 = load i32, i32* @SKL_ADSP_REG_HIPCCTL_DONE, align 4
  %68 = load i32, i32* @SKL_ADSP_REG_HIPCCTL_DONE, align 4
  %69 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %55, %41
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @SKL_ADSP_REG_HIPCT_BUSY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %124

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %12, align 4
  %79 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %81 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @dev_dbg(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %87 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @dev_dbg(i32 %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IPC_GLB_NOTIFY_RSP_TYPE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %75
  %97 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %98 = bitcast { i64, i32 }* %14 to i8*
  %99 = bitcast %struct.skl_ipc_header* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 12, i1 false)
  %100 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %101 = load i64, i64* %100, align 4
  %102 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @skl_ipc_process_reply(%struct.sst_generic_ipc* %97, i64 %101, i32 %103)
  br label %118

105:                                              ; preds = %75
  %106 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %107 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @dev_dbg(i32 %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %111 = bitcast { i64, i32 }* %15 to i8*
  %112 = bitcast %struct.skl_ipc_header* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 12, i1 false)
  %113 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %114 = load i64, i64* %113, align 4
  %115 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @skl_ipc_process_notification(%struct.sst_generic_ipc* %110, i64 %114, i32 %116)
  br label %118

118:                                              ; preds = %105, %96
  %119 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %120 = load i32, i32* @SKL_ADSP_REG_HIPCT, align 4
  %121 = load i32, i32* @SKL_ADSP_REG_HIPCT_BUSY, align 4
  %122 = load i32, i32* @SKL_ADSP_REG_HIPCT_BUSY, align 4
  %123 = call i32 @sst_dsp_shim_update_bits_forced(%struct.sst_dsp* %119, i32 %120, i32 %121, i32 %122)
  store i32 1, i32* %13, align 4
  br label %124

124:                                              ; preds = %118, %70
  %125 = load i32, i32* %13, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* @IRQ_NONE, align 4
  store i32 %128, i32* %3, align 4
  br label %136

129:                                              ; preds = %124
  %130 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %131 = call i32 @skl_ipc_int_enable(%struct.sst_dsp* %130)
  %132 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %133 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %132, i32 0, i32 0
  %134 = call i32 @schedule_work(i32* %133)
  %135 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %129, %127, %39
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.skl_dev* @sst_dsp_get_thread_context(%struct.sst_dsp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @skl_cldma_process_intr(%struct.sst_dsp*) #1

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits_forced(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @IPC_GLB_NOTIFY_RSP_TYPE(i32) #1

declare dso_local i32 @skl_ipc_process_reply(%struct.sst_generic_ipc*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skl_ipc_process_notification(%struct.sst_generic_ipc*, i64, i32) #1

declare dso_local i32 @skl_ipc_int_enable(%struct.sst_dsp*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_dsp_irq_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst.c_cnl_dsp_irq_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, i32 }
%struct.skl_dev = type { %struct.sst_generic_ipc }
%struct.sst_generic_ipc = type { i32 }
%struct.skl_ipc_header = type { i32, i32, i32 }

@CNL_ADSPIS_IPC = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCIDA = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCTDR = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCTDD = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCIDA_DONE = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCCTL = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCCTL_DONE = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCTDR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IPC irq: Firmware respond primary:%x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"IPC irq: Firmware respond extension:%x\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"IPC irq: Notification from firmware\0A\00", align 1
@CNL_ADSP_REG_HIPCTDA = common dso_local global i32 0, align 4
@CNL_ADSP_REG_HIPCTDA_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cnl_dsp_irq_thread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_dsp_irq_thread_handler(i32 %0, i8* %1) #0 {
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
  %26 = load i32, i32* @CNL_ADSPIS_IPC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %131

31:                                               ; preds = %2
  %32 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %33 = load i32, i32* @CNL_ADSP_REG_HIPCIDA, align 4
  %34 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %36 = load i32, i32* @CNL_ADSP_REG_HIPCTDR, align 4
  %37 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %39 = load i32, i32* @CNL_ADSP_REG_HIPCTDD, align 4
  %40 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @CNL_ADSP_REG_HIPCIDA_DONE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %31
  %46 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %47 = load i32, i32* @CNL_ADSP_REG_HIPCCTL, align 4
  %48 = load i32, i32* @CNL_ADSP_REG_HIPCCTL_DONE, align 4
  %49 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %46, i32 %47, i32 %48, i32 0)
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %51 = load i32, i32* @CNL_ADSP_REG_HIPCIDA, align 4
  %52 = load i32, i32* @CNL_ADSP_REG_HIPCIDA_DONE, align 4
  %53 = load i32, i32* @CNL_ADSP_REG_HIPCIDA_DONE, align 4
  %54 = call i32 @sst_dsp_shim_update_bits_forced(%struct.sst_dsp* %50, i32 %51, i32 %52, i32 %53)
  store i32 1, i32* %13, align 4
  %55 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %56 = load i32, i32* @CNL_ADSP_REG_HIPCCTL, align 4
  %57 = load i32, i32* @CNL_ADSP_REG_HIPCCTL_DONE, align 4
  %58 = load i32, i32* @CNL_ADSP_REG_HIPCCTL_DONE, align 4
  %59 = call i32 @sst_dsp_shim_update_bits(%struct.sst_dsp* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %45, %31
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @CNL_ADSP_REG_HIPCTDR_BUSY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %119

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %71 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %77 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %9, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @CNL_IPC_GLB_NOTIFY_RSP_TYPE(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %65
  %87 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %88 = bitcast { i64, i32 }* %14 to i8*
  %89 = bitcast %struct.skl_ipc_header* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 12, i1 false)
  %90 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %91 = load i64, i64* %90, align 4
  %92 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @skl_ipc_process_reply(%struct.sst_generic_ipc* %87, i64 %91, i32 %93)
  br label %108

95:                                               ; preds = %65
  %96 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %97 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @dev_dbg(i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %101 = bitcast { i64, i32 }* %15 to i8*
  %102 = bitcast %struct.skl_ipc_header* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 12, i1 false)
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %104 = load i64, i64* %103, align 4
  %105 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @skl_ipc_process_notification(%struct.sst_generic_ipc* %100, i64 %104, i32 %106)
  br label %108

108:                                              ; preds = %95, %86
  %109 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %110 = load i32, i32* @CNL_ADSP_REG_HIPCTDR, align 4
  %111 = load i32, i32* @CNL_ADSP_REG_HIPCTDR_BUSY, align 4
  %112 = load i32, i32* @CNL_ADSP_REG_HIPCTDR_BUSY, align 4
  %113 = call i32 @sst_dsp_shim_update_bits_forced(%struct.sst_dsp* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %115 = load i32, i32* @CNL_ADSP_REG_HIPCTDA, align 4
  %116 = load i32, i32* @CNL_ADSP_REG_HIPCTDA_DONE, align 4
  %117 = load i32, i32* @CNL_ADSP_REG_HIPCTDA_DONE, align 4
  %118 = call i32 @sst_dsp_shim_update_bits_forced(%struct.sst_dsp* %114, i32 %115, i32 %116, i32 %117)
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %108, %60
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @IRQ_NONE, align 4
  store i32 %123, i32* %3, align 4
  br label %131

124:                                              ; preds = %119
  %125 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %126 = call i32 @cnl_ipc_int_enable(%struct.sst_dsp* %125)
  %127 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %128 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %127, i32 0, i32 0
  %129 = call i32 @schedule_work(i32* %128)
  %130 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %122, %29
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.skl_dev* @sst_dsp_get_thread_context(%struct.sst_dsp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits_forced(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @CNL_IPC_GLB_NOTIFY_RSP_TYPE(i32) #1

declare dso_local i32 @skl_ipc_process_reply(%struct.sst_generic_ipc*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skl_ipc_process_notification(%struct.sst_generic_ipc*, i64, i32) #1

declare dso_local i32 @cnl_ipc_int_enable(%struct.sst_dsp*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

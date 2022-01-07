; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_ipc.c_intel_sst_clear_intr_mrfld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_ipc.c_intel_sst_clear_intr_mrfld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32 }
%union.interrupt_reg_mrfld = type { i8* }
%union.ipc_header_mrfld = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@SST_IMRX = common dso_local global i32 0, align 4
@SST_ISRX = common dso_local global i32 0, align 4
@SST_IPCD = common dso_local global i32 0, align 4
@IPC_ACK_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_sst_clear_intr_mrfld(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca %struct.intel_sst_drv*, align 8
  %3 = alloca %union.interrupt_reg_mrfld, align 8
  %4 = alloca %union.interrupt_reg_mrfld, align 8
  %5 = alloca %union.ipc_header_mrfld, align 8
  %6 = alloca i64, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %2, align 8
  %7 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %8 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %12 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SST_IMRX, align 4
  %15 = call i8* @sst_shim_read64(i32 %13, i32 %14)
  %16 = bitcast %union.interrupt_reg_mrfld* %4 to i8**
  store i8* %15, i8** %16, align 8
  %17 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %18 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SST_ISRX, align 4
  %21 = call i8* @sst_shim_read64(i32 %19, i32 %20)
  %22 = bitcast %union.interrupt_reg_mrfld* %3 to i8**
  store i8* %21, i8** %22, align 8
  %23 = bitcast %union.interrupt_reg_mrfld* %3 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %26 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SST_ISRX, align 4
  %29 = bitcast %union.interrupt_reg_mrfld* %3 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @sst_shim_write64(i32 %27, i32 %28, i8* %30)
  %32 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %33 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SST_IPCD, align 4
  %36 = call i8* @sst_shim_read64(i32 %34, i32 %35)
  %37 = bitcast %union.ipc_header_mrfld* %5 to i8**
  store i8* %36, i8** %37, align 8
  %38 = bitcast %union.ipc_header_mrfld* %5 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = bitcast %union.ipc_header_mrfld* %5 to %struct.TYPE_7__*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @IPC_ACK_SUCCESS, align 4
  %47 = bitcast %union.ipc_header_mrfld* %5 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %50 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SST_IPCD, align 4
  %53 = bitcast %union.ipc_header_mrfld* %5 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @sst_shim_write64(i32 %51, i32 %52, i8* %54)
  %56 = bitcast %union.interrupt_reg_mrfld* %4 to %struct.TYPE_8__*
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %59 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SST_IMRX, align 4
  %62 = bitcast %union.interrupt_reg_mrfld* %4 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @sst_shim_write64(i32 %60, i32 %61, i8* %63)
  %65 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %66 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %65, i32 0, i32 0
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @sst_shim_read64(i32, i32) #1

declare dso_local i32 @sst_shim_write64(i32, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_tx_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_tx_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { i32 }
%struct.ipc_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.skl_ipc_header = type { i32, i32 }

@SKL_ADSP_REG_HIPCIE = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCI = common dso_local global i32 0, align 4
@SKL_ADSP_REG_HIPCI_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_generic_ipc*, %struct.ipc_message*)* @skl_ipc_tx_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_ipc_tx_msg(%struct.sst_generic_ipc* %0, %struct.ipc_message* %1) #0 {
  %3 = alloca %struct.sst_generic_ipc*, align 8
  %4 = alloca %struct.ipc_message*, align 8
  %5 = alloca %struct.skl_ipc_header*, align 8
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %3, align 8
  store %struct.ipc_message* %1, %struct.ipc_message** %4, align 8
  %6 = load %struct.ipc_message*, %struct.ipc_message** %4, align 8
  %7 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = bitcast i32* %8 to %struct.skl_ipc_header*
  store %struct.skl_ipc_header* %9, %struct.skl_ipc_header** %5, align 8
  %10 = load %struct.ipc_message*, %struct.ipc_message** %4, align 8
  %11 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %17 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ipc_message*, %struct.ipc_message** %4, align 8
  %20 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ipc_message*, %struct.ipc_message** %4, align 8
  %24 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @sst_dsp_outbox_write(i32 %18, i32 %22, i64 %26)
  br label %28

28:                                               ; preds = %15, %2
  %29 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %30 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SKL_ADSP_REG_HIPCIE, align 4
  %33 = load %struct.skl_ipc_header*, %struct.skl_ipc_header** %5, align 8
  %34 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sst_dsp_shim_write_unlocked(i32 %31, i32 %32, i32 %35)
  %37 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %38 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SKL_ADSP_REG_HIPCI, align 4
  %41 = load %struct.skl_ipc_header*, %struct.skl_ipc_header** %5, align 8
  %42 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SKL_ADSP_REG_HIPCI_BUSY, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @sst_dsp_shim_write_unlocked(i32 %39, i32 %40, i32 %45)
  ret void
}

declare dso_local i32 @sst_dsp_outbox_write(i32, i32, i64) #1

declare dso_local i32 @sst_dsp_shim_write_unlocked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

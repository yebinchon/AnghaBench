; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst-dsp.c_cnl_dsp_sst_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_cnl-sst-dsp.c_cnl_dsp_sst_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CNL_ADSP_REG_ADSPIS = common dso_local global i32 0, align 4
@CNL_ADSPIS_IPC = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cnl_dsp_sst_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sst_dsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sst_dsp*
  store %struct.sst_dsp* %10, %struct.sst_dsp** %6, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %13 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %16 = load i32, i32* @CNL_ADSP_REG_ADSPIS, align 4
  %17 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %20 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %25 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CNL_ADSPIS_IPC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %35 = call i32 @cnl_ipc_int_disable(%struct.sst_dsp* %34)
  %36 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %39 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cnl_ipc_int_disable(%struct.sst_dsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

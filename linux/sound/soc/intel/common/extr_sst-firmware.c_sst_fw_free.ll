; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_fw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_fw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_fw = type { i32, i64, i32, i32, %struct.sst_dsp* }
%struct.sst_dsp = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_fw_free(%struct.sst_fw* %0) #0 {
  %2 = alloca %struct.sst_fw*, align 8
  %3 = alloca %struct.sst_dsp*, align 8
  store %struct.sst_fw* %0, %struct.sst_fw** %2, align 8
  %4 = load %struct.sst_fw*, %struct.sst_fw** %2, align 8
  %5 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %4, i32 0, i32 4
  %6 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  store %struct.sst_dsp* %6, %struct.sst_dsp** %3, align 8
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %8 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.sst_fw*, %struct.sst_fw** %2, align 8
  %11 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %10, i32 0, i32 3
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %14 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %13, i32 0, i32 1
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.sst_fw*, %struct.sst_fw** %2, align 8
  %17 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %3, align 8
  %22 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sst_fw*, %struct.sst_fw** %2, align 8
  %25 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sst_fw*, %struct.sst_fw** %2, align 8
  %28 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sst_fw*, %struct.sst_fw** %2, align 8
  %31 = getelementptr inbounds %struct.sst_fw, %struct.sst_fw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_free_coherent(i32 %23, i32 %26, i64 %29, i32 %32)
  br label %34

34:                                               ; preds = %20, %1
  %35 = load %struct.sst_fw*, %struct.sst_fw** %2, align 8
  %36 = call i32 @kfree(%struct.sst_fw* %35)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.sst_fw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

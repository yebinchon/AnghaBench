; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-dsp.c_sst_dsp_shim_update_bits64_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-dsp.c_sst_dsp_shim_update_bits64_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_dsp_shim_update_bits64_unlocked(%struct.sst_dsp* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @sst_dsp_shim_read64_unlocked(%struct.sst_dsp* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @sst_dsp_shim_write64_unlocked(%struct.sst_dsp* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %4
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @sst_dsp_shim_read64_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_dsp_shim_write64_unlocked(%struct.sst_dsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

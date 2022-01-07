; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_3g.c_load_asic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_3g.c_load_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i64 }

@DSP_FNC_LOAD_3G_ASIC = common dso_local global i32 0, align 4
@FW_3G_ASIC = common dso_local global i32 0, align 4
@E3G_48KHZ = common dso_local global i32 0, align 4
@E3G_FREQ_REG_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @load_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_asic(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %6 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %7 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = call i32 @mdelay(i32 2)
  %13 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %14 = load i32, i32* @DSP_FNC_LOAD_3G_ASIC, align 4
  %15 = load i32, i32* @FW_3G_ASIC, align 4
  %16 = call i32 @load_asic_generic(%struct.echoaudio* %13, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %11
  %22 = load i32, i32* @FW_3G_ASIC, align 4
  %23 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %24 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = call i32 @msleep(i32 1000)
  %26 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %27 = call i32 @check_asic_status(%struct.echoaudio* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %32 = load i32, i32* @E3G_48KHZ, align 4
  %33 = load i32, i32* @E3G_FREQ_REG_DEFAULT, align 4
  %34 = call i32 @write_control_reg(%struct.echoaudio* %31, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %37, %19, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @load_asic_generic(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

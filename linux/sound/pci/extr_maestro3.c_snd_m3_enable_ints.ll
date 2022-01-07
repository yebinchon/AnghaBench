; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_enable_ints.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_enable_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i64, i32 }

@ASSP_INT_ENABLE = common dso_local global i16 0, align 2
@HV_CTRL_ENABLE = common dso_local global i32 0, align 4
@HV_INT_ENABLE = common dso_local global i16 0, align 2
@HOST_INT_STATUS = common dso_local global i64 0, align 8
@HOST_INT_CTRL = common dso_local global i64 0, align 8
@ASSP_CONTROL_C = common dso_local global i64 0, align 8
@ASSP_HOST_INT_ENABLE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*)* @snd_m3_enable_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_enable_ints(%struct.snd_m3* %0) #0 {
  %2 = alloca %struct.snd_m3*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  store %struct.snd_m3* %0, %struct.snd_m3** %2, align 8
  %5 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %6 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i16, i16* @ASSP_INT_ENABLE, align 2
  store i16 %8, i16* %4, align 2
  %9 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %10 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HV_CTRL_ENABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i16, i16* @HV_INT_ENABLE, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* %4, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %19, %17
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %4, align 2
  br label %22

22:                                               ; preds = %15, %1
  %23 = load i16, i16* %4, align 2
  %24 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %25 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HOST_INT_STATUS, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @outb(i16 zeroext %23, i64 %28)
  %30 = load i16, i16* %4, align 2
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @HOST_INT_CTRL, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @outw(i16 zeroext %30, i64 %33)
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @ASSP_CONTROL_C, align 8
  %37 = add i64 %35, %36
  %38 = call zeroext i16 @inb(i64 %37)
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @ASSP_HOST_INT_ENABLE, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %39, %41
  %43 = trunc i32 %42 to i16
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @ASSP_CONTROL_C, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @outb(i16 zeroext %43, i64 %46)
  ret void
}

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local zeroext i16 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

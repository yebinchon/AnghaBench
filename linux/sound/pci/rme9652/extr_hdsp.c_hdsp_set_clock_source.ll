; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_set_clock_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_set_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32 }

@HDSP_ClockModeMaster = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32)* @hdsp_set_clock_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_set_clock_source(%struct.hdsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %42 [
    i32 137, label %8
    i32 133, label %33
    i32 132, label %34
    i32 131, label %35
    i32 130, label %36
    i32 129, label %37
    i32 128, label %38
    i32 136, label %39
    i32 135, label %40
    i32 134, label %41
  ]

8:                                                ; preds = %2
  %9 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %10 = call i32 @hdsp_external_sample_rate(%struct.hdsp* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %14 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %15 = call i32 @hdsp_external_sample_rate(%struct.hdsp* %14)
  %16 = call i32 @hdsp_set_rate(%struct.hdsp* %13, i32 %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @HDSP_ClockModeMaster, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %22 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %26 = load i32, i32* @HDSP_controlRegister, align 4
  %27 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %28 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @hdsp_write(%struct.hdsp* %25, i32 %26, i32 %29)
  store i32 0, i32* %3, align 4
  br label %58

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31, %8
  store i32 -1, i32* %3, align 4
  br label %58

33:                                               ; preds = %2
  store i32 32000, i32* %6, align 4
  br label %43

34:                                               ; preds = %2
  store i32 44100, i32* %6, align 4
  br label %43

35:                                               ; preds = %2
  store i32 48000, i32* %6, align 4
  br label %43

36:                                               ; preds = %2
  store i32 64000, i32* %6, align 4
  br label %43

37:                                               ; preds = %2
  store i32 88200, i32* %6, align 4
  br label %43

38:                                               ; preds = %2
  store i32 96000, i32* %6, align 4
  br label %43

39:                                               ; preds = %2
  store i32 128000, i32* %6, align 4
  br label %43

40:                                               ; preds = %2
  store i32 176400, i32* %6, align 4
  br label %43

41:                                               ; preds = %2
  store i32 192000, i32* %6, align 4
  br label %43

42:                                               ; preds = %2
  store i32 48000, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38, %37, %36, %35, %34, %33
  %44 = load i32, i32* @HDSP_ClockModeMaster, align 4
  %45 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %46 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %50 = load i32, i32* @HDSP_controlRegister, align 4
  %51 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %52 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hdsp_write(%struct.hdsp* %49, i32 %50, i32 %53)
  %55 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @hdsp_set_rate(%struct.hdsp* %55, i32 %56, i32 1)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %43, %32, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @hdsp_external_sample_rate(%struct.hdsp*) #1

declare dso_local i32 @hdsp_set_rate(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

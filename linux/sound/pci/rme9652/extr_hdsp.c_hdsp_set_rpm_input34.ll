; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_set_rpm_input34.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_set_rpm_input34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32 }

@HDSP_RPM_Inp34 = common dso_local global i32 0, align 4
@HDSP_RPM_Inp34_Phon_6dB = common dso_local global i32 0, align 4
@HDSP_RPM_Inp34_Phon_n6dB = common dso_local global i32 0, align 4
@HDSP_RPM_Inp34_Line_0dB = common dso_local global i32 0, align 4
@HDSP_RPM_Inp34_Line_n6dB = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32)* @hdsp_set_rpm_input34 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_set_rpm_input34(%struct.hdsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdsp*, align 8
  %5 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @HDSP_RPM_Inp34, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %9 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %38 [
    i32 0, label %13
    i32 1, label %19
    i32 2, label %20
    i32 3, label %26
    i32 4, label %32
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @HDSP_RPM_Inp34_Phon_6dB, align 4
  %15 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %16 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %39

19:                                               ; preds = %2
  br label %39

20:                                               ; preds = %2
  %21 = load i32, i32* @HDSP_RPM_Inp34_Phon_n6dB, align 4
  %22 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %23 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %39

26:                                               ; preds = %2
  %27 = load i32, i32* @HDSP_RPM_Inp34_Line_0dB, align 4
  %28 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %29 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @HDSP_RPM_Inp34_Line_n6dB, align 4
  %34 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %35 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %39

38:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

39:                                               ; preds = %32, %26, %20, %19, %13
  %40 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %41 = load i32, i32* @HDSP_controlRegister, align 4
  %42 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %43 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @hdsp_write(%struct.hdsp* %40, i32 %41, i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

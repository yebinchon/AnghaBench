; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_do_digit_io_switch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_do_digit_io_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i64)*, i32 (%struct.ct_atc*)*, i32 (%struct.ct_atc*)*, i32 (%struct.ct_atc*)*, %struct.ct_mixer* }
%struct.ct_mixer = type { i32 }

@MIXER_SPDIFO_P_S = common dso_local global i32 0, align 4
@MIXER_LINEIN_C_S = common dso_local global i32 0, align 4
@MIXER_MIC_C_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_atc*, i32)* @do_digit_io_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_digit_io_switch(%struct.ct_atc* %0, i32 %1) #0 {
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ct_mixer*, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %7 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %6, i32 0, i32 6
  %8 = load %struct.ct_mixer*, %struct.ct_mixer** %7, align 8
  store %struct.ct_mixer* %8, %struct.ct_mixer** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %13 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %12, i32 0, i32 5
  %14 = load i32 (%struct.ct_atc*)*, i32 (%struct.ct_atc*)** %13, align 8
  %15 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %16 = call i32 %14(%struct.ct_atc* %15)
  %17 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %18 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %17, i32 0, i32 2
  %19 = load i32 (%struct.ct_atc*, i64)*, i32 (%struct.ct_atc*, i64)** %18, align 8
  %20 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %21 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %22 = load i32, i32* @MIXER_SPDIFO_P_S, align 4
  %23 = call i64 @get_switch_state(%struct.ct_mixer* %21, i32 %22)
  %24 = call i32 %19(%struct.ct_atc* %20, i64 %23)
  %25 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %26 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %25, i32 0, i32 1
  %27 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %26, align 8
  %28 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %29 = call i32 %27(%struct.ct_atc* %28, i32 1)
  %30 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %31 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %30, i32 0, i32 0
  %32 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %31, align 8
  %33 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %34 = call i32 %32(%struct.ct_atc* %33, i32 0)
  br label %74

35:                                               ; preds = %2
  %36 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %37 = load i32, i32* @MIXER_LINEIN_C_S, align 4
  %38 = call i64 @get_switch_state(%struct.ct_mixer* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %42 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %41, i32 0, i32 4
  %43 = load i32 (%struct.ct_atc*)*, i32 (%struct.ct_atc*)** %42, align 8
  %44 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %45 = call i32 %43(%struct.ct_atc* %44)
  br label %58

46:                                               ; preds = %35
  %47 = load %struct.ct_mixer*, %struct.ct_mixer** %5, align 8
  %48 = load i32, i32* @MIXER_MIC_C_S, align 4
  %49 = call i64 @get_switch_state(%struct.ct_mixer* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %53 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %52, i32 0, i32 3
  %54 = load i32 (%struct.ct_atc*)*, i32 (%struct.ct_atc*)** %53, align 8
  %55 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %56 = call i32 %54(%struct.ct_atc* %55)
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %60 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %59, i32 0, i32 2
  %61 = load i32 (%struct.ct_atc*, i64)*, i32 (%struct.ct_atc*, i64)** %60, align 8
  %62 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %63 = call i32 %61(%struct.ct_atc* %62, i64 0)
  %64 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %65 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %64, i32 0, i32 1
  %66 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %65, align 8
  %67 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %68 = call i32 %66(%struct.ct_atc* %67, i32 0)
  %69 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %70 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %69, i32 0, i32 0
  %71 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %70, align 8
  %72 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %73 = call i32 %71(%struct.ct_atc* %72, i32 1)
  br label %74

74:                                               ; preds = %58, %11
  ret void
}

declare dso_local i64 @get_switch_state(%struct.ct_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

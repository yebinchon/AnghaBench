; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ab8500-codec.c_anc_fir.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ab8500-codec.c_anc_fir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@AB8500_ANCCONF1 = common dso_local global i32 0, align 4
@AB8500_ANCCONF1_ANCFIRUPDATE = common dso_local global i32 0, align 4
@AB8500_ANCCONF5 = common dso_local global i32 0, align 4
@AB8500_ANCCONF6 = common dso_local global i32 0, align 4
@AB8500_ANC_FIR_COEFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32, i32)* @anc_fir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anc_fir(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = load i32, i32* @AB8500_ANCCONF1, align 4
  %17 = load i32, i32* @AB8500_ANCCONF1_ANCFIRUPDATE, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* @AB8500_ANCCONF1_ANCFIRUPDATE, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %14, %11, %4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %24 = load i32, i32* @AB8500_ANCCONF5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = lshr i32 %25, 8
  %27 = and i32 %26, 255
  %28 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %23, i32 %24, i32 %27)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %30 = load i32, i32* @AB8500_ANCCONF6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %29, i32 %30, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @AB8500_ANC_FIR_COEFFS, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %22
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %43 = load i32, i32* @AB8500_ANCCONF1, align 4
  %44 = load i32, i32* @AB8500_ANCCONF1_ANCFIRUPDATE, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %41, %38, %22
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

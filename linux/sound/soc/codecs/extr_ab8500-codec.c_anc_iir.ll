; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ab8500-codec.c_anc_iir.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ab8500-codec.c_anc_iir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@AB8500_ANCCONF1 = common dso_local global i32 0, align 4
@AB8500_ANCCONF1_ANCIIRINIT = common dso_local global i32 0, align 4
@AB8500_ANC_SM_DELAY = common dso_local global i32 0, align 4
@AB8500_ANCCONF1_ANCIIRUPDATE = common dso_local global i32 0, align 4
@AB8500_ANCCONF7 = common dso_local global i32 0, align 4
@AB8500_ANCCONF8 = common dso_local global i32 0, align 4
@AB8500_ANC_IIR_COEFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32, i32)* @anc_iir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anc_iir(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %10, label %11, label %44

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = load i32, i32* @AB8500_ANCCONF1, align 4
  %17 = load i32, i32* @AB8500_ANCCONF1_ANCIIRINIT, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* @AB8500_ANCCONF1_ANCIIRINIT, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %18, i32 %20)
  %22 = load i32, i32* @AB8500_ANC_SM_DELAY, align 4
  %23 = load i32, i32* @AB8500_ANC_SM_DELAY, align 4
  %24 = mul nsw i32 %23, 2
  %25 = call i32 @usleep_range(i32 %22, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %27 = load i32, i32* @AB8500_ANCCONF1, align 4
  %28 = load i32, i32* @AB8500_ANCCONF1_ANCIIRINIT, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %29, i32 0)
  %31 = load i32, i32* @AB8500_ANC_SM_DELAY, align 4
  %32 = load i32, i32* @AB8500_ANC_SM_DELAY, align 4
  %33 = mul nsw i32 %32, 2
  %34 = call i32 @usleep_range(i32 %31, i32 %33)
  br label %43

35:                                               ; preds = %11
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %37 = load i32, i32* @AB8500_ANCCONF1, align 4
  %38 = load i32, i32* @AB8500_ANCCONF1_ANCIIRUPDATE, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = load i32, i32* @AB8500_ANCCONF1_ANCIIRUPDATE, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %35, %14
  br label %58

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ugt i32 %45, 3
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %49 = load i32, i32* @AB8500_ANCCONF7, align 4
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %48, i32 %49, i32 0)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %52 = load i32, i32* @AB8500_ANCCONF8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %51, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %47, %44
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %60 = load i32, i32* @AB8500_ANCCONF7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = lshr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %66 = load i32, i32* @AB8500_ANCCONF8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 255
  %69 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %65, i32 %66, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @AB8500_ANC_IIR_COEFFS, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %79 = load i32, i32* @AB8500_ANCCONF1, align 4
  %80 = load i32, i32* @AB8500_ANCCONF1_ANCIIRUPDATE, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %77, %74, %58
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c___rsnd_ssi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c___rsnd_ssi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }

@DIRQ = common dso_local global i32 0, align 4
@UIRQ = common dso_local global i32 0, align 4
@OIRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s err status : 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_mod*, %struct.rsnd_dai_stream*)* @__rsnd_ssi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rsnd_ssi_interrupt(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1) #0 {
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %4, align 8
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %12 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %11)
  store %struct.rsnd_priv* %12, %struct.rsnd_priv** %5, align 8
  %13 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %14 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %13)
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %16 = call i32 @rsnd_ssi_is_dma_mode(%struct.rsnd_mod* %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %21 = call i32 @rsnd_io_is_working(%struct.rsnd_dai_stream* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %26 = call i32 @rsnd_ssi_status_get(%struct.rsnd_mod* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DIRQ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %36 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %37 = call i32 @rsnd_ssi_pio_interrupt(%struct.rsnd_mod* %35, %struct.rsnd_dai_stream* %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %29, %24
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @UIRQ, align 4
  %44 = load i32, i32* @OIRQ, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %51 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @rsnd_dbg_irq_status(%struct.device* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  store i32 1, i32* %10, align 4
  br label %54

54:                                               ; preds = %48, %41, %38
  %55 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %56 = call i32 @rsnd_ssi_status_clear(%struct.rsnd_mod* %55)
  br label %57

57:                                               ; preds = %54, %23
  %58 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %59 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %65 = call i32 @rsnd_dai_period_elapsed(%struct.rsnd_dai_stream* %64)
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %71 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @snd_pcm_stop_xrun(i32 %72)
  br label %74

74:                                               ; preds = %69, %66
  ret void
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_ssi_is_dma_mode(%struct.rsnd_mod*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rsnd_io_is_working(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_ssi_status_get(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_ssi_pio_interrupt(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_dbg_irq_status(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_ssi_status_clear(%struct.rsnd_mod*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rsnd_dai_period_elapsed(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @snd_pcm_stop_xrun(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

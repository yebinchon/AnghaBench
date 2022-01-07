; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dvc.c_rsnd_dvc_volume_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dvc.c_rsnd_dvc_volume_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_dvc = type { i32 }

@DVC_DVUIR = common dso_local global i32 0, align 4
@DVC_ADINR = common dso_local global i32 0, align 4
@DVC_DVUCR = common dso_local global i32 0, align 4
@DVC_VRCTR = common dso_local global i32 0, align 4
@DVC_VRPDR = common dso_local global i32 0, align 4
@DVC_VRDBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_dvc_volume_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_dvc_volume_init(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dvc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %4, align 8
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %12 = call %struct.rsnd_dvc* @rsnd_mod_to_dvc(%struct.rsnd_mod* %11)
  store %struct.rsnd_dvc* %12, %struct.rsnd_dvc** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %14 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %15 = call i32 @rsnd_get_adinr_bit(%struct.rsnd_mod* %13, %struct.rsnd_dai_stream* %14)
  %16 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %17 = call i32 @rsnd_runtime_channel_after_ctu(%struct.rsnd_dai_stream* %16)
  %18 = or i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, 257
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %22 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @rsnd_kctrl_vals(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, 16
  store i32 %28, i32* %7, align 4
  store i32 255, i32* %8, align 4
  %29 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %30 = call i32 @rsnd_dvc_get_vrpdr(%struct.rsnd_dvc* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %32 = call i32 @rsnd_dvc_get_vrdbr(%struct.rsnd_dvc* %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %35 = load i32, i32* @DVC_DVUIR, align 4
  %36 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %34, i32 %35, i32 1)
  %37 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %38 = load i32, i32* @DVC_ADINR, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %37, i32 %38, i32 %39)
  %41 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %42 = load i32, i32* @DVC_DVUCR, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %41, i32 %42, i32 %43)
  %45 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %46 = load i32, i32* @DVC_VRCTR, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %45, i32 %46, i32 %47)
  %49 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %50 = load i32, i32* @DVC_VRPDR, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %49, i32 %50, i32 %51)
  %53 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %54 = load i32, i32* @DVC_VRDBR, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %53, i32 %54, i32 %55)
  %57 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %58 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %59 = call i32 @rsnd_dvc_volume_parameter(%struct.rsnd_dai_stream* %57, %struct.rsnd_mod* %58)
  %60 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %61 = load i32, i32* @DVC_DVUIR, align 4
  %62 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %60, i32 %61, i32 0)
  ret void
}

declare dso_local %struct.rsnd_dvc* @rsnd_mod_to_dvc(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_get_adinr_bit(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_runtime_channel_after_ctu(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_kctrl_vals(i32) #1

declare dso_local i32 @rsnd_dvc_get_vrpdr(%struct.rsnd_dvc*) #1

declare dso_local i32 @rsnd_dvc_get_vrdbr(%struct.rsnd_dvc*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @rsnd_dvc_volume_parameter(%struct.rsnd_dai_stream*, %struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

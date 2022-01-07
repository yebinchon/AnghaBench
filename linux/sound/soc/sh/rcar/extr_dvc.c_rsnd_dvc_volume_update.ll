; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dvc.c_rsnd_dvc_volume_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dvc.c_rsnd_dvc_volume_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_dvc = type { i32, i32 }

@DVC_DVUER = common dso_local global i32 0, align 4
@DVC_ZCMCR = common dso_local global i32 0, align 4
@DVC_VRPDR = common dso_local global i32 0, align 4
@DVC_VRDBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_dvc_volume_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_dvc_volume_update(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dvc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %4, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %11 = call %struct.rsnd_dvc* @rsnd_mod_to_dvc(%struct.rsnd_mod* %10)
  store %struct.rsnd_dvc* %11, %struct.rsnd_dvc** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %15 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rsnd_kctrl_size(i32 %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %12
  %20 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %21 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @rsnd_kctrl_valm(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %38 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @rsnd_kctrl_vals(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %44 = call i32 @rsnd_dvc_get_vrpdr(%struct.rsnd_dvc* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %46 = call i32 @rsnd_dvc_get_vrdbr(%struct.rsnd_dvc* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %49 = load i32, i32* @DVC_DVUER, align 4
  %50 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %48, i32 %49, i32 0)
  %51 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %52 = load i32, i32* @DVC_ZCMCR, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %51, i32 %52, i32 %53)
  %55 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %56 = load i32, i32* @DVC_VRPDR, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %55, i32 %56, i32 %57)
  %59 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %60 = load i32, i32* @DVC_VRDBR, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %59, i32 %60, i32 %61)
  %63 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %64 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %65 = call i32 @rsnd_dvc_volume_parameter(%struct.rsnd_dai_stream* %63, %struct.rsnd_mod* %64)
  %66 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %67 = load i32, i32* @DVC_DVUER, align 4
  %68 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %66, i32 %67, i32 1)
  ret void
}

declare dso_local %struct.rsnd_dvc* @rsnd_mod_to_dvc(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_kctrl_size(i32) #1

declare dso_local i32 @rsnd_kctrl_valm(i32, i32) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_register_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_register_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_ssi = type { i32, i32, i32, i32, i32 }

@SSIWSR = common dso_local global i32 0, align 4
@SSICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_mod*)* @rsnd_ssi_register_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_ssi_register_setup(%struct.rsnd_mod* %0) #0 {
  %2 = alloca %struct.rsnd_mod*, align 8
  %3 = alloca %struct.rsnd_ssi*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %2, align 8
  %4 = load %struct.rsnd_mod*, %struct.rsnd_mod** %2, align 8
  %5 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %4)
  store %struct.rsnd_ssi* %5, %struct.rsnd_ssi** %3, align 8
  %6 = load %struct.rsnd_mod*, %struct.rsnd_mod** %2, align 8
  %7 = load i32, i32* @SSIWSR, align 4
  %8 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %3, align 8
  %9 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %6, i32 %7, i32 %10)
  %12 = load %struct.rsnd_mod*, %struct.rsnd_mod** %2, align 8
  %13 = load i32, i32* @SSICR, align 4
  %14 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %3, align 8
  %15 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %3, align 8
  %18 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %3, align 8
  %22 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  %25 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %3, align 8
  %26 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %12, i32 %13, i32 %28)
  ret void
}

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

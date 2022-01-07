; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_status_clear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_status_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }

@SCU_SYS_STATUS0 = common dso_local global i32 0, align 4
@SCU_SYS_STATUS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_mod*)* @rsnd_src_status_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_src_status_clear(%struct.rsnd_mod* %0) #0 {
  %2 = alloca %struct.rsnd_mod*, align 8
  %3 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %2, align 8
  %4 = load %struct.rsnd_mod*, %struct.rsnd_mod** %2, align 8
  %5 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %4)
  %6 = call i32 @OUF_SRC(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.rsnd_mod*, %struct.rsnd_mod** %2, align 8
  %8 = load i32, i32* @SCU_SYS_STATUS0, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %7, i32 %8, i32 %9)
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %2, align 8
  %12 = load i32, i32* @SCU_SYS_STATUS1, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @OUF_SRC(i32) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

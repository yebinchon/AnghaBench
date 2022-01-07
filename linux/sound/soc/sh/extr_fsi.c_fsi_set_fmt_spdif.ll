; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_set_fmt_spdif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_set_fmt_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32, i32 }
%struct.fsi_master = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CR_DTMD_SPDIF_PCM = common dso_local global i32 0, align 4
@CR_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*)* @fsi_set_fmt_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_set_fmt_spdif(%struct.fsi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca %struct.fsi_master*, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  %5 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %6 = call %struct.fsi_master* @fsi_get_master(%struct.fsi_priv* %5)
  store %struct.fsi_master* %6, %struct.fsi_master** %4, align 8
  %7 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %8 = call i32 @fsi_version(%struct.fsi_master* %7)
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @CR_DTMD_SPDIF_PCM, align 4
  %15 = load i32, i32* @CR_PCM, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %18 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %20 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %19, i32 0, i32 1
  store i32 2, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %13, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.fsi_master* @fsi_get_master(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_version(%struct.fsi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

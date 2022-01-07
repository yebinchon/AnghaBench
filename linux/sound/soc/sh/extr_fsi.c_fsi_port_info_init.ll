; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_port_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_port_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32, i32, i32 }
%struct.sh_fsi_port_info = type { i32 }

@SH_FSI_FMT_SPDIF = common dso_local global i32 0, align 4
@SH_FSI_CLK_CPG = common dso_local global i32 0, align 4
@SH_FSI_ENABLE_STREAM_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*, %struct.sh_fsi_port_info*)* @fsi_port_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_port_info_init(%struct.fsi_priv* %0, %struct.sh_fsi_port_info* %1) #0 {
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca %struct.sh_fsi_port_info*, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store %struct.sh_fsi_port_info* %1, %struct.sh_fsi_port_info** %4, align 8
  %5 = load %struct.sh_fsi_port_info*, %struct.sh_fsi_port_info** %4, align 8
  %6 = getelementptr inbounds %struct.sh_fsi_port_info, %struct.sh_fsi_port_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SH_FSI_FMT_SPDIF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %13 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.sh_fsi_port_info*, %struct.sh_fsi_port_info** %4, align 8
  %16 = getelementptr inbounds %struct.sh_fsi_port_info, %struct.sh_fsi_port_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SH_FSI_CLK_CPG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %23 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.sh_fsi_port_info*, %struct.sh_fsi_port_info** %4, align 8
  %26 = getelementptr inbounds %struct.sh_fsi_port_info, %struct.sh_fsi_port_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SH_FSI_ENABLE_STREAM_MODE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %33 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

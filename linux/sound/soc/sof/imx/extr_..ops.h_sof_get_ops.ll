; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/imx/extr_..ops.h_sof_get_ops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/imx/extr_..ops.h_sof_get_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dsp_ops = type { i32 }
%struct.sof_dev_desc = type { i32 }
%struct.sof_ops_table = type { %struct.snd_sof_dsp_ops*, %struct.sof_dev_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_sof_dsp_ops* (%struct.sof_dev_desc*, %struct.sof_ops_table*, i32)* @sof_get_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_sof_dsp_ops* @sof_get_ops(%struct.sof_dev_desc* %0, %struct.sof_ops_table* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_sof_dsp_ops*, align 8
  %5 = alloca %struct.sof_dev_desc*, align 8
  %6 = alloca %struct.sof_ops_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sof_dev_desc* %0, %struct.sof_dev_desc** %5, align 8
  store %struct.sof_ops_table* %1, %struct.sof_ops_table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.sof_dev_desc*, %struct.sof_dev_desc** %5, align 8
  %15 = load %struct.sof_ops_table*, %struct.sof_ops_table** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sof_ops_table, %struct.sof_ops_table* %15, i64 %17
  %19 = getelementptr inbounds %struct.sof_ops_table, %struct.sof_ops_table* %18, i32 0, i32 1
  %20 = load %struct.sof_dev_desc*, %struct.sof_dev_desc** %19, align 8
  %21 = icmp eq %struct.sof_dev_desc* %14, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.sof_ops_table*, %struct.sof_ops_table** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sof_ops_table, %struct.sof_ops_table* %23, i64 %25
  %27 = getelementptr inbounds %struct.sof_ops_table, %struct.sof_ops_table* %26, i32 0, i32 0
  %28 = load %struct.snd_sof_dsp_ops*, %struct.snd_sof_dsp_ops** %27, align 8
  store %struct.snd_sof_dsp_ops* %28, %struct.snd_sof_dsp_ops** %4, align 8
  br label %34

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %9

33:                                               ; preds = %9
  store %struct.snd_sof_dsp_ops* null, %struct.snd_sof_dsp_ops** %4, align 8
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.snd_sof_dsp_ops*, %struct.snd_sof_dsp_ops** %4, align 8
  ret %struct.snd_sof_dsp_ops* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

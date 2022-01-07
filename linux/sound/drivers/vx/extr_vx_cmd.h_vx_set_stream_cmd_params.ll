; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_cmd.h_vx_set_stream_cmd_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_cmd.h_vx_set_stream_cmd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_rmh = type { i32* }

@COMMAND_RECORD_MASK = common dso_local global i32 0, align 4
@MASK_FIRST_FIELD = common dso_local global i32 0, align 4
@FIELD_SIZE = common dso_local global i32 0, align 4
@MASK_DSP_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_rmh*, i32, i32)* @vx_set_stream_cmd_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_set_stream_cmd_params(%struct.vx_rmh* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vx_rmh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vx_rmh* %0, %struct.vx_rmh** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i32, i32* @COMMAND_RECORD_MASK, align 4
  %11 = load %struct.vx_rmh*, %struct.vx_rmh** %4, align 8
  %12 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %10
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %9, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @FIELD_SIZE, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @MASK_DSP_WORD, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.vx_rmh*, %struct.vx_rmh** %4, align 8
  %26 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

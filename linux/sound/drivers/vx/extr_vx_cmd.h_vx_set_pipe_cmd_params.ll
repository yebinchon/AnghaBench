; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_cmd.h_vx_set_pipe_cmd_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_cmd.h_vx_set_pipe_cmd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_rmh = type { i32* }

@COMMAND_RECORD_MASK = common dso_local global i32 0, align 4
@MASK_FIRST_FIELD = common dso_local global i32 0, align 4
@FIELD_SIZE = common dso_local global i32 0, align 4
@MASK_DSP_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_rmh*, i32, i32, i32)* @vx_set_pipe_cmd_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_set_pipe_cmd_params(%struct.vx_rmh* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vx_rmh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vx_rmh* %0, %struct.vx_rmh** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load i32, i32* @COMMAND_RECORD_MASK, align 4
  %13 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %14 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %11, %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @FIELD_SIZE, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @MASK_DSP_WORD, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %28 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %19
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @MASK_DSP_WORD, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %42 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %35, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

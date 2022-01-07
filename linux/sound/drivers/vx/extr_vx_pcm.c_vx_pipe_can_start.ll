; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pipe_can_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pipe_can_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_pipe = type { i32, i32 }
%struct.vx_rmh = type { i32*, i64* }

@CMD_CAN_START_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.vx_pipe*)* @vx_pipe_can_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_pipe_can_start(%struct.vx_core* %0, %struct.vx_pipe* %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca %struct.vx_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vx_rmh, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store %struct.vx_pipe* %1, %struct.vx_pipe** %4, align 8
  %7 = load i32, i32* @CMD_CAN_START_PIPE, align 4
  %8 = call i32 @vx_init_rmh(%struct.vx_rmh* %6, i32 %7)
  %9 = load %struct.vx_pipe*, %struct.vx_pipe** %4, align 8
  %10 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vx_pipe*, %struct.vx_pipe** %4, align 8
  %13 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vx_set_pipe_cmd_params(%struct.vx_rmh* %6, i32 %11, i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %6, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %22 = call i32 @vx_send_msg(%struct.vx_core* %21, %struct.vx_rmh* %6)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %6, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @vx_init_rmh(%struct.vx_rmh*, i32) #1

declare dso_local i32 @vx_set_pipe_cmd_params(%struct.vx_rmh*, i32, i32, i32) #1

declare dso_local i32 @vx_send_msg(%struct.vx_core*, %struct.vx_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

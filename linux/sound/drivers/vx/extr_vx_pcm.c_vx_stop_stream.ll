; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_stop_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_stop_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_pipe = type { i32, i32 }
%struct.vx_rmh = type { i32 }

@CMD_STOP_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.vx_pipe*)* @vx_stop_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_stop_stream(%struct.vx_core* %0, %struct.vx_pipe* %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca %struct.vx_pipe*, align 8
  %5 = alloca %struct.vx_rmh, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store %struct.vx_pipe* %1, %struct.vx_pipe** %4, align 8
  %6 = load i32, i32* @CMD_STOP_STREAM, align 4
  %7 = call i32 @vx_init_rmh(%struct.vx_rmh* %5, i32 %6)
  %8 = load %struct.vx_pipe*, %struct.vx_pipe** %4, align 8
  %9 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vx_pipe*, %struct.vx_pipe** %4, align 8
  %12 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vx_set_stream_cmd_params(%struct.vx_rmh* %5, i32 %10, i32 %13)
  %15 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %16 = call i32 @vx_send_msg(%struct.vx_core* %15, %struct.vx_rmh* %5)
  ret i32 %16
}

declare dso_local i32 @vx_init_rmh(%struct.vx_rmh*, i32) #1

declare dso_local i32 @vx_set_stream_cmd_params(%struct.vx_rmh*, i32, i32) #1

declare dso_local i32 @vx_send_msg(%struct.vx_core*, %struct.vx_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

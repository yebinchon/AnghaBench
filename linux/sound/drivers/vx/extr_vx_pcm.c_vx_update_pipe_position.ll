; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_update_pipe_position.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_update_pipe_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i32 }
%struct.vx_pipe = type { i32, i32, i32, i32, i32 }
%struct.vx_rmh = type { i32* }

@CMD_STREAM_SAMPLE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*)* @vx_update_pipe_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_update_pipe_position(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca %struct.vx_rmh, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %7, align 8
  %12 = load i32, i32* @CMD_STREAM_SAMPLE_COUNT, align 4
  %13 = call i32 @vx_init_rmh(%struct.vx_rmh* %8, i32 %12)
  %14 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %15 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %18 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vx_set_pipe_cmd_params(%struct.vx_rmh* %8, i32 %16, i32 %19, i32 0)
  %21 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %22 = call i32 @vx_send_msg(%struct.vx_core* %21, %struct.vx_rmh* %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %8, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1048575
  %33 = shl i32 %32, 24
  %34 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %8, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %33, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %41 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %46 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %49 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %53 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %27
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %64 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %59, %27
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %70 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %25
  %74 = load i32, i32* %4, align 4
  ret i32 %74
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

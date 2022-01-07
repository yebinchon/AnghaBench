; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_pcm.c_siu_pcm_stmwrite_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_pcm.c_siu_pcm_stmwrite_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siu_port = type { %struct.siu_stream }
%struct.siu_stream = type { i32, i64, i64 }

@EPERM = common dso_local global i32 0, align 4
@RWF_STM_WT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siu_port*)* @siu_pcm_stmwrite_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siu_pcm_stmwrite_start(%struct.siu_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siu_port*, align 8
  %4 = alloca %struct.siu_stream*, align 8
  store %struct.siu_port* %0, %struct.siu_port** %3, align 8
  %5 = load %struct.siu_port*, %struct.siu_port** %3, align 8
  %6 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %5, i32 0, i32 0
  store %struct.siu_stream* %6, %struct.siu_stream** %4, align 8
  %7 = load %struct.siu_stream*, %struct.siu_stream** %4, align 8
  %8 = getelementptr inbounds %struct.siu_stream, %struct.siu_stream* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.siu_port*, %struct.siu_port** %3, align 8
  %16 = getelementptr inbounds %struct.siu_port, %struct.siu_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.siu_stream, %struct.siu_stream* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i64, i64* @RWF_STM_WT, align 8
  %19 = load %struct.siu_stream*, %struct.siu_stream** %4, align 8
  %20 = getelementptr inbounds %struct.siu_stream, %struct.siu_stream* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.siu_stream*, %struct.siu_stream** %4, align 8
  %22 = getelementptr inbounds %struct.siu_stream, %struct.siu_stream* %21, i32 0, i32 0
  %23 = call i32 @tasklet_schedule(i32* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

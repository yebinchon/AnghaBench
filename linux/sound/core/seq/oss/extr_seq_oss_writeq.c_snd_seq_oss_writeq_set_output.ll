; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_set_output.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_set_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_writeq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_seq_client_pool = type { i32, i32 }

@SNDRV_SEQ_IOCTL_GET_CLIENT_POOL = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_SET_CLIENT_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_oss_writeq_set_output(%struct.seq_oss_writeq* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_oss_writeq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_client_pool, align 4
  store %struct.seq_oss_writeq* %0, %struct.seq_oss_writeq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %7 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %13 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @SNDRV_SEQ_IOCTL_GET_CLIENT_POOL, align 4
  %16 = call i32 @snd_seq_oss_control(%struct.TYPE_2__* %14, i32 %15, %struct.snd_seq_client_pool* %5)
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %20 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* @SNDRV_SEQ_IOCTL_SET_CLIENT_POOL, align 4
  %23 = call i32 @snd_seq_oss_control(%struct.TYPE_2__* %21, i32 %22, %struct.snd_seq_client_pool* %5)
  ret void
}

declare dso_local i32 @snd_seq_oss_control(%struct.TYPE_2__*, i32, %struct.snd_seq_client_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

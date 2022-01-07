; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_seq_device = type { i32 }
%struct.snd_opl4 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @snd_opl4_seq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl4_seq_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_seq_device*, align 8
  %5 = alloca %struct.snd_opl4*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.snd_seq_device* @to_seq_dev(%struct.device* %6)
  store %struct.snd_seq_device* %7, %struct.snd_seq_device** %4, align 8
  %8 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %9 = call i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device* %8)
  %10 = inttoptr i64 %9 to %struct.snd_opl4**
  %11 = load %struct.snd_opl4*, %struct.snd_opl4** %10, align 8
  store %struct.snd_opl4* %11, %struct.snd_opl4** %5, align 8
  %12 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %13 = icmp ne %struct.snd_opl4* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %19 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %24 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_seq_delete_kernel_client(i32 %25)
  %27 = load %struct.snd_opl4*, %struct.snd_opl4** %5, align 8
  %28 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %17
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.snd_seq_device* @to_seq_dev(%struct.device*) #1

declare dso_local i64 @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

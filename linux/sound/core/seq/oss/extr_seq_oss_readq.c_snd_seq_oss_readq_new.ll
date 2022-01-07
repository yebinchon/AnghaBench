; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_readq = type { i32, i64, i32, i32, i32, i64, i64, i64, i32 }
%struct.seq_oss_devinfo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_SEQ_OSS_MAX_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.seq_oss_readq* @snd_seq_oss_readq_new(%struct.seq_oss_devinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_oss_readq*, align 8
  %4 = alloca %struct.seq_oss_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_oss_readq*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.seq_oss_readq* @kzalloc(i32 64, i32 %7)
  store %struct.seq_oss_readq* %8, %struct.seq_oss_readq** %6, align 8
  %9 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %10 = icmp ne %struct.seq_oss_readq* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.seq_oss_readq* null, %struct.seq_oss_readq** %3, align 8
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kcalloc(i32 %13, i32 4, i32 %14)
  %16 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %17 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %19 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %24 = call i32 @kfree(%struct.seq_oss_readq* %23)
  store %struct.seq_oss_readq* null, %struct.seq_oss_readq** %3, align 8
  br label %47

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %28 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %30 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %29, i32 0, i32 7
  store i64 0, i64* %30, align 8
  %31 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %32 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %34 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %36 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %35, i32 0, i32 4
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %39 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %38, i32 0, i32 3
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load i32, i32* @SNDRV_SEQ_OSS_MAX_TIMEOUT, align 4
  %42 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %43 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  %45 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %44, i32 0, i32 1
  store i64 -1, i64* %45, align 8
  %46 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %6, align 8
  store %struct.seq_oss_readq* %46, %struct.seq_oss_readq** %3, align 8
  br label %47

47:                                               ; preds = %25, %22, %11
  %48 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %3, align 8
  ret %struct.seq_oss_readq* %48
}

declare dso_local %struct.seq_oss_readq* @kzalloc(i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.seq_oss_readq*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

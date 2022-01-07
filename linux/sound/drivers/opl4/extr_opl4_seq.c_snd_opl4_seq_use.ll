; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_use.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_seq.c_snd_opl4_seq_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snd_opl4 = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@SNDRV_SEQ_CLIENT_SYSTEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_seq_port_subscribe*)* @snd_opl4_seq_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl4_seq_use(i8* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_seq_port_subscribe*, align 8
  %6 = alloca %struct.snd_opl4*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_opl4*
  store %struct.snd_opl4* %9, %struct.snd_opl4** %6, align 8
  %10 = load %struct.snd_opl4*, %struct.snd_opl4** %6, align 8
  %11 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.snd_opl4*, %struct.snd_opl4** %6, align 8
  %14 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.snd_opl4*, %struct.snd_opl4** %6, align 8
  %19 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.snd_opl4*, %struct.snd_opl4** %6, align 8
  %25 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %5, align 8
  %29 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SNDRV_SEQ_CLIENT_SYSTEM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load %struct.snd_opl4*, %struct.snd_opl4** %6, align 8
  %36 = call i32 @snd_opl4_seq_use_inc(%struct.snd_opl4* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.snd_opl4*, %struct.snd_opl4** %6, align 8
  %41 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.snd_opl4*, %struct.snd_opl4** %6, align 8
  %47 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.snd_opl4*, %struct.snd_opl4** %6, align 8
  %50 = call i32 @snd_opl4_synth_reset(%struct.snd_opl4* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %39, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_opl4_seq_use_inc(%struct.snd_opl4*) #1

declare dso_local i32 @snd_opl4_synth_reset(%struct.snd_opl4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

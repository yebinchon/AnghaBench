; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_dbri = type { i32 }
%struct.dbri_streaminfo = type { i32, i32, i64 }

@DBRI_PLAY = common dso_local global i64 0, align 8
@D_USR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"prepare audio output. %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_dbri_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dbri_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_dbri*, align 8
  %4 = alloca %struct.dbri_streaminfo*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_dbri* %7, %struct.snd_dbri** %3, align 8
  %8 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri* %8, %struct.snd_pcm_substream* %9)
  store %struct.dbri_streaminfo* %10, %struct.dbri_streaminfo** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %11)
  %13 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %14 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i64 @DBRI_STREAMNO(%struct.snd_pcm_substream* %15)
  %17 = load i64, i64* @DBRI_PLAY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %21 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %24 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %23, i32 0, i32 0
  store i32 6, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %27 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %30 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %33 = call i64 @DBRI_STREAMNO(%struct.snd_pcm_substream* %32)
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %35 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %34)
  %36 = call i32 @setup_descs(%struct.snd_dbri* %31, i64 %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %38 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load i32, i32* @D_USR, align 4
  %41 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %4, align 8
  %42 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dprintk(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i64 @DBRI_STREAMNO(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @setup_descs(%struct.snd_dbri*, i64, i32) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

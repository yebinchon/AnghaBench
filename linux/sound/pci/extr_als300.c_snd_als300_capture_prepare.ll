; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i16 }
%struct.snd_als300 = type { i32, i32 }

@RECORD_CONTROL = common dso_local global i32 0, align 4
@TRANSFER_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Period bytes: %d Buffer bytes %d\0A\00", align 1
@RECORD_START = common dso_local global i32 0, align 4
@RECORD_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_als300_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_als300*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_als300* %9, %struct.snd_als300** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call zeroext i16 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %13)
  store i16 %14, i16* %6, align 2
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call zeroext i16 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %15)
  store i16 %16, i16* %7, align 2
  %17 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %18 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %21 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RECORD_CONTROL, align 4
  %24 = call i32 @snd_als300_gcr_read(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @TRANSFER_START, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i16, i16* %6, align 2
  %30 = load i16, i16* %7, align 2
  %31 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i16 zeroext %29, i16 zeroext %30)
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, -65536
  store i32 %33, i32* %3, align 4
  %34 = load i16, i16* %6, align 2
  %35 = zext i16 %34 to i32
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %40 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RECORD_CONTROL, align 4
  %43 = load i32, i32* %3, align 4
  %44 = trunc i32 %43 to i16
  %45 = call i32 @snd_als300_gcr_write(i32 %41, i32 %42, i16 zeroext %44)
  %46 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %47 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RECORD_START, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = load i16, i16* %51, align 2
  %53 = call i32 @snd_als300_gcr_write(i32 %48, i32 %49, i16 zeroext %52)
  %54 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %55 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RECORD_END, align 4
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 0
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %7, align 2
  %63 = zext i16 %62 to i32
  %64 = add nsw i32 %61, %63
  %65 = sub nsw i32 %64, 1
  %66 = trunc i32 %65 to i16
  %67 = call i32 @snd_als300_gcr_write(i32 %56, i32 %57, i16 zeroext %66)
  %68 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %69 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_irq(i32* %69)
  ret i32 0
}

declare dso_local %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local zeroext i16 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local zeroext i16 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_als300_gcr_read(i32, i32) #1

declare dso_local i32 @snd_als300_dbgplay(i8*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @snd_als300_gcr_write(i32, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

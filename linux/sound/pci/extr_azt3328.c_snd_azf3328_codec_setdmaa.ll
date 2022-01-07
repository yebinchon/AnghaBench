; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_codec_setdmaa.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_codec_setdmaa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_azf3328 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_azf3328_codec_data = type { i32, i32 }
%struct.codec_setup_io = type { i64, i64, i64 }
%struct.codec_setup_io.0 = type { i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"odd period length!?\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"missed our input expectations! %u vs. %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"setdma: buffers %08x[%u] / %08x[%u], %u, %u\0A\00", align 1
@IDX_IO_CODEC_DMA_START_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_azf3328*, %struct.snd_azf3328_codec_data*, i64, i32, i32)* @snd_azf3328_codec_setdmaa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_azf3328_codec_setdmaa(%struct.snd_azf3328* %0, %struct.snd_azf3328_codec_data* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_azf3328*, align 8
  %7 = alloca %struct.snd_azf3328_codec_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.codec_setup_io, align 1
  store %struct.snd_azf3328* %0, %struct.snd_azf3328** %6, align 8
  store %struct.snd_azf3328_codec_data* %1, %struct.snd_azf3328_codec_data** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, 1
  %16 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = mul i32 2, %18
  %20 = icmp ne i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %26 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %72, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = udiv i32 %30, 2
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.codec_setup_io, %struct.codec_setup_io* %13, i32 0, i32 0
  store i64 %33, i64* %34, align 1
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %35, %36
  %38 = getelementptr inbounds %struct.codec_setup_io, %struct.codec_setup_io* %13, i32 0, i32 1
  store i64 %37, i64* %38, align 1
  %39 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %40 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.codec_setup_io, %struct.codec_setup_io* %13, i32 0, i32 0
  %45 = load i64, i64* %44, align 1
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds %struct.codec_setup_io, %struct.codec_setup_io* %13, i32 0, i32 1
  %48 = load i64, i64* %47, align 1
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %45, i64 %46, i64 %48, i64 %49, i32 %50, i32 %51)
  %53 = load i64, i64* %12, align 8
  %54 = shl i64 %53, 16
  %55 = load i64, i64* %12, align 8
  %56 = or i64 %54, %55
  %57 = getelementptr inbounds %struct.codec_setup_io, %struct.codec_setup_io* %13, i32 0, i32 2
  store i64 %56, i64* %57, align 1
  %58 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %59 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_lock_irqsave(i32 %60, i64 %61)
  %63 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %64 = load i32, i32* @IDX_IO_CODEC_DMA_START_1, align 4
  %65 = bitcast %struct.codec_setup_io* %13 to %struct.codec_setup_io.0*
  %66 = call i32 @snd_azf3328_codec_outl_multi(%struct.snd_azf3328_codec_data* %63, i32 %64, %struct.codec_setup_io.0* %65, i32 3)
  %67 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %68 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @snd_azf3328_codec_outl_multi(%struct.snd_azf3328_codec_data*, i32, %struct.codec_setup_io.0*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

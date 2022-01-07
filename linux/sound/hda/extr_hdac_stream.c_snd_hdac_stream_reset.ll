; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_stream = type { i64* }

@SD_CTL = common dso_local global i32 0, align 4
@SD_CTL_STREAM_RESET = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_stream_reset(%struct.hdac_stream* %0) #0 {
  %2 = alloca %struct.hdac_stream*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.hdac_stream* %0, %struct.hdac_stream** %2, align 8
  %5 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %6 = call i32 @snd_hdac_stream_clear(%struct.hdac_stream* %5)
  %7 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %8 = load i32, i32* @SD_CTL, align 4
  %9 = load i8, i8* @SD_CTL_STREAM_RESET, align 1
  %10 = call i32 @snd_hdac_stream_updateb(%struct.hdac_stream* %7, i32 %8, i32 0, i8 zeroext %9)
  %11 = call i32 @udelay(i32 3)
  store i32 300, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %14 = load i32, i32* @SD_CTL, align 4
  %15 = call zeroext i8 @snd_hdac_stream_readb(%struct.hdac_stream* %13, i32 %14)
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @SD_CTL_STREAM_RESET, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %3, align 1
  %21 = load i8, i8* %3, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %29

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %12, label %29

29:                                               ; preds = %25, %23
  %30 = load i8, i8* @SD_CTL_STREAM_RESET, align 1
  %31 = zext i8 %30 to i32
  %32 = xor i32 %31, -1
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %3, align 1
  %37 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %38 = load i32, i32* @SD_CTL, align 4
  %39 = load i8, i8* %3, align 1
  %40 = call i32 @snd_hdac_stream_writeb(%struct.hdac_stream* %37, i32 %38, i8 zeroext %39)
  %41 = call i32 @udelay(i32 3)
  store i32 300, i32* %4, align 4
  br label %42

42:                                               ; preds = %55, %29
  %43 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %44 = load i32, i32* @SD_CTL, align 4
  %45 = call zeroext i8 @snd_hdac_stream_readb(%struct.hdac_stream* %43, i32 %44)
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @SD_CTL_STREAM_RESET, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %3, align 1
  %51 = load i8, i8* %3, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %59

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %42, label %59

59:                                               ; preds = %55, %53
  %60 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %61 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %66 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  ret void
}

declare dso_local i32 @snd_hdac_stream_clear(%struct.hdac_stream*) #1

declare dso_local i32 @snd_hdac_stream_updateb(%struct.hdac_stream*, i32, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @snd_hdac_stream_readb(%struct.hdac_stream*, i32) #1

declare dso_local i32 @snd_hdac_stream_writeb(%struct.hdac_stream*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

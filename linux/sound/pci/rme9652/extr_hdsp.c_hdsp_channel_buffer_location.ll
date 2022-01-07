; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_channel_buffer_location.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_channel_buffer_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i32*, i8*, i8* }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@HDSP_CHANNEL_BUFFER_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hdsp*, i32, i32)* @hdsp_channel_buffer_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hdsp_channel_buffer_location(%struct.hdsp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %14 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ true, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* null, i8** %4, align 8
  br label %55

23:                                               ; preds = %17
  %24 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %25 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i8* null, i8** %4, align 8
  br label %55

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %39 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @HDSP_CHANNEL_BUFFER_BYTES, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %4, align 8
  br label %55

46:                                               ; preds = %33
  %47 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %48 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @HDSP_CHANNEL_BUFFER_BYTES, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %46, %37, %32, %22
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

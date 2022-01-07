; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_codec_poke.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_codec_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i64, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"ali_codec_poke: reg(%xh) invalid.\0A\00", align 1
@ALI_5451_V02 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*, i32, i16, i16)* @snd_ali_codec_poke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_codec_poke(%struct.snd_ali* %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.snd_ali*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %11 = load i16, i16* %7, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp sge i32 %12, 128
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i16, i16* %7, align 2
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i16 zeroext %20)
  br label %67

22:                                               ; preds = %4
  %23 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @snd_ali_codec_ready(%struct.snd_ali* %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %67

33:                                               ; preds = %22
  %34 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %35 = call i64 @snd_ali_stimer_ready(%struct.snd_ali* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %67

38:                                               ; preds = %33
  %39 = load i16, i16* %7, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 255
  store i32 %41, i32* %9, align 4
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = shl i32 %43, 16
  %45 = or i32 32768, %44
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, 128
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %38
  %54 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ALI_5451_V02, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, 256
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %53
  %63 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @snd_ali_5451_poke(%struct.snd_ali* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %37, %32, %14
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i16 zeroext) #1

declare dso_local i64 @snd_ali_codec_ready(%struct.snd_ali*, i32) #1

declare dso_local i64 @snd_ali_stimer_ready(%struct.snd_ali*) #1

declare dso_local i32 @snd_ali_5451_poke(%struct.snd_ali*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

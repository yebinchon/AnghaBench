; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_codec_peek.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_codec_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"ali_codec_peek: reg(%xh) invalid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ali*, i32, i16)* @snd_ali_codec_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_ali_codec_peek(%struct.snd_ali* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.snd_ali*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  %10 = load i16, i16* %7, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp sge i32 %11, 128
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i16, i16* %7, align 2
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i16 zeroext %19)
  store i16 -1, i16* %4, align 2
  br label %70

21:                                               ; preds = %3
  %22 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %23 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @snd_ali_codec_ready(%struct.snd_ali* %27, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i16 -1, i16* %4, align 2
  br label %70

32:                                               ; preds = %21
  %33 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %34 = call i64 @snd_ali_stimer_ready(%struct.snd_ali* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i16 -1, i16* %4, align 2
  br label %70

37:                                               ; preds = %32
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 255
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, 32768
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, 128
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @snd_ali_5451_poke(%struct.snd_ali* %49, i32 %50, i32 %51)
  %53 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %54 = call i64 @snd_ali_stimer_ready(%struct.snd_ali* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i16 -1, i16* %4, align 2
  br label %70

57:                                               ; preds = %48
  %58 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @snd_ali_codec_ready(%struct.snd_ali* %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i16 -1, i16* %4, align 2
  br label %70

63:                                               ; preds = %57
  %64 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @snd_ali_5451_peek(%struct.snd_ali* %64, i32 %65)
  %67 = and i32 %66, -65536
  %68 = lshr i32 %67, 16
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %4, align 2
  br label %70

70:                                               ; preds = %63, %62, %56, %36, %31, %13
  %71 = load i16, i16* %4, align 2
  ret i16 %71
}

declare dso_local i32 @dev_err(i32, i8*, i16 zeroext) #1

declare dso_local i64 @snd_ali_codec_ready(%struct.snd_ali*, i32) #1

declare dso_local i64 @snd_ali_stimer_ready(%struct.snd_ali*) #1

declare dso_local i32 @snd_ali_5451_poke(%struct.snd_ali*, i32, i32) #1

declare dso_local i32 @snd_ali_5451_peek(%struct.snd_ali*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_get_mult_div.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_get_mult_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"can't find div rate %d using 48kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, i32)* @get_mult_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mult_div(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %40 [
    i32 8000, label %7
    i32 9600, label %9
    i32 11025, label %11
    i32 16000, label %15
    i32 22050, label %17
    i32 32000, label %21
    i32 44100, label %25
    i32 48000, label %27
    i32 88200, label %28
    i32 96000, label %32
    i32 176400, label %34
    i32 192000, label %38
  ]

7:                                                ; preds = %2
  %8 = call i32 @SDnFMT_DIV(i32 6)
  store i32 %8, i32* %3, align 4
  br label %46

9:                                                ; preds = %2
  %10 = call i32 @SDnFMT_DIV(i32 5)
  store i32 %10, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = call i32 @SDnFMT_BASE(i32 1)
  %13 = call i32 @SDnFMT_DIV(i32 4)
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = call i32 @SDnFMT_DIV(i32 3)
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = call i32 @SDnFMT_BASE(i32 1)
  %19 = call i32 @SDnFMT_DIV(i32 2)
  %20 = or i32 %18, %19
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = call i32 @SDnFMT_DIV(i32 3)
  %23 = call i32 @SDnFMT_MULT(i32 2)
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  %26 = call i32 @SDnFMT_BASE(i32 1)
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

28:                                               ; preds = %2
  %29 = call i32 @SDnFMT_BASE(i32 1)
  %30 = call i32 @SDnFMT_MULT(i32 2)
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %2
  %33 = call i32 @SDnFMT_MULT(i32 2)
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %2
  %35 = call i32 @SDnFMT_BASE(i32 1)
  %36 = call i32 @SDnFMT_MULT(i32 4)
  %37 = or i32 %35, %36
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %2
  %39 = call i32 @SDnFMT_MULT(i32 4)
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %2
  %41 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %42 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %38, %34, %32, %28, %27, %25, %21, %17, %15, %11, %9, %7
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @SDnFMT_DIV(i32) #1

declare dso_local i32 @SDnFMT_BASE(i32) #1

declare dso_local i32 @SDnFMT_MULT(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_compute_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_hal2.c_hal2_compute_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hal2_codec = type { i32, i32, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hal2_codec*, i32)* @hal2_compute_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal2_compute_rate(%struct.hal2_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hal2_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.hal2_codec* %0, %struct.hal2_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = urem i32 44100, %6
  %8 = load i32, i32* %4, align 4
  %9 = urem i32 48000, %8
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = udiv i32 176400, %12
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %5, align 2
  %15 = load %struct.hal2_codec*, %struct.hal2_codec** %3, align 8
  %16 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %15, i32 0, i32 0
  store i32 44100, i32* %16, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = udiv i32 192000, %18
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %5, align 2
  %21 = load %struct.hal2_codec*, %struct.hal2_codec** %3, align 8
  %22 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %21, i32 0, i32 0
  store i32 48000, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.hal2_codec*, %struct.hal2_codec** %3, align 8
  %25 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %24, i32 0, i32 1
  store i32 4, i32* %25, align 4
  %26 = load i16, i16* %5, align 2
  %27 = load %struct.hal2_codec*, %struct.hal2_codec** %3, align 8
  %28 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %27, i32 0, i32 2
  store i16 %26, i16* %28, align 4
  %29 = load %struct.hal2_codec*, %struct.hal2_codec** %3, align 8
  %30 = getelementptr inbounds %struct.hal2_codec, %struct.hal2_codec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 4, %31
  %33 = load i16, i16* %5, align 2
  %34 = zext i16 %33 to i32
  %35 = sdiv i32 %32, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

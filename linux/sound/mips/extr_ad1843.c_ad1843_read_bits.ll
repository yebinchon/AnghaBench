; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_ad1843.c_ad1843_read_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_ad1843.c_ad1843_read_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1843 = type { i32 (i32, i32)*, i32 }
%struct.ad1843_bitfield = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ad1843*, %struct.ad1843_bitfield*)* @ad1843_read_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1843_read_bits(%struct.snd_ad1843* %0, %struct.ad1843_bitfield* %1) #0 {
  %3 = alloca %struct.snd_ad1843*, align 8
  %4 = alloca %struct.ad1843_bitfield*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_ad1843* %0, %struct.snd_ad1843** %3, align 8
  store %struct.ad1843_bitfield* %1, %struct.ad1843_bitfield** %4, align 8
  %6 = load %struct.snd_ad1843*, %struct.snd_ad1843** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ad1843, %struct.snd_ad1843* %6, i32 0, i32 0
  %8 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %9 = load %struct.snd_ad1843*, %struct.snd_ad1843** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ad1843, %struct.snd_ad1843* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ad1843_bitfield*, %struct.ad1843_bitfield** %4, align 8
  %13 = getelementptr inbounds %struct.ad1843_bitfield, %struct.ad1843_bitfield* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 %8(i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ad1843_bitfield*, %struct.ad1843_bitfield** %4, align 8
  %18 = getelementptr inbounds %struct.ad1843_bitfield, %struct.ad1843_bitfield* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %16, %19
  %21 = load %struct.ad1843_bitfield*, %struct.ad1843_bitfield** %4, align 8
  %22 = getelementptr inbounds %struct.ad1843_bitfield, %struct.ad1843_bitfield* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %20, %25
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

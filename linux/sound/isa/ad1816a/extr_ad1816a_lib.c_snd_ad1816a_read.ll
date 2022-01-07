; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { i32 }

@AD1816A_INDIR_ADDR = common dso_local global i32 0, align 4
@AD1816A_INDIR_DATA_LOW = common dso_local global i32 0, align 4
@AD1816A_INDIR_DATA_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ad1816a*, i8)* @snd_ad1816a_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_ad1816a_read(%struct.snd_ad1816a* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_ad1816a*, align 8
  %4 = alloca i8, align 1
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %6 = load i32, i32* @AD1816A_INDIR_ADDR, align 4
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 63
  %10 = trunc i32 %9 to i8
  %11 = call i32 @snd_ad1816a_out(%struct.snd_ad1816a* %5, i32 %6, i8 zeroext %10)
  %12 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %13 = load i32, i32* @AD1816A_INDIR_DATA_LOW, align 4
  %14 = call i32 @snd_ad1816a_in(%struct.snd_ad1816a* %12, i32 %13)
  %15 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %16 = load i32, i32* @AD1816A_INDIR_DATA_HIGH, align 4
  %17 = call i32 @snd_ad1816a_in(%struct.snd_ad1816a* %15, i32 %16)
  %18 = shl i32 %17, 8
  %19 = or i32 %14, %18
  %20 = trunc i32 %19 to i16
  ret i16 %20
}

declare dso_local i32 @snd_ad1816a_out(%struct.snd_ad1816a*, i32, i8 zeroext) #1

declare dso_local i32 @snd_ad1816a_in(%struct.snd_ad1816a*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

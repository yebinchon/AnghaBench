; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c_snd_gf1_read_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c_snd_gf1_read_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_read_addr(%struct.snd_gus_card* %0, i8 zeroext %1, i16 signext %2) #0 {
  %4 = alloca %struct.snd_gus_card*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %4, align 8
  store i8 %1, i8* %5, align 1
  store i16 %2, i16* %6, align 2
  %7 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %8 = load i8, i8* %5, align 1
  %9 = load i16, i16* %6, align 2
  %10 = call i32 @__snd_gf1_read_addr(%struct.snd_gus_card* %7, i8 zeroext %8, i16 signext %9)
  ret i32 %10
}

declare dso_local i32 @__snd_gf1_read_addr(%struct.snd_gus_card*, i8 zeroext, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

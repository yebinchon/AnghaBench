; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_mixer_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_mixer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ac97c = type { i32, i32 }
%struct.snd_ac97_template = type { %struct.atmel_ac97c* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_ac97c*)* @atmel_ac97c_mixer_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_mixer_new(%struct.atmel_ac97c* %0) #0 {
  %2 = alloca %struct.atmel_ac97c*, align 8
  %3 = alloca %struct.snd_ac97_template, align 8
  store %struct.atmel_ac97c* %0, %struct.atmel_ac97c** %2, align 8
  %4 = call i32 @memset(%struct.snd_ac97_template* %3, i32 0, i32 8)
  %5 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %2, align 8
  %6 = getelementptr inbounds %struct.snd_ac97_template, %struct.snd_ac97_template* %3, i32 0, i32 0
  store %struct.atmel_ac97c* %5, %struct.atmel_ac97c** %6, align 8
  %7 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %2, align 8
  %8 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %2, align 8
  %11 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %10, i32 0, i32 0
  %12 = call i32 @snd_ac97_mixer(i32 %9, %struct.snd_ac97_template* %3, i32* %11)
  ret i32 %12
}

declare dso_local i32 @memset(%struct.snd_ac97_template*, i32, i32) #1

declare dso_local i32 @snd_ac97_mixer(i32, %struct.snd_ac97_template*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

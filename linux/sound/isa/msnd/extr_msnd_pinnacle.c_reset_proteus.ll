; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle.c_reset_proteus.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle.c_reset_proteus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_msnd = type { i64 }

@HPPRORESET_ON = common dso_local global i32 0, align 4
@HP_PROR = common dso_local global i64 0, align 8
@TIME_PRO_RESET = common dso_local global i32 0, align 4
@HPPRORESET_OFF = common dso_local global i32 0, align 4
@TIME_PRO_RESET_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_msnd*)* @reset_proteus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_proteus(%struct.snd_msnd* %0) #0 {
  %2 = alloca %struct.snd_msnd*, align 8
  store %struct.snd_msnd* %0, %struct.snd_msnd** %2, align 8
  %3 = load i32, i32* @HPPRORESET_ON, align 4
  %4 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %5 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HP_PROR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outb(i32 %3, i64 %8)
  %10 = load i32, i32* @TIME_PRO_RESET, align 4
  %11 = call i32 @msleep(i32 %10)
  %12 = load i32, i32* @HPPRORESET_OFF, align 4
  %13 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %14 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HP_PROR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i32 %12, i64 %17)
  %19 = load i32, i32* @TIME_PRO_RESET_DONE, align 4
  %20 = call i32 @msleep(i32 %19)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

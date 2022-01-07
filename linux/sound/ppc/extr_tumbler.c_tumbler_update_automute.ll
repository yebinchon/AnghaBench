; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_update_automute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_update_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.pmac_tumbler*, i64 }
%struct.pmac_tumbler = type { i32 }

@device_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32)* @tumbler_update_automute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tumbler_update_automute(%struct.snd_pmac* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmac_tumbler*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %11, i32 0, i32 0
  %13 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %12, align 8
  store %struct.pmac_tumbler* %13, %struct.pmac_tumbler** %5, align 8
  %14 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %5, align 8
  %15 = icmp ne %struct.pmac_tumbler* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %26

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %5, align 8
  %24 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i32 @schedule_work(i32* @device_change)
  br label %26

26:                                               ; preds = %20, %21, %2
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

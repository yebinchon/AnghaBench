; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_rcb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_rcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pmac*, i32)* @snd_pmac_burgundy_rcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_burgundy_rcb(%struct.snd_pmac* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %4, align 4
  %16 = add i32 %15, 1048576
  %17 = call i32 @out_le32(i32* %14, i32 %16)
  %18 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %19 = call i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac* %18)
  %20 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %21 = call i32 @snd_pmac_burgundy_extend_wait(%struct.snd_pmac* %20)
  %22 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @in_le32(i32* %25)
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 255
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %32 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac*) #1

declare dso_local i32 @snd_pmac_burgundy_extend_wait(%struct.snd_pmac*) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

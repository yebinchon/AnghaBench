; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_wcw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_wcw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32, i32)* @snd_pmac_burgundy_wcw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_burgundy_wcw(%struct.snd_pmac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_pmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  %12 = add i32 %11, 2100224
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  %15 = add i32 %12, %14
  %16 = call i32 @out_le32(i32* %10, i32 %15)
  %17 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %18 = call i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac* %17)
  %19 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 2100480
  %25 = load i32, i32* %6, align 4
  %26 = lshr i32 %25, 8
  %27 = and i32 %26, 255
  %28 = add i32 %24, %27
  %29 = call i32 @out_le32(i32* %22, i32 %28)
  %30 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %31 = call i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac* %30)
  %32 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 2100736
  %38 = load i32, i32* %6, align 4
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = add i32 %37, %40
  %42 = call i32 @out_le32(i32* %35, i32 %41)
  %43 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %44 = call i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac* %43)
  %45 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %46 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 2100992
  %51 = load i32, i32* %6, align 4
  %52 = lshr i32 %51, 24
  %53 = and i32 %52, 255
  %54 = add i32 %50, %53
  %55 = call i32 @out_le32(i32* %48, i32 %54)
  %56 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %57 = call i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac* %56)
  ret void
}

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

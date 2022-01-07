; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_dbdma_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_dbdma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RUN = common dso_local global i32 0, align 4
@PAUSE = common dso_local global i32 0, align 4
@FLUSH = common dso_local global i32 0, align 4
@WAKE = common dso_local global i32 0, align 4
@DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*)* @snd_pmac_dbdma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_dbdma_reset(%struct.snd_pmac* %0) #0 {
  %2 = alloca %struct.snd_pmac*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %2, align 8
  %3 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %4 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* @RUN, align 4
  %9 = load i32, i32* @PAUSE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FLUSH, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WAKE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DEAD, align 4
  %16 = or i32 %14, %15
  %17 = shl i32 %16, 16
  %18 = call i32 @out_le32(i32* %7, i32 %17)
  %19 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %20 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %19, i32 0, i32 1
  %21 = call i32 @snd_pmac_wait_ack(%struct.TYPE_4__* %20)
  %22 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* @RUN, align 4
  %28 = load i32, i32* @PAUSE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FLUSH, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @WAKE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DEAD, align 4
  %35 = or i32 %33, %34
  %36 = shl i32 %35, 16
  %37 = call i32 @out_le32(i32* %26, i32 %36)
  %38 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %39 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %38, i32 0, i32 0
  %40 = call i32 @snd_pmac_wait_ack(%struct.TYPE_4__* %39)
  ret void
}

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @snd_pmac_wait_ack(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

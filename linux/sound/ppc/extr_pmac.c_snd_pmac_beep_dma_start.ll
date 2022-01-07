; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_beep_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_beep_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.pmac_stream }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pmac_stream = type { i32 }

@OUTPUT_MORE = common dso_local global i32 0, align 4
@BR_ALWAYS = common dso_local global i32 0, align 4
@RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pmac_beep_dma_start(%struct.snd_pmac* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmac_stream*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %10, i32 0, i32 2
  store %struct.pmac_stream* %11, %struct.pmac_stream** %9, align 8
  %12 = load %struct.pmac_stream*, %struct.pmac_stream** %9, align 8
  %13 = call i32 @snd_pmac_dma_stop(%struct.pmac_stream* %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  store i8* %15, i8** %20, align 8
  %21 = call i8* @cpu_to_le16(i32 0)
  %22 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i8* %21, i8** %26, align 8
  %27 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @cpu_to_le32(i64 %30)
  %32 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i8* %31, i8** %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i8* @cpu_to_le32(i64 %37)
  %39 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %38, i8** %43, align 8
  %44 = load i32, i32* @OUTPUT_MORE, align 4
  %45 = load i32, i32* @BR_ALWAYS, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %49 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i8* %47, i8** %52, align 8
  %53 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %58 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = call i32 @in_le32(i32* %60)
  %62 = and i32 %61, -7937
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %62, %64
  %66 = call i32 @out_le32(i32* %56, i32 %65)
  %67 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %68 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 @out_le32(i32* %70, i32 0)
  %72 = load %struct.pmac_stream*, %struct.pmac_stream** %9, align 8
  %73 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %74 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %73, i32 0, i32 0
  %75 = call i32 @snd_pmac_dma_set_command(%struct.pmac_stream* %72, %struct.TYPE_6__* %74)
  %76 = load %struct.pmac_stream*, %struct.pmac_stream** %9, align 8
  %77 = load i32, i32* @RUN, align 4
  %78 = call i32 @snd_pmac_dma_run(%struct.pmac_stream* %76, i32 %77)
  ret void
}

declare dso_local i32 @snd_pmac_dma_stop(%struct.pmac_stream*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @snd_pmac_dma_set_command(%struct.pmac_stream*, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_pmac_dma_run(%struct.pmac_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

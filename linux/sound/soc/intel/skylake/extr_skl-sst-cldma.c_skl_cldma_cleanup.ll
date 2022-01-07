; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-cldma.c_skl_cldma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_dsp*)* @skl_cldma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_cldma_cleanup(%struct.sst_dsp* %0) #0 {
  %2 = alloca %struct.sst_dsp*, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %2, align 8
  %3 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %4 = call i32 @skl_cldma_cleanup_spb(%struct.sst_dsp* %3)
  %5 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %6 = call i32 @skl_cldma_stream_clear(%struct.sst_dsp* %5)
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %8 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (i32, i32*)*, i32 (i32, i32*)** %9, align 8
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %12 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %15 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 %10(i32 %13, i32* %16)
  %18 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %19 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32*)*, i32 (i32, i32*)** %20, align 8
  %22 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %23 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sst_dsp*, %struct.sst_dsp** %2, align 8
  %26 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 %21(i32 %24, i32* %27)
  ret void
}

declare dso_local i32 @skl_cldma_cleanup_spb(%struct.sst_dsp*) #1

declare dso_local i32 @skl_cldma_stream_clear(%struct.sst_dsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

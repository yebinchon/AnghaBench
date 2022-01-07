; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_check_D0i0.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_check_D0i0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.sst_dsp.0*)*, i32 (%struct.sst_dsp.1*)* }
%struct.sst_dsp.0 = type opaque
%struct.sst_dsp.1 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_ipc_check_D0i0(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %8 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.sst_dsp.0*)*, i32 (%struct.sst_dsp.0*)** %9, align 8
  %11 = icmp ne i32 (%struct.sst_dsp.0*)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %18 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.sst_dsp.0*)*, i32 (%struct.sst_dsp.0*)** %19, align 8
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %22 = bitcast %struct.sst_dsp* %21 to %struct.sst_dsp.0*
  %23 = call i32 %20(%struct.sst_dsp.0* %22)
  store i32 %23, i32* %6, align 4
  br label %32

24:                                               ; preds = %13
  %25 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %26 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.sst_dsp.1*)*, i32 (%struct.sst_dsp.1*)** %27, align 8
  %29 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %30 = bitcast %struct.sst_dsp* %29 to %struct.sst_dsp.1*
  %31 = call i32 %28(%struct.sst_dsp.1* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

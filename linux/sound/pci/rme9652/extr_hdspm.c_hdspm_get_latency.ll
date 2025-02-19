; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_get_latency.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_get_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i64, i32 }

@RayDAT = common dso_local global i64 0, align 8
@AIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*)* @hdspm_get_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_get_latency(%struct.hdspm* %0) #0 {
  %2 = alloca %struct.hdspm*, align 8
  %3 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %2, align 8
  %4 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %5 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @hdspm_decode_latency(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i64, i64* @RayDAT, align 8
  %12 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %13 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i64, i64* @AIO, align 8
  %18 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %19 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %10
  store i32 -1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %16, %1
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 6
  %26 = shl i32 1, %25
  ret i32 %26
}

declare dso_local i32 @hdspm_decode_latency(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

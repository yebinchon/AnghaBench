; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_get_samplerate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_get_samplerate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sigmadsp*, i32)* @sigmadsp_get_samplerate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigmadsp_get_samplerate_mask(%struct.sigmadsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigmadsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sigmadsp* %0, %struct.sigmadsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.sigmadsp*, %struct.sigmadsp** %4, align 8
  %12 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.sigmadsp*, %struct.sigmadsp** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @sigmadsp_rate_to_index(%struct.sigmadsp* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @BIT(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %23, %22, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @sigmadsp_rate_to_index(%struct.sigmadsp*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

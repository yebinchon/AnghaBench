; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_stream_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_stream_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { %struct.fsi_stream, %struct.fsi_stream }
%struct.fsi_stream = type { i32 }
%struct.device = type { i32 }

@probe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, %struct.device*)* @fsi_stream_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_stream_probe(%struct.fsi_priv* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fsi_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %10 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %9, i32 0, i32 1
  store %struct.fsi_stream* %10, %struct.fsi_stream** %6, align 8
  %11 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %12 = load i32, i32* @probe, align 4
  %13 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %14 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @fsi_stream_handler_call(%struct.fsi_stream* %11, i32 %12, %struct.fsi_priv* %13, %struct.fsi_stream* %14, %struct.device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %18 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %17, i32 0, i32 0
  store %struct.fsi_stream* %18, %struct.fsi_stream** %6, align 8
  %19 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %20 = load i32, i32* @probe, align 4
  %21 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %22 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @fsi_stream_handler_call(%struct.fsi_stream* %19, i32 %20, %struct.fsi_priv* %21, %struct.fsi_stream* %22, %struct.device* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %32, %27
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @fsi_stream_handler_call(%struct.fsi_stream*, i32, %struct.fsi_priv*, %struct.fsi_stream*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

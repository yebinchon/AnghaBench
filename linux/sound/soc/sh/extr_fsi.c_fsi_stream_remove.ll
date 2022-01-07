; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_stream_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_stream_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { %struct.fsi_stream, %struct.fsi_stream }
%struct.fsi_stream = type { i32 }

@remove = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*)* @fsi_stream_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_stream_remove(%struct.fsi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca %struct.fsi_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  %7 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %8 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %7, i32 0, i32 1
  store %struct.fsi_stream* %8, %struct.fsi_stream** %4, align 8
  %9 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %10 = load i32, i32* @remove, align 4
  %11 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %12 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %13 = call i32 @fsi_stream_handler_call(%struct.fsi_stream* %9, i32 %10, %struct.fsi_priv* %11, %struct.fsi_stream* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %15 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %14, i32 0, i32 0
  store %struct.fsi_stream* %15, %struct.fsi_stream** %4, align 8
  %16 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %17 = load i32, i32* @remove, align 4
  %18 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %19 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %20 = call i32 @fsi_stream_handler_call(%struct.fsi_stream* %16, i32 %17, %struct.fsi_priv* %18, %struct.fsi_stream* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @fsi_stream_handler_call(%struct.fsi_stream*, i32, %struct.fsi_priv*, %struct.fsi_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_get_port_shift.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_get_port_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32 }

@AO_SHIFT = common dso_local global i32 0, align 4
@AI_SHIFT = common dso_local global i32 0, align 4
@BO_SHIFT = common dso_local global i32 0, align 4
@BI_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, %struct.fsi_stream*)* @fsi_get_port_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_get_port_shift(%struct.fsi_priv* %0, %struct.fsi_stream* %1) #0 {
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca %struct.fsi_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %4, align 8
  %8 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %9 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %10 = call i32 @fsi_stream_is_play(%struct.fsi_priv* %8, %struct.fsi_stream* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %12 = call i32 @fsi_is_port_a(%struct.fsi_priv* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @AO_SHIFT, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @AI_SHIFT, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @BO_SHIFT, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @BI_SHIFT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %22
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @fsi_stream_is_play(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @fsi_is_port_a(%struct.fsi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

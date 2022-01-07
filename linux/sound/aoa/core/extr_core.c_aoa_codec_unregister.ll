; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/core/extr_core.c_aoa_codec_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/core/extr_core.c_aoa_codec_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.aoa_codec*)* }
%struct.aoa_codec = type { i32, i32*, i32 (%struct.aoa_codec*)*, i32 }

@fabric = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aoa_codec_unregister(%struct.aoa_codec* %0) #0 {
  %2 = alloca %struct.aoa_codec*, align 8
  store %struct.aoa_codec* %0, %struct.aoa_codec** %2, align 8
  %3 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %4 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %3, i32 0, i32 3
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %7 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %12 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %11, i32 0, i32 2
  %13 = load i32 (%struct.aoa_codec*)*, i32 (%struct.aoa_codec*)** %12, align 8
  %14 = icmp ne i32 (%struct.aoa_codec*)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %17 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %16, i32 0, i32 2
  %18 = load i32 (%struct.aoa_codec*)*, i32 (%struct.aoa_codec*)** %17, align 8
  %19 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %20 = call i32 %18(%struct.aoa_codec* %19)
  br label %21

21:                                               ; preds = %15, %10, %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fabric, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fabric, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.aoa_codec*)*, i32 (%struct.aoa_codec*)** %26, align 8
  %28 = icmp ne i32 (%struct.aoa_codec*)* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fabric, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.aoa_codec*)*, i32 (%struct.aoa_codec*)** %31, align 8
  %33 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %34 = call i32 %32(%struct.aoa_codec* %33)
  br label %35

35:                                               ; preds = %29, %24, %21
  %36 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %37 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %39 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @module_put(i32 %40)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

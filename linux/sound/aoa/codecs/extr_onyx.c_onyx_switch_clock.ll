; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_switch_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_onyx.c_onyx_switch_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codec_info_item = type { %struct.onyx* }
%struct.onyx = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.codec_info_item*, i32)* @onyx_switch_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_switch_clock(%struct.codec_info_item* %0, i32 %1) #0 {
  %3 = alloca %struct.codec_info_item*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.onyx*, align 8
  store %struct.codec_info_item* %0, %struct.codec_info_item** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.codec_info_item*, %struct.codec_info_item** %3, align 8
  %7 = getelementptr inbounds %struct.codec_info_item, %struct.codec_info_item* %6, i32 0, i32 0
  %8 = load %struct.onyx*, %struct.onyx** %7, align 8
  store %struct.onyx* %8, %struct.onyx** %5, align 8
  %9 = load %struct.onyx*, %struct.onyx** %5, align 8
  %10 = getelementptr inbounds %struct.onyx, %struct.onyx* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %41 [
    i32 129, label %13
    i32 128, label %27
  ]

13:                                               ; preds = %2
  %14 = load %struct.onyx*, %struct.onyx** %5, align 8
  %15 = getelementptr inbounds %struct.onyx, %struct.onyx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %20, align 8
  %22 = load %struct.onyx*, %struct.onyx** %5, align 8
  %23 = getelementptr inbounds %struct.onyx, %struct.onyx* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i32 %21(%struct.TYPE_7__* %25)
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.onyx*, %struct.onyx** %5, align 8
  %29 = getelementptr inbounds %struct.onyx, %struct.onyx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %34, align 8
  %36 = load %struct.onyx*, %struct.onyx** %5, align 8
  %37 = getelementptr inbounds %struct.onyx, %struct.onyx* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call i32 %35(%struct.TYPE_7__* %39)
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %27, %13
  %43 = load %struct.onyx*, %struct.onyx** %5, align 8
  %44 = getelementptr inbounds %struct.onyx, %struct.onyx* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

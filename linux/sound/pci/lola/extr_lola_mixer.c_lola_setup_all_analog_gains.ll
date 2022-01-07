; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_setup_all_analog_gains.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_setup_all_analog_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.lola_pin* }
%struct.lola_pin = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lola_setup_all_analog_gains(%struct.lola* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lola*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lola_pin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lola*, %struct.lola** %4, align 8
  %12 = getelementptr inbounds %struct.lola, %struct.lola* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.lola_pin*, %struct.lola_pin** %17, align 8
  store %struct.lola_pin* %18, %struct.lola_pin** %7, align 8
  %19 = load %struct.lola*, %struct.lola** %4, align 8
  %20 = getelementptr inbounds %struct.lola, %struct.lola* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %58, %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %32, i64 %34
  %36 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %50

43:                                               ; preds = %39
  %44 = load %struct.lola_pin*, %struct.lola_pin** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %44, i64 %46
  %48 = getelementptr inbounds %struct.lola_pin, %struct.lola_pin* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  br label %50

50:                                               ; preds = %43, %42
  %51 = phi i32 [ 0, %42 ], [ %49, %43 ]
  store i32 %51, i32* %10, align 4
  %52 = load %struct.lola*, %struct.lola** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @set_analog_volume(%struct.lola* %52, i32 %53, i32 %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %50, %31
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load %struct.lola*, %struct.lola** %4, align 8
  %63 = call i32 @lola_codec_flush(%struct.lola* %62)
  ret i32 %63
}

declare dso_local i32 @set_analog_volume(%struct.lola*, i32, i32, i32, i32) #1

declare dso_local i32 @lola_codec_flush(%struct.lola*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

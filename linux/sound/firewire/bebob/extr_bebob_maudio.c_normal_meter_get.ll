; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_normal_meter_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_normal_meter_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_bebob_meter_spec* }
%struct.snd_bebob_meter_spec = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@solo_meter_labels = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32*, i32)* @normal_meter_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normal_meter_get(%struct.snd_bebob* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_bebob*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_bebob_meter_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %13 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %15, align 8
  store %struct.snd_bebob_meter_spec* %16, %struct.snd_bebob_meter_spec** %8, align 8
  %17 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %8, align 8
  %18 = getelementptr inbounds %struct.snd_bebob_meter_spec, %struct.snd_bebob_meter_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %77

30:                                               ; preds = %3
  %31 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @get_meter(%struct.snd_bebob* %31, i8* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %75

39:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @be32_to_cpus(i32* %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %8, align 8
  %55 = getelementptr inbounds %struct.snd_bebob_meter_spec, %struct.snd_bebob_meter_spec* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @solo_meter_labels, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @swap(i32 %62, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @swap(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %59, %53
  br label %75

75:                                               ; preds = %74, %38
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %27
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @get_meter(%struct.snd_bebob*, i8*, i32) #1

declare dso_local i32 @be32_to_cpus(i32*) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

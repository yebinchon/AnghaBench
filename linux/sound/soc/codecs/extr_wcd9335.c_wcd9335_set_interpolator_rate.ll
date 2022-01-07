; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_set_interpolator_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_set_interpolator_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.snd_soc_dai = type { i32 }

@int_mix_rate_val = common dso_local global %struct.TYPE_4__* null, align 8
@int_prim_rate_val = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i64)* @wcd9335_set_interpolator_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_set_interpolator_rate(%struct.snd_soc_dai* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %31, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @int_mix_rate_val, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @int_mix_rate_val, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %12, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @int_mix_rate_val, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @wcd9335_set_mix_interpolator_rate(%struct.snd_soc_dai* %21, i32 %27, i64 %28)
  br label %34

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %6

34:                                               ; preds = %20, %6
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @int_prim_rate_val, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @int_prim_rate_val, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %41, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @int_prim_rate_val, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @wcd9335_set_prim_interpolator_rate(%struct.snd_soc_dai* %50, i32 %56, i64 %57)
  br label %63

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %35

63:                                               ; preds = %49, %35
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @wcd9335_set_mix_interpolator_rate(%struct.snd_soc_dai*, i32, i64) #1

declare dso_local i32 @wcd9335_set_prim_interpolator_rate(%struct.snd_soc_dai*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

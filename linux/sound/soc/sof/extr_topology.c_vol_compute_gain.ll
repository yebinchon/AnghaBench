; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_vol_compute_gain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_vol_compute_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLV_MUTE = common dso_local global i64 0, align 8
@TLV_MIN = common dso_local global i64 0, align 8
@TLV_STEP = common dso_local global i64 0, align 8
@VOL_TWENTIETH_ROOT_OF_TEN = common dso_local global i32 0, align 4
@VOLUME_FWL = common dso_local global i32 0, align 4
@VOL_HALF_DB_STEP = common dso_local global i32 0, align 4
@VOL_FORTIETH_ROOT_OF_TEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @vol_compute_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vol_compute_gain(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* @TLV_MUTE, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %60

18:                                               ; preds = %11, %2
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* @TLV_MIN, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* @TLV_STEP, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %23, %27
  %29 = sdiv i32 %28, 100
  %30 = add nsw i32 %22, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @VOL_TWENTIETH_ROOT_OF_TEN, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @VOLUME_FWL, align 4
  %34 = call i32 @vol_pow32(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* @TLV_STEP, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* @TLV_STEP, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 100
  %44 = sub nsw i32 %38, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @VOL_HALF_DB_STEP, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %18
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @VOL_FORTIETH_ROOT_OF_TEN, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @VOLUME_FWL, align 4
  %57 = call i32 @vol_shift_64(i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %48, %18
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @vol_pow32(i32, i32, i32) #1

declare dso_local i32 @vol_shift_64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

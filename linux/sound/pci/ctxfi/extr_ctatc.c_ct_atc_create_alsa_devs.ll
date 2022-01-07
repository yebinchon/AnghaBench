; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_ct_atc_create_alsa_devs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_ct_atc_create_alsa_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.ct_atc*, i32, i32)*, i32 }
%struct.ct_atc = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@alsa_dev_funcs = common dso_local global %struct.TYPE_4__* null, align 8
@MIXER = common dso_local global i64 0, align 8
@NUM_CTALSADEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Creating alsa device %d failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_atc_create_alsa_devs(%struct.ct_atc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  %6 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %7 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @alsa_dev_funcs, align 8
  %10 = load i64, i64* @MIXER, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %8, i32* %12, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %54, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NUM_CTALSADEVS, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @alsa_dev_funcs, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ct_atc*, i32, i32)*, i32 (%struct.ct_atc*, i32, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.ct_atc*, i32, i32)* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %54

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @alsa_dev_funcs, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ct_atc*, i32, i32)*, i32 (%struct.ct_atc*, i32, i32)** %31, align 8
  %33 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @alsa_dev_funcs, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %32(%struct.ct_atc* %33, i32 %34, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %26
  %45 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %46 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %13

57:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

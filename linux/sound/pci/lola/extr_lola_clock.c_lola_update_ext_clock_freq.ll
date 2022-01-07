; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_update_ext_clock_freq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_update_ext_clock_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@LOLA_UNSOL_RESP_TAG_OFFSET = common dso_local global i32 0, align 4
@LOLA_UNSOLICITED_TAG_MASK = common dso_local global i32 0, align 4
@LOLA_UNSOLICITED_TAG = common dso_local global i32 0, align 4
@LOLA_CLOCK_TYPE_INTERNAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lola_update_ext_clock_freq(%struct.lola* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lola*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LOLA_UNSOL_RESP_TAG_OFFSET, align 4
  %13 = lshr i32 %11, %12
  %14 = load i32, i32* @LOLA_UNSOLICITED_TAG_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LOLA_UNSOLICITED_TAG, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %49

20:                                               ; preds = %10
  %21 = load %struct.lola*, %struct.lola** %4, align 8
  %22 = getelementptr inbounds %struct.lola, %struct.lola* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.lola*, %struct.lola** %4, align 8
  %26 = getelementptr inbounds %struct.lola, %struct.lola* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LOLA_CLOCK_TYPE_INTERNAL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 127
  %37 = call i32 @lola_sample_rate_convert(i32 %36)
  %38 = load %struct.lola*, %struct.lola** %4, align 8
  %39 = getelementptr inbounds %struct.lola, %struct.lola* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 256
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load %struct.lola*, %struct.lola** %4, align 8
  %46 = getelementptr inbounds %struct.lola, %struct.lola* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %34, %20
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %19, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @lola_sample_rate_convert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

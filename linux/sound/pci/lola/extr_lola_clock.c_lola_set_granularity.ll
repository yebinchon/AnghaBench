; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_set_granularity.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_set_granularity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOLA_GRANULARITY_STEP = common dso_local global i32 0, align 4
@LOLA_VERB_SET_GRANULARITY_STEPS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lola_set_granularity(%struct.lola* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lola*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.lola*, %struct.lola** %5, align 8
  %14 = getelementptr inbounds %struct.lola, %struct.lola* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %52

18:                                               ; preds = %11
  %19 = load %struct.lola*, %struct.lola** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.lola*, %struct.lola** %5, align 8
  %22 = getelementptr inbounds %struct.lola, %struct.lola* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @check_gran_clock_compatibility(%struct.lola* %19, i32 %20, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.lola*, %struct.lola** %5, align 8
  %34 = getelementptr inbounds %struct.lola, %struct.lola* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @LOLA_GRANULARITY_STEP, align 4
  %36 = load i32, i32* %6, align 4
  %37 = udiv i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.lola*, %struct.lola** %5, align 8
  %39 = load i32, i32* @LOLA_VERB_SET_GRANULARITY_STEPS, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @lola_codec_write(%struct.lola* %38, i32 1, i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = mul i32 400, %47
  %49 = call i32 @usleep_range(i32 %48, i32 20000)
  %50 = load %struct.lola*, %struct.lola** %5, align 8
  %51 = call i32 @lola_codec_flush(%struct.lola* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %44, %27, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @check_gran_clock_compatibility(%struct.lola*, i32, i32) #1

declare dso_local i32 @lola_codec_write(%struct.lola*, i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @lola_codec_flush(%struct.lola*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

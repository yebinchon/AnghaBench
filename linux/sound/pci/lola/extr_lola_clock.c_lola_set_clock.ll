; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@LOLA_CLOCK_TYPE_INTERNAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lola_set_clock(%struct.lola* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lola*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.lola*, %struct.lola** %4, align 8
  %11 = getelementptr inbounds %struct.lola, %struct.lola* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %9, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.lola*, %struct.lola** %4, align 8
  %17 = getelementptr inbounds %struct.lola, %struct.lola* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.lola*, %struct.lola** %4, align 8
  %21 = getelementptr inbounds %struct.lola, %struct.lola* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  br label %47

24:                                               ; preds = %2
  %25 = load %struct.lola*, %struct.lola** %4, align 8
  %26 = getelementptr inbounds %struct.lola, %struct.lola* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LOLA_CLOCK_TYPE_INTERNAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %24
  %37 = load %struct.lola*, %struct.lola** %4, align 8
  %38 = getelementptr inbounds %struct.lola, %struct.lola* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %36, %24
  br label %47

47:                                               ; preds = %46, %15
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %95

56:                                               ; preds = %50
  %57 = load %struct.lola*, %struct.lola** %4, align 8
  %58 = load %struct.lola*, %struct.lola** %4, align 8
  %59 = getelementptr inbounds %struct.lola, %struct.lola* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @check_gran_clock_compatibility(%struct.lola* %57, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %95

67:                                               ; preds = %56
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.lola*, %struct.lola** %4, align 8
  %70 = getelementptr inbounds %struct.lola, %struct.lola* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %67
  %75 = load %struct.lola*, %struct.lola** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @lola_set_clock_index(%struct.lola* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %95

82:                                               ; preds = %74
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.lola*, %struct.lola** %4, align 8
  %85 = getelementptr inbounds %struct.lola, %struct.lola* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.lola*, %struct.lola** %4, align 8
  %89 = getelementptr inbounds %struct.lola, %struct.lola* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.lola*, %struct.lola** %4, align 8
  %92 = getelementptr inbounds %struct.lola, %struct.lola* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %82, %67
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %80, %64, %53
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @check_gran_clock_compatibility(%struct.lola*, i32, i32) #1

declare dso_local i32 @lola_set_clock_index(%struct.lola*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

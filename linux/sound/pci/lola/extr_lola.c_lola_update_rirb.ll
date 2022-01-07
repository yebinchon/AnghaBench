; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_update_rirb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_update_rirb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32* }

@BAR0 = common dso_local global i32 0, align 4
@RIRBWP = common dso_local global i32 0, align 4
@LOLA_CORB_ENTRIES = common dso_local global i32 0, align 4
@LOLA_RIRB_EX_UNSOL_EV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lola*)* @lola_update_rirb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lola_update_rirb(%struct.lola* %0) #0 {
  %2 = alloca %struct.lola*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %2, align 8
  %7 = load %struct.lola*, %struct.lola** %2, align 8
  %8 = load i32, i32* @BAR0, align 4
  %9 = load i32, i32* @RIRBWP, align 4
  %10 = call i32 @lola_readw(%struct.lola* %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.lola*, %struct.lola** %2, align 8
  %13 = getelementptr inbounds %struct.lola, %struct.lola* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %96

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.lola*, %struct.lola** %2, align 8
  %21 = getelementptr inbounds %struct.lola, %struct.lola* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %95, %18
  %24 = load %struct.lola*, %struct.lola** %2, align 8
  %25 = getelementptr inbounds %struct.lola, %struct.lola* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %96

30:                                               ; preds = %23
  %31 = load %struct.lola*, %struct.lola** %2, align 8
  %32 = getelementptr inbounds %struct.lola, %struct.lola* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @LOLA_CORB_ENTRIES, align 4
  %37 = load %struct.lola*, %struct.lola** %2, align 8
  %38 = getelementptr inbounds %struct.lola, %struct.lola* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = urem i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load %struct.lola*, %struct.lola** %2, align 8
  %43 = getelementptr inbounds %struct.lola, %struct.lola* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %3, align 4
  %47 = load %struct.lola*, %struct.lola** %2, align 8
  %48 = getelementptr inbounds %struct.lola, %struct.lola* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.lola*, %struct.lola** %2, align 8
  %58 = getelementptr inbounds %struct.lola, %struct.lola* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @LOLA_RIRB_EX_UNSOL_EV, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %30
  %71 = load %struct.lola*, %struct.lola** %2, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @lola_queue_unsol_event(%struct.lola* %71, i32 %72, i32 %73)
  br label %95

75:                                               ; preds = %30
  %76 = load %struct.lola*, %struct.lola** %2, align 8
  %77 = getelementptr inbounds %struct.lola, %struct.lola* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.lola*, %struct.lola** %2, align 8
  %84 = getelementptr inbounds %struct.lola, %struct.lola* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.lola*, %struct.lola** %2, align 8
  %87 = getelementptr inbounds %struct.lola, %struct.lola* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = call i32 (...) @smp_wmb()
  %89 = load %struct.lola*, %struct.lola** %2, align 8
  %90 = getelementptr inbounds %struct.lola, %struct.lola* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, -1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %81, %75
  br label %95

95:                                               ; preds = %94, %70
  br label %23

96:                                               ; preds = %17, %23
  ret void
}

declare dso_local i32 @lola_readw(%struct.lola*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @lola_queue_unsol_event(%struct.lola*, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

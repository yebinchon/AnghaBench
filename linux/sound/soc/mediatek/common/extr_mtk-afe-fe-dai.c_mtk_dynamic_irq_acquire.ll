; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_dynamic_irq_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_dynamic_irq_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_dynamic_irq_acquire(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  %5 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %14
  %25 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %26 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %42 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %24
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_dynamic_irq_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-afe-fe-dai.c_mtk_dynamic_irq_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_dynamic_irq_release(%struct.mtk_base_afe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %7 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  store i32 0, i32* %3, align 4
  br label %34

28:                                               ; preds = %11, %2
  %29 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

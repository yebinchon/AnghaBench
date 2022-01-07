; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i64, %struct.TYPE_7__*, %struct.pcxhr_mgr*, %struct.TYPE_6__, i64, %struct.TYPE_5__** }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"reset pcxhr !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*)* @pcxhr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_free(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca %struct.pcxhr_mgr*, align 8
  %3 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %7 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %12 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %11, i32 0, i32 6
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i64 %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %21 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %20, i32 0, i32 6
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %22, i64 %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_card_free(i32 %28)
  br label %30

30:                                               ; preds = %19, %10
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %4

34:                                               ; preds = %4
  %35 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %36 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %41 = call i32 @pcxhr_reset_board(%struct.pcxhr_mgr* %40)
  %42 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %43 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %49 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %54 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %57 = call i32 @free_irq(i64 %55, %struct.pcxhr_mgr* %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %60 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = call i32 @pci_release_regions(%struct.TYPE_7__* %61)
  %63 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %64 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %70 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %69, i32 0, i32 4
  %71 = call i32 @snd_dma_free_pages(%struct.TYPE_6__* %70)
  %72 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %73 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %58
  %76 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %77 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %76, i32 0, i32 3
  %78 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %77, align 8
  %79 = call i32 @kfree(%struct.pcxhr_mgr* %78)
  %80 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %81 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @pci_disable_device(%struct.TYPE_7__* %82)
  %84 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %85 = call i32 @kfree(%struct.pcxhr_mgr* %84)
  ret i32 0
}

declare dso_local i32 @snd_card_free(i32) #1

declare dso_local i32 @pcxhr_reset_board(%struct.pcxhr_mgr*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @free_irq(i64, %struct.pcxhr_mgr*) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_7__*) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

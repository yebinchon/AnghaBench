; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_7__*, i64, %struct.TYPE_6__** }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"reset miXart !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixart_mgr*)* @snd_mixart_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_free(%struct.mixart_mgr* %0) #0 {
  %2 = alloca %struct.mixart_mgr*, align 8
  %3 = alloca i32, align 4
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %7 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %12 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %11, i32 0, i32 7
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 %15
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %21 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %20, i32 0, i32 7
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
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
  %35 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %36 = call i32 @snd_mixart_exit_mailbox(%struct.mixart_mgr* %35)
  %37 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %38 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %43 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %46 = call i32 @free_irq(i64 %44, %struct.mixart_mgr* %45)
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %49 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %54 = call i32 @snd_mixart_reset_board(%struct.mixart_mgr* %53)
  %55 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %56 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %52, %47
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %3, align 4
  %63 = icmp ult i32 %62, 2
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %66 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %65, i32 0, i32 5
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @iounmap(i32 %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %3, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %79 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = call i32 @pci_release_regions(%struct.TYPE_9__* %80)
  %82 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %83 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %77
  %88 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %89 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %88, i32 0, i32 4
  %90 = call i32 @snd_dma_free_pages(%struct.TYPE_8__* %89)
  %91 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %92 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %87, %77
  %95 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %96 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %102 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %101, i32 0, i32 3
  %103 = call i32 @snd_dma_free_pages(%struct.TYPE_8__* %102)
  %104 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %105 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %109 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %108, i32 0, i32 2
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = call i32 @pci_disable_device(%struct.TYPE_9__* %110)
  %112 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %113 = call i32 @kfree(%struct.mixart_mgr* %112)
  ret i32 0
}

declare dso_local i32 @snd_card_free(i32) #1

declare dso_local i32 @snd_mixart_exit_mailbox(%struct.mixart_mgr*) #1

declare dso_local i32 @free_irq(i64, %struct.mixart_mgr*) #1

declare dso_local i32 @snd_mixart_reset_board(%struct.mixart_mgr*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_9__*) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_8__*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.mixart_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_close_device_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_close_device_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@CM_OPEN_CH_MASK = common dso_local global i32 0, align 4
@CM_REG_MISC_CTRL = common dso_local global i32 0, align 4
@CM_ENDBDAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmipci*, i32)* @close_device_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_device_check(%struct.cmipci* %0, i32 %1) #0 {
  %3 = alloca %struct.cmipci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CM_OPEN_CH_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %10 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %13 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %2
  %22 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %23 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %21
  %32 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @snd_cmipci_ch_reset(%struct.cmipci* %32, i32 %33)
  %35 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %36 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %43 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %31, %21
  %50 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %51 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %57 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %49
  %66 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %67 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %74 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %73, i32 0, i32 2
  %75 = call i32 @spin_lock_irq(i32* %74)
  %76 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %77 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %78 = load i32, i32* @CM_ENDBDAC, align 4
  %79 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %76, i32 %77, i32 %78)
  %80 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %81 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock_irq(i32* %81)
  br label %83

83:                                               ; preds = %65, %49
  br label %84

84:                                               ; preds = %83, %2
  %85 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %86 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_cmipci_ch_reset(%struct.cmipci*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

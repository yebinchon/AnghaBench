; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_riptide = type { i64, i32, i32, %struct.snd_riptide*, i32 }
%struct.cmdif = type { i64, i32, i32, %struct.cmdif*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_riptide*)* @snd_riptide_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_free(%struct.snd_riptide* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_riptide*, align 8
  %4 = alloca %struct.cmdif*, align 8
  store %struct.snd_riptide* %0, %struct.snd_riptide** %3, align 8
  %5 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %6 = icmp ne %struct.snd_riptide* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %10 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %9, i32 0, i32 3
  %11 = load %struct.snd_riptide*, %struct.snd_riptide** %10, align 8
  %12 = bitcast %struct.snd_riptide* %11 to %struct.cmdif*
  store %struct.cmdif* %12, %struct.cmdif** %4, align 8
  %13 = icmp ne %struct.cmdif* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %16 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @SET_GRESET(i32 %17)
  %19 = call i32 @udelay(i32 100)
  %20 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %21 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @UNSET_GRESET(i32 %22)
  %24 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %25 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %24, i32 0, i32 3
  %26 = load %struct.snd_riptide*, %struct.snd_riptide** %25, align 8
  %27 = call i32 @kfree(%struct.snd_riptide* %26)
  br label %28

28:                                               ; preds = %14, %8
  %29 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %30 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %35 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %38 = call i32 @free_irq(i64 %36, %struct.snd_riptide* %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %41 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @release_firmware(i32 %42)
  %44 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %45 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @release_and_free_resource(i32 %46)
  %48 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %49 = call i32 @kfree(%struct.snd_riptide* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %39, %7
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @SET_GRESET(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @UNSET_GRESET(i32) #1

declare dso_local i32 @kfree(%struct.snd_riptide*) #1

declare dso_local i32 @free_irq(i64, %struct.snd_riptide*) #1

declare dso_local i32 @release_firmware(i32) #1

declare dso_local i32 @release_and_free_resource(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

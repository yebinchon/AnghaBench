; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i32, i32, i32, i64, i32*, i32 }

@RME96_STOP_BOTH = common dso_local global i32 0, align 4
@RME96_AR_DAC_EN = common dso_local global i32 0, align 4
@RME96_IO_ADDITIONAL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @snd_rme96_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rme96*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rme96*
  store %struct.rme96* %5, %struct.rme96** %3, align 8
  %6 = load %struct.rme96*, %struct.rme96** %3, align 8
  %7 = icmp ne %struct.rme96* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %71

9:                                                ; preds = %1
  %10 = load %struct.rme96*, %struct.rme96** %3, align 8
  %11 = getelementptr inbounds %struct.rme96, %struct.rme96* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = load %struct.rme96*, %struct.rme96** %3, align 8
  %16 = load i32, i32* @RME96_STOP_BOTH, align 4
  %17 = call i32 @snd_rme96_trigger(%struct.rme96* %15, i32 %16)
  %18 = load i32, i32* @RME96_AR_DAC_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.rme96*, %struct.rme96** %3, align 8
  %21 = getelementptr inbounds %struct.rme96, %struct.rme96* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.rme96*, %struct.rme96** %3, align 8
  %25 = getelementptr inbounds %struct.rme96, %struct.rme96* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rme96*, %struct.rme96** %3, align 8
  %28 = getelementptr inbounds %struct.rme96, %struct.rme96* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @RME96_IO_ADDITIONAL_REG, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @writel(i32 %26, i32* %32)
  %34 = load %struct.rme96*, %struct.rme96** %3, align 8
  %35 = getelementptr inbounds %struct.rme96, %struct.rme96* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rme96*, %struct.rme96** %3, align 8
  %38 = bitcast %struct.rme96* %37 to i8*
  %39 = call i32 @free_irq(i32 %36, i8* %38)
  %40 = load %struct.rme96*, %struct.rme96** %3, align 8
  %41 = getelementptr inbounds %struct.rme96, %struct.rme96* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  br label %42

42:                                               ; preds = %14, %9
  %43 = load %struct.rme96*, %struct.rme96** %3, align 8
  %44 = getelementptr inbounds %struct.rme96, %struct.rme96* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.rme96*, %struct.rme96** %3, align 8
  %49 = getelementptr inbounds %struct.rme96, %struct.rme96* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @iounmap(i32* %50)
  %52 = load %struct.rme96*, %struct.rme96** %3, align 8
  %53 = getelementptr inbounds %struct.rme96, %struct.rme96* %52, i32 0, i32 5
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.rme96*, %struct.rme96** %3, align 8
  %56 = getelementptr inbounds %struct.rme96, %struct.rme96* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.rme96*, %struct.rme96** %3, align 8
  %61 = getelementptr inbounds %struct.rme96, %struct.rme96* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pci_release_regions(i32 %62)
  %64 = load %struct.rme96*, %struct.rme96** %3, align 8
  %65 = getelementptr inbounds %struct.rme96, %struct.rme96* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %54
  %67 = load %struct.rme96*, %struct.rme96** %3, align 8
  %68 = getelementptr inbounds %struct.rme96, %struct.rme96* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pci_disable_device(i32 %69)
  br label %71

71:                                               ; preds = %66, %8
  ret void
}

declare dso_local i32 @snd_rme96_trigger(%struct.rme96*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

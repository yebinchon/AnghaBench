; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme32 = type { i32, i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @snd_rme32_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme32_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rme32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rme32*
  store %struct.rme32* %5, %struct.rme32** %3, align 8
  %6 = load %struct.rme32*, %struct.rme32** %3, align 8
  %7 = icmp eq %struct.rme32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %54

9:                                                ; preds = %1
  %10 = load %struct.rme32*, %struct.rme32** %3, align 8
  %11 = getelementptr inbounds %struct.rme32, %struct.rme32* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.rme32*, %struct.rme32** %3, align 8
  %16 = call i32 @snd_rme32_pcm_stop(%struct.rme32* %15, i32 0)
  %17 = load %struct.rme32*, %struct.rme32** %3, align 8
  %18 = getelementptr inbounds %struct.rme32, %struct.rme32* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rme32*, %struct.rme32** %3, align 8
  %21 = bitcast %struct.rme32* %20 to i8*
  %22 = call i32 @free_irq(i32 %19, i8* %21)
  %23 = load %struct.rme32*, %struct.rme32** %3, align 8
  %24 = getelementptr inbounds %struct.rme32, %struct.rme32* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  br label %25

25:                                               ; preds = %14, %9
  %26 = load %struct.rme32*, %struct.rme32** %3, align 8
  %27 = getelementptr inbounds %struct.rme32, %struct.rme32* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.rme32*, %struct.rme32** %3, align 8
  %32 = getelementptr inbounds %struct.rme32, %struct.rme32* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @iounmap(i32* %33)
  %35 = load %struct.rme32*, %struct.rme32** %3, align 8
  %36 = getelementptr inbounds %struct.rme32, %struct.rme32* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.rme32*, %struct.rme32** %3, align 8
  %39 = getelementptr inbounds %struct.rme32, %struct.rme32* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.rme32*, %struct.rme32** %3, align 8
  %44 = getelementptr inbounds %struct.rme32, %struct.rme32* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_release_regions(i32 %45)
  %47 = load %struct.rme32*, %struct.rme32** %3, align 8
  %48 = getelementptr inbounds %struct.rme32, %struct.rme32* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.rme32*, %struct.rme32** %3, align 8
  %51 = getelementptr inbounds %struct.rme32, %struct.rme32* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pci_disable_device(i32 %52)
  br label %54

54:                                               ; preds = %49, %8
  ret void
}

declare dso_local i32 @snd_rme32_pcm_stop(%struct.rme32*, i32) #1

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

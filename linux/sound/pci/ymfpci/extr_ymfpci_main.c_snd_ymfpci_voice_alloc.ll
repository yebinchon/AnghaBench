; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_voice_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_voice_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32 }
%struct.snd_ymfpci_voice = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@YMFPCI_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*, i32, i32, %struct.snd_ymfpci_voice**)* @snd_ymfpci_voice_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_voice_alloc(%struct.snd_ymfpci* %0, i32 %1, i32 %2, %struct.snd_ymfpci_voice** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ymfpci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ymfpci_voice**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_ymfpci_voice** %3, %struct.snd_ymfpci_voice*** %9, align 8
  %12 = load %struct.snd_ymfpci_voice**, %struct.snd_ymfpci_voice*** %9, align 8
  %13 = icmp ne %struct.snd_ymfpci_voice** %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %61

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @YMFPCI_PCM, align 4
  %27 = icmp ne i32 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @snd_BUG_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %61

36:                                               ; preds = %28
  %37 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %38 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %37, i32 0, i32 0
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %36
  %42 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.snd_ymfpci_voice**, %struct.snd_ymfpci_voice*** %9, align 8
  %46 = call i32 @voice_alloc(%struct.snd_ymfpci* %42, i32 %43, i32 %44, %struct.snd_ymfpci_voice** %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @YMFPCI_PCM, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %41
  br label %55

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %53
  %56 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %57 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %56, i32 0, i32 0
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %33, %18
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @voice_alloc(%struct.snd_ymfpci*, i32, i32, %struct.snd_ymfpci_voice**) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

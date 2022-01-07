; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_get_hw_ptr_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_get_hw_ptr_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_aw2_saa7146 = type { i32 }

@PCI_ADP3 = common dso_local global i32 0, align 4
@PCI_ADP1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_aw2_saa7146_get_hw_ptr_playback(%struct.snd_aw2_saa7146* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_aw2_saa7146*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.snd_aw2_saa7146* %0, %struct.snd_aw2_saa7146** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load i32, i32* @PCI_ADP3, align 4
  %15 = call i64 @READREG(i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = sub nsw i64 %16, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %24, %13
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* @PCI_ADP1, align 4
  %31 = call i64 @READREG(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = sub i64 %32, %34
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i64, i64* %10, align 8
  %44 = trunc i64 %43 to i32
  ret i32 %44
}

declare dso_local i64 @READREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

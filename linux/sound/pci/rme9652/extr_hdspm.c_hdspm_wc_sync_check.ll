; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_wc_sync_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_wc_sync_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32 }

@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_AES32_wcLock = common dso_local global i32 0, align 4
@HDSPM_AES32_wcSync = common dso_local global i32 0, align 4
@HDSPM_statusRegister2 = common dso_local global i32 0, align 4
@HDSPM_wcLock = common dso_local global i32 0, align 4
@HDSPM_wcSync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*)* @hdspm_wc_sync_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_wc_sync_check(%struct.hdspm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %3, align 8
  %6 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %7 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %57 [
    i32 132, label %9
    i32 130, label %25
    i32 128, label %41
    i32 131, label %41
    i32 129, label %56
  ]

9:                                                ; preds = %1
  %10 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %11 = load i32, i32* @HDSPM_statusRegister, align 4
  %12 = call i32 @hdspm_read(%struct.hdspm* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @HDSPM_AES32_wcLock, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @HDSPM_AES32_wcSync, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 2, i32* %2, align 4
  br label %58

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %58

24:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %58

25:                                               ; preds = %1
  %26 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %27 = load i32, i32* @HDSPM_statusRegister2, align 4
  %28 = call i32 @hdspm_read(%struct.hdspm* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @HDSPM_wcLock, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HDSPM_wcSync, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 2, i32* %2, align 4
  br label %58

39:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %58

40:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %58

41:                                               ; preds = %1, %1
  %42 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %43 = load i32, i32* @HDSPM_statusRegister, align 4
  %44 = call i32 @hdspm_read(%struct.hdspm* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 33554432
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 2, i32* %2, align 4
  br label %58

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 16777216
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %58

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %1, %56
  store i32 3, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %53, %48, %40, %39, %38, %24, %23, %22
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_tco_sync_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_tco_sync_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32, i64 }

@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_tcoLockMadi = common dso_local global i32 0, align 4
@HDSPM_tcoSync = common dso_local global i32 0, align 4
@HDSPM_tcoLockAes = common dso_local global i32 0, align 4
@HDSPM_RD_STATUS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*)* @hdspm_tco_sync_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_tco_sync_check(%struct.hdspm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %3, align 8
  %5 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %6 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %1
  %10 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %11 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %59 [
    i32 129, label %13
    i32 131, label %29
    i32 128, label %45
    i32 130, label %45
  ]

13:                                               ; preds = %9
  %14 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %15 = load i32, i32* @HDSPM_statusRegister, align 4
  %16 = call i32 @hdspm_read(%struct.hdspm* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @HDSPM_tcoLockMadi, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @HDSPM_tcoSync, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 2, i32* %2, align 4
  br label %62

27:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %62

28:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %62

29:                                               ; preds = %9
  %30 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %31 = load i32, i32* @HDSPM_statusRegister, align 4
  %32 = call i32 @hdspm_read(%struct.hdspm* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @HDSPM_tcoLockAes, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @HDSPM_tcoSync, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 2, i32* %2, align 4
  br label %62

43:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %62

44:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %62

45:                                               ; preds = %9, %9
  %46 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %47 = load i32, i32* @HDSPM_RD_STATUS_1, align 4
  %48 = call i32 @hdspm_read(%struct.hdspm* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 134217728
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 2, i32* %2, align 4
  br label %62

53:                                               ; preds = %45
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 67108864
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %62

58:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %62

59:                                               ; preds = %9
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %1
  store i32 3, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58, %57, %52, %44, %43, %42, %28, %27, %26
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_autosync_ref.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_autosync_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i64 }

@AES32 = common dso_local global i64 0, align 8
@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_AES32_syncref_bit = common dso_local global i32 0, align 4
@HDSPM_AES32_AUTOSYNC_FROM_WORD = common dso_local global i32 0, align 4
@HDSPM_AES32_AUTOSYNC_FROM_SYNC_IN = common dso_local global i32 0, align 4
@HDSPM_AES32_AUTOSYNC_FROM_NONE = common dso_local global i32 0, align 4
@MADI = common dso_local global i64 0, align 8
@HDSPM_statusRegister2 = common dso_local global i32 0, align 4
@HDSPM_SelSyncRefMask = common dso_local global i32 0, align 4
@HDSPM_AUTOSYNC_FROM_WORD = common dso_local global i32 0, align 4
@HDSPM_AUTOSYNC_FROM_MADI = common dso_local global i32 0, align 4
@HDSPM_AUTOSYNC_FROM_TCO = common dso_local global i32 0, align 4
@HDSPM_AUTOSYNC_FROM_SYNC_IN = common dso_local global i32 0, align 4
@HDSPM_AUTOSYNC_FROM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*)* @hdspm_autosync_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_autosync_ref(%struct.hdspm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %3, align 8
  %7 = load i64, i64* @AES32, align 8
  %8 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %9 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %14 = load i32, i32* @HDSPM_statusRegister, align 4
  %15 = call i32 @hdspm_read(%struct.hdspm* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HDSPM_AES32_syncref_bit, align 4
  %18 = lshr i32 %16, %17
  %19 = and i32 %18, 15
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @HDSPM_AES32_AUTOSYNC_FROM_WORD, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HDSPM_AES32_AUTOSYNC_FROM_SYNC_IN, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %58

29:                                               ; preds = %23, %12
  %30 = load i32, i32* @HDSPM_AES32_AUTOSYNC_FROM_NONE, align 4
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %1
  %32 = load i64, i64* @MADI, align 8
  %33 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %34 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %39 = load i32, i32* @HDSPM_statusRegister2, align 4
  %40 = call i32 @hdspm_read(%struct.hdspm* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @HDSPM_SelSyncRefMask, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %54 [
    i32 128, label %44
    i32 132, label %46
    i32 129, label %48
    i32 130, label %50
    i32 131, label %52
  ]

44:                                               ; preds = %37
  %45 = load i32, i32* @HDSPM_AUTOSYNC_FROM_WORD, align 4
  store i32 %45, i32* %2, align 4
  br label %58

46:                                               ; preds = %37
  %47 = load i32, i32* @HDSPM_AUTOSYNC_FROM_MADI, align 4
  store i32 %47, i32* %2, align 4
  br label %58

48:                                               ; preds = %37
  %49 = load i32, i32* @HDSPM_AUTOSYNC_FROM_TCO, align 4
  store i32 %49, i32* %2, align 4
  br label %58

50:                                               ; preds = %37
  %51 = load i32, i32* @HDSPM_AUTOSYNC_FROM_SYNC_IN, align 4
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %37
  %53 = load i32, i32* @HDSPM_AUTOSYNC_FROM_NONE, align 4
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %37
  %55 = load i32, i32* @HDSPM_AUTOSYNC_FROM_NONE, align 4
  store i32 %55, i32* %2, align 4
  br label %58

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %54, %52, %50, %48, %46, %44, %29, %27
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

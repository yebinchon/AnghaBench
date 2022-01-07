; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_set_pref_sync_ref.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_set_pref_sync_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32 }

@HDSP_SyncRefMask = common dso_local global i32 0, align 4
@HDSP_SyncRef_ADAT2 = common dso_local global i32 0, align 4
@HDSP_SyncRef_ADAT3 = common dso_local global i32 0, align 4
@HDSP_SyncRef_SPDIF = common dso_local global i32 0, align 4
@HDSP_SyncRef_WORD = common dso_local global i32 0, align 4
@HDSP_SyncRef_ADAT_SYNC = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32)* @hdsp_set_pref_sync_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_set_pref_sync_ref(%struct.hdsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdsp*, align 8
  %5 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @HDSP_SyncRefMask, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %9 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %50 [
    i32 133, label %13
    i32 132, label %20
    i32 131, label %26
    i32 129, label %32
    i32 128, label %38
    i32 130, label %44
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @HDSP_SyncRefMask, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %17 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load i32, i32* @HDSP_SyncRef_ADAT2, align 4
  %22 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %23 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %51

26:                                               ; preds = %2
  %27 = load i32, i32* @HDSP_SyncRef_ADAT3, align 4
  %28 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %29 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %51

32:                                               ; preds = %2
  %33 = load i32, i32* @HDSP_SyncRef_SPDIF, align 4
  %34 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %35 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %51

38:                                               ; preds = %2
  %39 = load i32, i32* @HDSP_SyncRef_WORD, align 4
  %40 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %41 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %51

44:                                               ; preds = %2
  %45 = load i32, i32* @HDSP_SyncRef_ADAT_SYNC, align 4
  %46 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %47 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %51

50:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

51:                                               ; preds = %44, %38, %32, %26, %20, %13
  %52 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %53 = load i32, i32* @HDSP_controlRegister, align 4
  %54 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %55 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @hdsp_write(%struct.hdsp* %52, i32 %53, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %50
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

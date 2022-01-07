; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adb_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VORTEX_ADB_SR = common dso_local global i64 0, align 8
@VORTEX_ADB_RTBASE_COUNT = common dso_local global i32 0, align 4
@VORTEX_ADB_RTBASE = common dso_local global i64 0, align 8
@ROUTE_MASK = common dso_local global i32 0, align 4
@VORTEX_ADB_CHNBASE_COUNT = common dso_local global i32 0, align 4
@VORTEX_ADB_CHNBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @vortex_adb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_adb_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i64, i64* @VORTEX_ADB_SR, align 8
  %8 = call i32 @hwwrite(i32 %6, i64 %7, i32 0)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VORTEX_ADB_RTBASE_COUNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @hwread(i32 %24, i64 %29)
  %31 = load i32, i32* @ROUTE_MASK, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @hwwrite(i32 %16, i64 %21, i32 %32)
  br label %34

34:                                               ; preds = %13
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %9

37:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @VORTEX_ADB_CHNBASE_COUNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @VORTEX_ADB_CHNBASE, align 8
  %47 = load i32, i32* %3, align 4
  %48 = shl i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @VORTEX_ADB_CHNBASE, align 8
  %55 = load i32, i32* %3, align 4
  %56 = shl i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = call i32 @hwread(i32 %53, i64 %58)
  %60 = load i32, i32* @ROUTE_MASK, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @hwwrite(i32 %45, i64 %50, i32 %61)
  br label %63

63:                                               ; preds = %42
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %38

66:                                               ; preds = %38
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i32) #1

declare dso_local i32 @hwread(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

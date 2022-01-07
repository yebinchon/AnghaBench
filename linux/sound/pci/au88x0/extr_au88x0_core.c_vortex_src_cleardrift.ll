; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_cleardrift.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_cleardrift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VORTEX_SRC_DRIFT0 = common dso_local global i64 0, align 8
@VORTEX_SRC_DRIFT1 = common dso_local global i64 0, align 8
@VORTEX_SRC_DRIFT2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8)* @vortex_src_cleardrift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_src_cleardrift(%struct.TYPE_3__* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* @VORTEX_SRC_DRIFT0, align 8
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %8, %12
  %14 = call i32 @hwwrite(i32 %7, i64 %13, i32 0)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @VORTEX_SRC_DRIFT1, align 8
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = call i32 @hwwrite(i32 %17, i64 %23, i32 0)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @VORTEX_SRC_DRIFT2, align 8
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  %34 = call i32 @hwwrite(i32 %27, i64 %33, i32 1)
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

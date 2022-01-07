; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_mdev_read_base.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_mdev_read_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_state = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@VFIO_PCI_BAR5_REGION_INDEX = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdev_state*)* @mdev_read_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdev_read_base(%struct.mdev_state* %0) #0 {
  %2 = alloca %struct.mdev_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mdev_state* %0, %struct.mdev_state** %2, align 8
  %8 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %74, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VFIO_PCI_BAR5_REGION_INDEX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %77

13:                                               ; preds = %9
  %14 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %15 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %74

24:                                               ; preds = %13
  %25 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %26 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %36 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %59 [
    i32 128, label %46
    i32 129, label %58
    i32 130, label %58
  ]

46:                                               ; preds = %24
  %47 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %48 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = add nsw i64 %52, 4
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* %4, align 4
  br label %60

58:                                               ; preds = %24, %24
  br label %59

59:                                               ; preds = %24, %58
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 %63, 32
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %68 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 4
  br label %74

74:                                               ; preds = %60, %23
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %9

77:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

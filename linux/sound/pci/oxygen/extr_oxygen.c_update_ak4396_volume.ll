; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_update_ak4396_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_update_ak4396_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32*, %struct.generic_data* }
%struct.generic_data = type { i32 }

@AK4396_LCH_ATT = common dso_local global i32 0, align 4
@AK4396_RCH_ATT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @update_ak4396_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ak4396_volume(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.generic_data*, align 8
  %4 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %5 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %6 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %5, i32 0, i32 1
  %7 = load %struct.generic_data*, %struct.generic_data** %6, align 8
  store %struct.generic_data* %7, %struct.generic_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %40, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.generic_data*, %struct.generic_data** %3, align 8
  %11 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %8
  %15 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @AK4396_LCH_ATT, align 4
  %18 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %19 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = mul i32 %21, 2
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ak4396_write_cached(%struct.oxygen* %15, i32 %16, i32 %17, i32 %25)
  %27 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AK4396_RCH_ATT, align 4
  %30 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %31 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul i32 %33, 2
  %35 = add i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ak4396_write_cached(%struct.oxygen* %27, i32 %28, i32 %29, i32 %38)
  br label %40

40:                                               ; preds = %14
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %8

43:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ak4396_write_cached(%struct.oxygen*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

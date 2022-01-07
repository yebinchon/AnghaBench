; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_update_cs4362a_volumes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_update_cs4362a_volumes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32*, i64 }

@CS4362A_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @update_cs4362a_volumes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cs4362a_volumes(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %5 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %6 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @CS4362A_MUTE, align 4
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 0, %11 ]
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %36, %12
  %15 = load i32, i32* %3, align 4
  %16 = icmp ult i32 %15, 6
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add i32 7, %19
  %21 = load i32, i32* %3, align 4
  %22 = udiv i32 %21, 2
  %23 = add i32 %20, %22
  %24 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %25 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add i32 2, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 127, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cs4362a_write_cached(%struct.oxygen* %18, i32 %23, i32 %34)
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %14

39:                                               ; preds = %14
  ret void
}

declare dso_local i32 @cs4362a_write_cached(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

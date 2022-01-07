; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_translate_subdevice_to_hwport.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_translate_subdevice_to_hwport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpav = type { i32 }

@MTPAV_PIDX_COMPUTER = common dso_local global i32 0, align 4
@MTPAV_PIDX_ADAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtpav*, i32)* @translate_subdevice_to_hwport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_subdevice_to_hwport(%struct.mtpav* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtpav*, align 8
  %5 = alloca i32, align 4
  store %struct.mtpav* %0, %struct.mtpav** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %56

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %12 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %21 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 2
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %28 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = add nsw i32 %30, 9
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %35 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* @MTPAV_PIDX_COMPUTER, align 4
  %39 = add nsw i32 %37, %38
  %40 = icmp eq i32 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 17, i32* %3, align 4
  br label %56

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %45 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MTPAV_PIDX_ADAT, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 99, i32* %3, align 4
  br label %56

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %50, %41, %25, %15, %8
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

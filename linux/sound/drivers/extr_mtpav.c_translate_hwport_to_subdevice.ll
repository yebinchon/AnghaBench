; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_translate_hwport_to_subdevice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_translate_hwport_to_subdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpav = type { i32 }

@MTPAV_PIDX_BROADCAST = common dso_local global i32 0, align 4
@MTPAV_PIDX_COMPUTER = common dso_local global i32 0, align 4
@MTPAV_PIDX_ADAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtpav*, i32)* @translate_hwport_to_subdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_hwport_to_subdevice(%struct.mtpav* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtpav*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtpav* %0, %struct.mtpav** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %11 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MTPAV_PIDX_BROADCAST, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 8
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %23 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %66

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 16
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 9
  %35 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %36 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %41 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 2
  %44 = icmp sge i32 %39, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %47 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %32
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %29
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 17
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %56 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MTPAV_PIDX_COMPUTER, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %51
  %61 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %62 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MTPAV_PIDX_ADAT, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %54, %49, %27, %9
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

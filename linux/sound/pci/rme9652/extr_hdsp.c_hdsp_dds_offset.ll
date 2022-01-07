; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_dds_offset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_dds_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i32 }

@DDS_NUMERATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_dds_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_dds_offset(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %7 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %8 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %11 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load i32, i32* @DDS_NUMERATOR, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @div_u64(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 112000
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 4
  store i32 %25, i32* %4, align 4
  br label %33

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 56000
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_playback_to_output_key.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_playback_to_output_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32, i32)* @hdsp_playback_to_output_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_playback_to_output_key(%struct.hdsp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %9 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %12 [
    i32 129, label %11
    i32 132, label %11
    i32 128, label %11
    i32 131, label %29
    i32 130, label %35
  ]

11:                                               ; preds = %3, %3, %3
  br label %12

12:                                               ; preds = %3, %11
  %13 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %14 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 64, %18
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 32, %20
  %22 = add nsw i32 %19, %21
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %12
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 52, %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 26, %26
  %28 = add nsw i32 %25, %27
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 32, %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 16, %32
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 52, %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 26, %38
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %29, %23, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

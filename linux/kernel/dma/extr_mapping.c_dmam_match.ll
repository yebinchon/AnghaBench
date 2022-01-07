; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dmam_match.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dmam_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_devres = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i8*)* @dmam_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmam_match(%struct.device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dma_devres*, align 8
  %9 = alloca %struct.dma_devres*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.dma_devres*
  store %struct.dma_devres* %11, %struct.dma_devres** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.dma_devres*
  store %struct.dma_devres* %13, %struct.dma_devres** %9, align 8
  %14 = load %struct.dma_devres*, %struct.dma_devres** %8, align 8
  %15 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dma_devres*, %struct.dma_devres** %9, align 8
  %18 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %3
  %22 = load %struct.dma_devres*, %struct.dma_devres** %8, align 8
  %23 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dma_devres*, %struct.dma_devres** %9, align 8
  %26 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.dma_devres*, %struct.dma_devres** %8, align 8
  %31 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dma_devres*, %struct.dma_devres** %9, align 8
  %34 = getelementptr inbounds %struct.dma_devres, %struct.dma_devres* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br label %37

37:                                               ; preds = %29, %21
  %38 = phi i1 [ true, %21 ], [ %36, %29 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  store i32 1, i32* %4, align 4
  br label %42

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

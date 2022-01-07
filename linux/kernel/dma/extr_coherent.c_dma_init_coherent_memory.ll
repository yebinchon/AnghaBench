; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c_dma_init_coherent_memory.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_coherent.c_dma_init_coherent_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_coherent_mem = type { i32, i32, i32, i32, i8*, i8* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MEMREMAP_WC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, %struct.dma_coherent_mem**)* @dma_init_coherent_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_init_coherent_memory(i32 %0, i32 %1, i64 %2, %struct.dma_coherent_mem** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.dma_coherent_mem**, align 8
  %10 = alloca %struct.dma_coherent_mem*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.dma_coherent_mem** %3, %struct.dma_coherent_mem*** %9, align 8
  store %struct.dma_coherent_mem* null, %struct.dma_coherent_mem** %10, align 8
  store i8* null, i8** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @BITS_TO_LONGS(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %14, align 4
  br label %80

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @MEMREMAP_WC, align 4
  %33 = call i8* @memremap(i32 %30, i64 %31, i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %14, align 4
  br label %80

39:                                               ; preds = %29
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 32, i32 %40)
  %42 = bitcast i8* %41 to %struct.dma_coherent_mem*
  store %struct.dma_coherent_mem* %42, %struct.dma_coherent_mem** %10, align 8
  %43 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %44 = icmp ne %struct.dma_coherent_mem* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  br label %80

48:                                               ; preds = %39
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kzalloc(i32 %49, i32 %50)
  %52 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %53 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %55 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %54, i32 0, i32 5
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %14, align 4
  br label %80

61:                                               ; preds = %48
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %64 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %67 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @PFN_DOWN(i32 %68)
  %70 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %71 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %74 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %76 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %75, i32 0, i32 1
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %79 = load %struct.dma_coherent_mem**, %struct.dma_coherent_mem*** %9, align 8
  store %struct.dma_coherent_mem* %78, %struct.dma_coherent_mem** %79, align 8
  store i32 0, i32* %5, align 4
  br label %90

80:                                               ; preds = %58, %45, %36, %26
  %81 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %82 = call i32 @kfree(%struct.dma_coherent_mem* %81)
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @memunmap(i8* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %61
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i8* @memremap(i32, i64, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @PFN_DOWN(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.dma_coherent_mem*) #1

declare dso_local i32 @memunmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

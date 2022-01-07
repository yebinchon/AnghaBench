; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_compr.c_jffs2_is_best_compression.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_compr.c_jffs2_is_best_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_compressor = type { i32 }

@jffs2_compression_mode = common dso_local global i32 0, align 4
@JFFS2_COMPR_LZO = common dso_local global i32 0, align 4
@FAVOUR_LZO_PERCENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_compressor*, %struct.jffs2_compressor*, i32, i32)* @jffs2_is_best_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_is_best_compression(%struct.jffs2_compressor* %0, %struct.jffs2_compressor* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.jffs2_compressor*, align 8
  %7 = alloca %struct.jffs2_compressor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jffs2_compressor* %0, %struct.jffs2_compressor** %6, align 8
  store %struct.jffs2_compressor* %1, %struct.jffs2_compressor** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @jffs2_compression_mode, align 4
  switch i32 %10, label %62 [
    i32 128, label %11
    i32 129, label %17
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %63

16:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %63

17:                                               ; preds = %4
  %18 = load %struct.jffs2_compressor*, %struct.jffs2_compressor** %6, align 8
  %19 = getelementptr inbounds %struct.jffs2_compressor, %struct.jffs2_compressor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @JFFS2_COMPR_LZO, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %63

28:                                               ; preds = %23, %17
  %29 = load %struct.jffs2_compressor*, %struct.jffs2_compressor** %7, align 8
  %30 = getelementptr inbounds %struct.jffs2_compressor, %struct.jffs2_compressor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @JFFS2_COMPR_LZO, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %63

39:                                               ; preds = %34, %28
  %40 = load %struct.jffs2_compressor*, %struct.jffs2_compressor** %6, align 8
  %41 = getelementptr inbounds %struct.jffs2_compressor, %struct.jffs2_compressor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @JFFS2_COMPR_LZO, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @FAVOUR_LZO_PERCENT, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sdiv i32 %49, 100
  %51 = icmp sgt i32 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %63

53:                                               ; preds = %45, %39
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @FAVOUR_LZO_PERCENT, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sdiv i32 %56, 100
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %63

61:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %63

62:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %61, %60, %52, %38, %27, %16, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_block_get_bit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_block_get_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.sst_mem_block = type { i32, i64, %struct.sst_dsp* }
%struct.sst_dsp = type { i64 }

@sram_shift = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sst_mem_block*)* @hsw_block_get_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hsw_block_get_bit(%struct.sst_mem_block* %0) #0 {
  %2 = alloca %struct.sst_mem_block*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sst_dsp*, align 8
  store %struct.sst_mem_block* %0, %struct.sst_mem_block** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.sst_mem_block*, %struct.sst_mem_block** %2, align 8
  %8 = getelementptr inbounds %struct.sst_mem_block, %struct.sst_mem_block* %7, i32 0, i32 2
  %9 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  store %struct.sst_dsp* %9, %struct.sst_dsp** %6, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sram_shift, align 8
  %13 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sram_shift, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %22 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %30

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %10

30:                                               ; preds = %25, %10
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sram_shift, align 8
  %33 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %32)
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.sst_mem_block*, %struct.sst_mem_block** %2, align 8
  %37 = getelementptr inbounds %struct.sst_mem_block, %struct.sst_mem_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %51 [
    i32 129, label %39
    i32 128, label %45
  ]

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sram_shift, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %4, align 8
  br label %52

45:                                               ; preds = %35
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sram_shift, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %4, align 8
  br label %52

51:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  br label %52

52:                                               ; preds = %51, %45, %39
  br label %54

53:                                               ; preds = %30
  store i64 0, i64* %4, align 8
  br label %54

54:                                               ; preds = %53, %52
  %55 = load %struct.sst_mem_block*, %struct.sst_mem_block** %2, align 8
  %56 = getelementptr inbounds %struct.sst_mem_block, %struct.sst_mem_block* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = shl i32 1, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

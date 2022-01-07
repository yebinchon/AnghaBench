; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_create_channel_map.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_create_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SST_HSW_CHANNEL_CENTER = common dso_local global i32 0, align 4
@SST_HSW_CHANNEL_LEFT = common dso_local global i32 0, align 4
@SST_HSW_CHANNEL_RIGHT = common dso_local global i32 0, align 4
@SST_HSW_CHANNEL_LFE = common dso_local global i32 0, align 4
@SST_HSW_CHANNEL_LEFT_SURROUND = common dso_local global i32 0, align 4
@SST_HSW_CHANNEL_RIGHT_SURROUND = common dso_local global i32 0, align 4
@SST_HSW_CHANNEL_CENTER_SURROUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_channel_map(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %107 [
    i32 130, label %5
    i32 128, label %8
    i32 137, label %14
    i32 136, label %23
    i32 135, label %32
    i32 129, label %44
    i32 134, label %56
    i32 133, label %68
    i32 132, label %83
    i32 131, label %101
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @SST_HSW_CHANNEL_CENTER, align 4
  %7 = or i32 -16, %6
  store i32 %7, i32* %2, align 4
  br label %108

8:                                                ; preds = %1
  %9 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %10 = or i32 -256, %9
  %11 = load i32, i32* @SST_HSW_CHANNEL_RIGHT, align 4
  %12 = shl i32 %11, 4
  %13 = or i32 %10, %12
  store i32 %13, i32* %2, align 4
  br label %108

14:                                               ; preds = %1
  %15 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %16 = or i32 -4096, %15
  %17 = load i32, i32* @SST_HSW_CHANNEL_RIGHT, align 4
  %18 = shl i32 %17, 4
  %19 = or i32 %16, %18
  %20 = load i32, i32* @SST_HSW_CHANNEL_LFE, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %19, %21
  store i32 %22, i32* %2, align 4
  br label %108

23:                                               ; preds = %1
  %24 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %25 = or i32 -4096, %24
  %26 = load i32, i32* @SST_HSW_CHANNEL_CENTER, align 4
  %27 = shl i32 %26, 4
  %28 = or i32 %25, %27
  %29 = load i32, i32* @SST_HSW_CHANNEL_RIGHT, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %28, %30
  store i32 %31, i32* %2, align 4
  br label %108

32:                                               ; preds = %1
  %33 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %34 = or i32 -65536, %33
  %35 = load i32, i32* @SST_HSW_CHANNEL_CENTER, align 4
  %36 = shl i32 %35, 4
  %37 = or i32 %34, %36
  %38 = load i32, i32* @SST_HSW_CHANNEL_RIGHT, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %37, %39
  %41 = load i32, i32* @SST_HSW_CHANNEL_LFE, align 4
  %42 = shl i32 %41, 12
  %43 = or i32 %40, %42
  store i32 %43, i32* %2, align 4
  br label %108

44:                                               ; preds = %1
  %45 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %46 = or i32 -65536, %45
  %47 = load i32, i32* @SST_HSW_CHANNEL_RIGHT, align 4
  %48 = shl i32 %47, 4
  %49 = or i32 %46, %48
  %50 = load i32, i32* @SST_HSW_CHANNEL_LEFT_SURROUND, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load i32, i32* @SST_HSW_CHANNEL_RIGHT_SURROUND, align 4
  %54 = shl i32 %53, 12
  %55 = or i32 %52, %54
  store i32 %55, i32* %2, align 4
  br label %108

56:                                               ; preds = %1
  %57 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %58 = or i32 -65536, %57
  %59 = load i32, i32* @SST_HSW_CHANNEL_CENTER, align 4
  %60 = shl i32 %59, 4
  %61 = or i32 %58, %60
  %62 = load i32, i32* @SST_HSW_CHANNEL_RIGHT, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %61, %63
  %65 = load i32, i32* @SST_HSW_CHANNEL_CENTER_SURROUND, align 4
  %66 = shl i32 %65, 12
  %67 = or i32 %64, %66
  store i32 %67, i32* %2, align 4
  br label %108

68:                                               ; preds = %1
  %69 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %70 = or i32 -1048576, %69
  %71 = load i32, i32* @SST_HSW_CHANNEL_CENTER, align 4
  %72 = shl i32 %71, 4
  %73 = or i32 %70, %72
  %74 = load i32, i32* @SST_HSW_CHANNEL_RIGHT, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %73, %75
  %77 = load i32, i32* @SST_HSW_CHANNEL_LEFT_SURROUND, align 4
  %78 = shl i32 %77, 12
  %79 = or i32 %76, %78
  %80 = load i32, i32* @SST_HSW_CHANNEL_RIGHT_SURROUND, align 4
  %81 = shl i32 %80, 16
  %82 = or i32 %79, %81
  store i32 %82, i32* %2, align 4
  br label %108

83:                                               ; preds = %1
  %84 = load i32, i32* @SST_HSW_CHANNEL_CENTER, align 4
  %85 = or i32 -16777216, %84
  %86 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %87 = shl i32 %86, 4
  %88 = or i32 %85, %87
  %89 = load i32, i32* @SST_HSW_CHANNEL_RIGHT, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 %88, %90
  %92 = load i32, i32* @SST_HSW_CHANNEL_LEFT_SURROUND, align 4
  %93 = shl i32 %92, 12
  %94 = or i32 %91, %93
  %95 = load i32, i32* @SST_HSW_CHANNEL_RIGHT_SURROUND, align 4
  %96 = shl i32 %95, 16
  %97 = or i32 %94, %96
  %98 = load i32, i32* @SST_HSW_CHANNEL_LFE, align 4
  %99 = shl i32 %98, 20
  %100 = or i32 %97, %99
  store i32 %100, i32* %2, align 4
  br label %108

101:                                              ; preds = %1
  %102 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %103 = or i32 -256, %102
  %104 = load i32, i32* @SST_HSW_CHANNEL_LEFT, align 4
  %105 = shl i32 %104, 4
  %106 = or i32 %103, %105
  store i32 %106, i32* %2, align 4
  br label %108

107:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %101, %83, %68, %56, %44, %32, %23, %14, %8, %5
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

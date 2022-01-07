; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_do_index.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_do_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32 }

@I2_BITS = common dso_local global i32 0, align 4
@I2_FIFO_SIZE = common dso_local global i32 0, align 4
@I4_BITS = common dso_local global i32 0, align 4
@I4_FIFO_SIZE = common dso_local global i32 0, align 4
@I8_BITS = common dso_local global i32 0, align 4
@I8_FIFO_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i32)* @do_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_index(%struct.sw842_param* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw842_param*, align 8
  %5 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %22 [
    i32 2, label %7
    i32 4, label %12
    i32 8, label %17
  ]

7:                                                ; preds = %2
  %8 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %9 = load i32, i32* @I2_BITS, align 4
  %10 = load i32, i32* @I2_FIFO_SIZE, align 4
  %11 = call i32 @__do_index(%struct.sw842_param* %8, i32 2, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %14 = load i32, i32* @I4_BITS, align 4
  %15 = load i32, i32* @I4_FIFO_SIZE, align 4
  %16 = call i32 @__do_index(%struct.sw842_param* %13, i32 4, i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %19 = load i32, i32* @I8_BITS, align 4
  %20 = load i32, i32* @I8_FIFO_SIZE, align 4
  %21 = call i32 @__do_index(%struct.sw842_param* %18, i32 8, i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %17, %12, %7
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @__do_index(%struct.sw842_param*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

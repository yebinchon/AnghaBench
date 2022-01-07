; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_debug_dma_map_single.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_debug_dma_map_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"device driver maps memory from invalid area [addr=%p] [len=%lu]\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"device driver maps memory from vmalloc area [addr=%p] [len=%lu]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dma_map_single(%struct.device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call i32 (...) @dma_debug_disabled()
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %29

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @virt_addr_valid(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @err_printk(%struct.device* %16, i32* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @is_vmalloc_addr(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @err_printk(%struct.device* %25, i32* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %26, i64 %27)
  br label %29

29:                                               ; preds = %10, %24, %20
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_debug_disabled(...) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local i32 @err_printk(%struct.device*, i32*, i8*, i8*, i64) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

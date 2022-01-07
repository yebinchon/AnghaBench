; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_check_for_illegal_area.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_check_for_illegal_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@_stext = common dso_local global i32 0, align 4
@_etext = common dso_local global i32 0, align 4
@__start_rodata = common dso_local global i32 0, align 4
@__end_rodata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"device driver maps memory from kernel text or rodata [addr=%p] [len=%lu]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*, i64)* @check_for_illegal_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_illegal_area(%struct.device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i32, i32* @_stext, align 4
  %10 = load i32, i32* @_etext, align 4
  %11 = call i64 @overlap(i8* %7, i64 %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @__start_rodata, align 4
  %17 = load i32, i32* @__end_rodata, align 4
  %18 = call i64 @overlap(i8* %14, i64 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13, %3
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @err_printk(%struct.device* %21, i32* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %22, i64 %23)
  br label %25

25:                                               ; preds = %20, %13
  ret void
}

declare dso_local i64 @overlap(i8*, i64, i32, i32) #1

declare dso_local i32 @err_printk(%struct.device*, i32*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

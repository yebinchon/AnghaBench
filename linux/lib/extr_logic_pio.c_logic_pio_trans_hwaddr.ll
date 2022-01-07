; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_logic_pio.c_logic_pio_trans_hwaddr.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_logic_pio.c_logic_pio_trans_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.logic_pio_hwaddr = type { i64, i64, i64, i64 }

@LOGIC_PIO_CPU_MMIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"IO range not found or invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"resource size %pa cannot fit in IO range size %pa\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @logic_pio_trans_hwaddr(%struct.fwnode_handle* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.logic_pio_hwaddr*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %10 = call %struct.logic_pio_hwaddr* @find_io_range_by_fwnode(%struct.fwnode_handle* %9)
  store %struct.logic_pio_hwaddr* %10, %struct.logic_pio_hwaddr** %8, align 8
  %11 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %8, align 8
  %12 = icmp ne %struct.logic_pio_hwaddr* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %8, align 8
  %15 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LOGIC_PIO_CPU_MMIO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %3
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %4, align 8
  br label %41

21:                                               ; preds = %13
  %22 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %8, align 8
  %23 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %8, align 8
  %29 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %28, i32 0, i32 1
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64* %7, i64* %29)
  store i64 -1, i64* %4, align 8
  br label %41

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %8, align 8
  %34 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.logic_pio_hwaddr*, %struct.logic_pio_hwaddr** %8, align 8
  %38 = getelementptr inbounds %struct.logic_pio_hwaddr, %struct.logic_pio_hwaddr* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %31, %27, %19
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local %struct.logic_pio_hwaddr* @find_io_range_by_fwnode(%struct.fwnode_handle*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_handle_indexes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_handle_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.handle_word = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@HPI_ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64*)* @hpi_handle_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpi_handle_indexes(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %union.handle_word, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @HPI_ERROR_INVALID_HANDLE, align 8
  store i64 %12, i64* %4, align 8
  br label %28

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = bitcast %union.handle_word* %8 to i64*
  store i64 %14, i64* %15, align 8
  %16 = bitcast %union.handle_word* %8 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %6, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = bitcast %union.handle_word* %8 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  br label %27

27:                                               ; preds = %22, %13
  store i64 0, i64* %4, align 8
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

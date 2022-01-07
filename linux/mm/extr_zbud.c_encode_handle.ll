; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zbud.c_encode_handle.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zbud.c_encode_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zbud_header = type { i32 }

@FIRST = common dso_local global i32 0, align 4
@ZHDR_SIZE_ALIGNED = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@CHUNK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zbud_header*, i32)* @encode_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encode_handle(%struct.zbud_header* %0, i32 %1) #0 {
  %3 = alloca %struct.zbud_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.zbud_header* %0, %struct.zbud_header** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.zbud_header*, %struct.zbud_header** %3, align 8
  %7 = ptrtoint %struct.zbud_header* %6 to i64
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @FIRST, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @ZHDR_SIZE_ALIGNED, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %5, align 8
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load %struct.zbud_header*, %struct.zbud_header** %3, align 8
  %18 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CHUNK_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = sub nsw i32 %16, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %15, %11
  %27 = load i64, i64* %5, align 8
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

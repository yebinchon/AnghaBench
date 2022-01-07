; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_snapshot_additional_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_snapshot_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }

@BM_BITS_PER_BLOCK = common dso_local global i32 0, align 4
@LINKED_PAGE_DATA_SIZE = common dso_local global i32 0, align 4
@BM_ENTRIES_PER_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snapshot_additional_pages(%struct.zone* %0) #0 {
  %2 = alloca %struct.zone*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %2, align 8
  %5 = load %struct.zone*, %struct.zone** %2, align 8
  %6 = getelementptr inbounds %struct.zone, %struct.zone* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BM_BITS_PER_BLOCK, align 4
  %9 = call i32 @DIV_ROUND_UP(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @LINKED_PAGE_DATA_SIZE, align 4
  %15 = call i32 @DIV_ROUND_UP(i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %21, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BM_ENTRIES_PER_LEVEL, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %18

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  %30 = mul i32 2, %29
  ret i32 %30
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

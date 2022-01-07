; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_calc_idx_growth.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_calc_idx_growth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_budget_req = type { i32, i32, i32 }

@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_budget_req*)* @calc_idx_growth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_idx_growth(%struct.ubifs_info* %0, %struct.ubifs_budget_req* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_budget_req*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_budget_req* %1, %struct.ubifs_budget_req** %4, align 8
  %6 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %7 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %10 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = add nsw i32 %8, %13
  %15 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %16 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

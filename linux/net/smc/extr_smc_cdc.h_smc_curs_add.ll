; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_curs_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_curs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.smc_host_cursor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.smc_host_cursor*, i32)* @smc_curs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_curs_add(i32 %0, %union.smc_host_cursor* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.smc_host_cursor*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %union.smc_host_cursor* %1, %union.smc_host_cursor** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %union.smc_host_cursor*, %union.smc_host_cursor** %5, align 8
  %9 = bitcast %union.smc_host_cursor* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %union.smc_host_cursor*, %union.smc_host_cursor** %5, align 8
  %13 = bitcast %union.smc_host_cursor* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %union.smc_host_cursor*, %union.smc_host_cursor** %5, align 8
  %19 = bitcast %union.smc_host_cursor* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %union.smc_host_cursor*, %union.smc_host_cursor** %5, align 8
  %24 = bitcast %union.smc_host_cursor* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %17, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_curs_comp.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_curs_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.smc_host_cursor = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.smc_host_cursor*, %union.smc_host_cursor*)* @smc_curs_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_curs_comp(i32 %0, %union.smc_host_cursor* %1, %union.smc_host_cursor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.smc_host_cursor*, align 8
  %7 = alloca %union.smc_host_cursor*, align 8
  store i32 %0, i32* %5, align 4
  store %union.smc_host_cursor* %1, %union.smc_host_cursor** %6, align 8
  store %union.smc_host_cursor* %2, %union.smc_host_cursor** %7, align 8
  %8 = load %union.smc_host_cursor*, %union.smc_host_cursor** %6, align 8
  %9 = bitcast %union.smc_host_cursor* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = load %union.smc_host_cursor*, %union.smc_host_cursor** %7, align 8
  %12 = bitcast %union.smc_host_cursor* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %31, label %15

15:                                               ; preds = %3
  %16 = load %union.smc_host_cursor*, %union.smc_host_cursor** %6, align 8
  %17 = bitcast %union.smc_host_cursor* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = load %union.smc_host_cursor*, %union.smc_host_cursor** %7, align 8
  %20 = bitcast %union.smc_host_cursor* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %union.smc_host_cursor*, %union.smc_host_cursor** %6, align 8
  %25 = bitcast %union.smc_host_cursor* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = load %union.smc_host_cursor*, %union.smc_host_cursor** %7, align 8
  %28 = bitcast %union.smc_host_cursor* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23, %3
  %32 = load i32, i32* %5, align 4
  %33 = load %union.smc_host_cursor*, %union.smc_host_cursor** %7, align 8
  %34 = load %union.smc_host_cursor*, %union.smc_host_cursor** %6, align 8
  %35 = call i32 @smc_curs_diff(i32 %32, %union.smc_host_cursor* %33, %union.smc_host_cursor* %34)
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %23, %15
  %38 = load i32, i32* %5, align 4
  %39 = load %union.smc_host_cursor*, %union.smc_host_cursor** %6, align 8
  %40 = load %union.smc_host_cursor*, %union.smc_host_cursor** %7, align 8
  %41 = call i32 @smc_curs_diff(i32 %38, %union.smc_host_cursor* %39, %union.smc_host_cursor* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @smc_curs_diff(i32, %union.smc_host_cursor*, %union.smc_host_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

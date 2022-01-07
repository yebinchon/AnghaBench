; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_counters_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_counters_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_counters = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@XT_MAX_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xt_counters* @xt_counters_alloc(i32 %0) #0 {
  %2 = alloca %struct.xt_counters*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xt_counters*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* @INT_MAX, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 4
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7, %1
  store %struct.xt_counters* null, %struct.xt_counters** %2, align 8
  br label %27

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @XT_MAX_TABLE_SIZE, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store %struct.xt_counters* null, %struct.xt_counters** %2, align 8
  br label %27

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.xt_counters* @vzalloc(i32 %25)
  store %struct.xt_counters* %26, %struct.xt_counters** %2, align 8
  br label %27

27:                                               ; preds = %24, %23, %14
  %28 = load %struct.xt_counters*, %struct.xt_counters** %2, align 8
  ret %struct.xt_counters* %28
}

declare dso_local %struct.xt_counters* @vzalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

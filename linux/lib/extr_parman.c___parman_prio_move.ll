; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parman.c___parman_prio_move.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parman.c___parman_prio_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parman = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i64, i64)* }
%struct.parman_prio = type { i32 }
%struct.parman_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parman*, %struct.parman_prio*, %struct.parman_item*, i64, i64)* @__parman_prio_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__parman_prio_move(%struct.parman* %0, %struct.parman_prio* %1, %struct.parman_item* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.parman*, align 8
  %7 = alloca %struct.parman_prio*, align 8
  %8 = alloca %struct.parman_item*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.parman* %0, %struct.parman** %6, align 8
  store %struct.parman_prio* %1, %struct.parman_prio** %7, align 8
  store %struct.parman_item* %2, %struct.parman_item** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.parman*, %struct.parman** %6, align 8
  %12 = getelementptr inbounds %struct.parman, %struct.parman* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i64, i64)*, i32 (i32, i32, i64, i64)** %14, align 8
  %16 = load %struct.parman*, %struct.parman** %6, align 8
  %17 = getelementptr inbounds %struct.parman, %struct.parman* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.parman_item*, %struct.parman_item** %8, align 8
  %20 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 %15(i32 %18, i32 %21, i64 %22, i64 %23)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

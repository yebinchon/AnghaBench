; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_save_iterations.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_save_iterations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterations = type { i64, i32 }
%struct.branch_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iterations*, %struct.branch_entry*, i32)* @save_iterations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_iterations(%struct.iterations* %0, %struct.branch_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.iterations*, align 8
  %5 = alloca %struct.branch_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iterations* %0, %struct.iterations** %4, align 8
  store %struct.branch_entry* %1, %struct.branch_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iterations*, %struct.iterations** %4, align 8
  %9 = getelementptr inbounds %struct.iterations, %struct.iterations* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.iterations*, %struct.iterations** %4, align 8
  %13 = getelementptr inbounds %struct.iterations, %struct.iterations* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.branch_entry*, %struct.branch_entry** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %19, i64 %21
  %23 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.iterations*, %struct.iterations** %4, align 8
  %27 = getelementptr inbounds %struct.iterations, %struct.iterations* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %14

33:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

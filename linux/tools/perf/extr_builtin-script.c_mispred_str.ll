; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_mispred_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_mispred_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.branch_entry*)* @mispred_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @mispred_str(%struct.branch_entry* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.branch_entry*, align 8
  store %struct.branch_entry* %0, %struct.branch_entry** %3, align 8
  %4 = load %struct.branch_entry*, %struct.branch_entry** %3, align 8
  %5 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.branch_entry*, %struct.branch_entry** %3, align 8
  %11 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i8 45, i8* %2, align 1
  br label %25

16:                                               ; preds = %9, %1
  %17 = load %struct.branch_entry*, %struct.branch_entry** %3, align 8
  %18 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 80, i32 77
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %2, align 1
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i8, i8* %2, align 1
  ret i8 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

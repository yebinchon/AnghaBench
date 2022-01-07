; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_symbol_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_symbol_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_entry = type { i64 }
%struct.addr_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_entry*, %struct.addr_range*, i32)* @symbol_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol_in_range(%struct.sym_entry* %0, %struct.addr_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_entry*, align 8
  %6 = alloca %struct.addr_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.addr_range*, align 8
  store %struct.sym_entry* %0, %struct.sym_entry** %5, align 8
  store %struct.addr_range* %1, %struct.addr_range** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %36, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = load %struct.addr_range*, %struct.addr_range** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %16, i64 %17
  store %struct.addr_range* %18, %struct.addr_range** %9, align 8
  %19 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %20 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.addr_range*, %struct.addr_range** %9, align 8
  %23 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load %struct.sym_entry*, %struct.sym_entry** %5, align 8
  %28 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.addr_range*, %struct.addr_range** %9, align 8
  %31 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %40

35:                                               ; preds = %26, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %10

39:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_entry_waitqueue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_entry_waitqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i64, i64 }
%struct.exceptional_entry_key = type { i64, i64 }

@PG_PMD_COLOUR = common dso_local global i64 0, align 8
@DAX_WAIT_TABLE_BITS = common dso_local global i32 0, align 4
@wait_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xa_state*, i8*, %struct.exceptional_entry_key*)* @dax_entry_waitqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dax_entry_waitqueue(%struct.xa_state* %0, i8* %1, %struct.exceptional_entry_key* %2) #0 {
  %4 = alloca %struct.xa_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.exceptional_entry_key*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.xa_state* %0, %struct.xa_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.exceptional_entry_key* %2, %struct.exceptional_entry_key** %6, align 8
  %9 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %10 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @dax_is_pmd_entry(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i64, i64* @PG_PMD_COLOUR, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %8, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %22 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.exceptional_entry_key*, %struct.exceptional_entry_key** %6, align 8
  %25 = getelementptr inbounds %struct.exceptional_entry_key, %struct.exceptional_entry_key* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.exceptional_entry_key*, %struct.exceptional_entry_key** %6, align 8
  %28 = getelementptr inbounds %struct.exceptional_entry_key, %struct.exceptional_entry_key* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %30 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = xor i64 %31, %32
  %34 = load i32, i32* @DAX_WAIT_TABLE_BITS, align 4
  %35 = call i64 @hash_long(i64 %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i32*, i32** @wait_table, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  ret i32* %38
}

declare dso_local i64 @dax_is_pmd_entry(i8*) #1

declare dso_local i64 @hash_long(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

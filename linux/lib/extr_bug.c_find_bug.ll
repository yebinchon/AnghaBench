; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bug.c_find_bug.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bug.c_find_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bug_entry = type { i32 }

@__start___bug_table = common dso_local global %struct.bug_entry* null, align 8
@__stop___bug_table = common dso_local global %struct.bug_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bug_entry* @find_bug(i64 %0) #0 {
  %2 = alloca %struct.bug_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bug_entry*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.bug_entry*, %struct.bug_entry** @__start___bug_table, align 8
  store %struct.bug_entry* %5, %struct.bug_entry** %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.bug_entry*, %struct.bug_entry** %4, align 8
  %8 = load %struct.bug_entry*, %struct.bug_entry** @__stop___bug_table, align 8
  %9 = icmp ult %struct.bug_entry* %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.bug_entry*, %struct.bug_entry** %4, align 8
  %13 = call i64 @bug_addr(%struct.bug_entry* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load %struct.bug_entry*, %struct.bug_entry** %4, align 8
  store %struct.bug_entry* %16, %struct.bug_entry** %2, align 8
  br label %24

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.bug_entry*, %struct.bug_entry** %4, align 8
  %20 = getelementptr inbounds %struct.bug_entry, %struct.bug_entry* %19, i32 1
  store %struct.bug_entry* %20, %struct.bug_entry** %4, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load i64, i64* %3, align 8
  %23 = call %struct.bug_entry* @module_find_bug(i64 %22)
  store %struct.bug_entry* %23, %struct.bug_entry** %2, align 8
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.bug_entry*, %struct.bug_entry** %2, align 8
  ret %struct.bug_entry* %25
}

declare dso_local i64 @bug_addr(%struct.bug_entry*) #1

declare dso_local %struct.bug_entry* @module_find_bug(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

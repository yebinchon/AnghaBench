; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_identify_page_state.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_identify_page_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_state = type { i32, i32 }
%struct.page = type { i32 }

@error_states = common dso_local global %struct.page_state* null, align 8
@PG_dirty = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.page*, i64)* @identify_page_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @identify_page_state(i64 %0, %struct.page* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page_state*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.page_state*, %struct.page_state** @error_states, align 8
  store %struct.page_state* %8, %struct.page_state** %7, align 8
  br label %9

9:                                                ; preds = %23, %3
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.page_state*, %struct.page_state** %7, align 8
  %14 = getelementptr inbounds %struct.page_state, %struct.page_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = load %struct.page_state*, %struct.page_state** %7, align 8
  %18 = getelementptr inbounds %struct.page_state, %struct.page_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  br label %26

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.page_state*, %struct.page_state** %7, align 8
  %25 = getelementptr inbounds %struct.page_state, %struct.page_state* %24, i32 1
  store %struct.page_state* %25, %struct.page_state** %7, align 8
  br label %9

26:                                               ; preds = %21
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @PG_dirty, align 8
  %32 = shl i64 1, %31
  %33 = and i64 %30, %32
  %34 = load i64, i64* %6, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load %struct.page_state*, %struct.page_state** %7, align 8
  %37 = getelementptr inbounds %struct.page_state, %struct.page_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %26
  %41 = load %struct.page_state*, %struct.page_state** @error_states, align 8
  store %struct.page_state* %41, %struct.page_state** %7, align 8
  br label %42

42:                                               ; preds = %56, %40
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.page_state*, %struct.page_state** %7, align 8
  %45 = getelementptr inbounds %struct.page_state, %struct.page_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = and i64 %43, %47
  %49 = load %struct.page_state*, %struct.page_state** %7, align 8
  %50 = getelementptr inbounds %struct.page_state, %struct.page_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.page_state*, %struct.page_state** %7, align 8
  %58 = getelementptr inbounds %struct.page_state, %struct.page_state* %57, i32 1
  store %struct.page_state* %58, %struct.page_state** %7, align 8
  br label %42

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.page_state*, %struct.page_state** %7, align 8
  %62 = load %struct.page*, %struct.page** %5, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @page_action(%struct.page_state* %61, %struct.page* %62, i64 %63)
  ret i32 %64
}

declare dso_local i32 @page_action(%struct.page_state*, %struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_try_charge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_try_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_counter = type { i64, i64, %struct.page_counter*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_counter_try_charge(%struct.page_counter* %0, i64 %1, %struct.page_counter** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page_counter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page_counter**, align 8
  %8 = alloca %struct.page_counter*, align 8
  %9 = alloca i64, align 8
  store %struct.page_counter* %0, %struct.page_counter** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.page_counter** %2, %struct.page_counter*** %7, align 8
  %10 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  store %struct.page_counter* %10, %struct.page_counter** %8, align 8
  br label %11

11:                                               ; preds = %52, %3
  %12 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %13 = icmp ne %struct.page_counter* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %17 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %16, i32 0, i32 4
  %18 = call i64 @atomic_long_add_return(i64 %15, i32* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %21 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %27 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %26, i32 0, i32 4
  %28 = call i32 @atomic_long_sub(i64 %25, i32* %27)
  %29 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @propagate_protected_usage(%struct.page_counter* %29, i64 %30)
  %32 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %33 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %37 = load %struct.page_counter**, %struct.page_counter*** %7, align 8
  store %struct.page_counter* %36, %struct.page_counter** %37, align 8
  br label %57

38:                                               ; preds = %14
  %39 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @propagate_protected_usage(%struct.page_counter* %39, i64 %40)
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %44 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %50 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %38
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %54 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %53, i32 0, i32 2
  %55 = load %struct.page_counter*, %struct.page_counter** %54, align 8
  store %struct.page_counter* %55, %struct.page_counter** %8, align 8
  br label %11

56:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %73

57:                                               ; preds = %24
  %58 = load %struct.page_counter*, %struct.page_counter** %5, align 8
  store %struct.page_counter* %58, %struct.page_counter** %8, align 8
  br label %59

59:                                               ; preds = %68, %57
  %60 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %61 = load %struct.page_counter**, %struct.page_counter*** %7, align 8
  %62 = load %struct.page_counter*, %struct.page_counter** %61, align 8
  %63 = icmp ne %struct.page_counter* %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @page_counter_cancel(%struct.page_counter* %65, i64 %66)
  br label %68

68:                                               ; preds = %64
  %69 = load %struct.page_counter*, %struct.page_counter** %8, align 8
  %70 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %69, i32 0, i32 2
  %71 = load %struct.page_counter*, %struct.page_counter** %70, align 8
  store %struct.page_counter* %71, %struct.page_counter** %8, align 8
  br label %59

72:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @atomic_long_add_return(i64, i32*) #1

declare dso_local i32 @atomic_long_sub(i64, i32*) #1

declare dso_local i32 @propagate_protected_usage(%struct.page_counter*, i64) #1

declare dso_local i32 @page_counter_cancel(%struct.page_counter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

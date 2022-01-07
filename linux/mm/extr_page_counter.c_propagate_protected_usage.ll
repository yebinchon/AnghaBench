; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_counter.c_propagate_protected_usage.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_counter.c_propagate_protected_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_counter = type { i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page_counter*, i64)* @propagate_protected_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagate_protected_usage(%struct.page_counter* %0, i64 %1) #0 {
  %3 = alloca %struct.page_counter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.page_counter* %0, %struct.page_counter** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %9 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %87

13:                                               ; preds = %2
  %14 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %15 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %20 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %19, i32 0, i32 4
  %21 = call i64 @atomic_long_read(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18, %13
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %26 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ule i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %5, align 8
  br label %32

31:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %31, %29
  %33 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %34 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %33, i32 0, i32 4
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @atomic_long_xchg(i32* %34, i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %45 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @atomic_long_add(i64 %43, i32* %47)
  br label %49

49:                                               ; preds = %42, %32
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %52 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %57 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %56, i32 0, i32 3
  %58 = call i64 @atomic_long_read(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %55, %50
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %63 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ule i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i64, i64* %4, align 8
  store i64 %67, i64* %5, align 8
  br label %69

68:                                               ; preds = %60
  store i64 0, i64* %5, align 8
  br label %69

69:                                               ; preds = %68, %66
  %70 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %71 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %70, i32 0, i32 3
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @atomic_long_xchg(i32* %71, i64 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %74, %75
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.page_counter*, %struct.page_counter** %3, align 8
  %82 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @atomic_long_add(i64 %80, i32* %84)
  br label %86

86:                                               ; preds = %79, %69
  br label %87

87:                                               ; preds = %12, %86, %55
  ret void
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @atomic_long_xchg(i32*, i64) #1

declare dso_local i32 @atomic_long_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

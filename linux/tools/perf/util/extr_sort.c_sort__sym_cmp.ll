; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__sym_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__sym_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@dso = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hist_entry*, %struct.hist_entry*)* @sort__sym_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sort__sym_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i64, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %20 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @_sort__addr_cmp(i32 %21, i32 %24)
  store i64 %25, i64* %3, align 8
  br label %59

26:                                               ; preds = %12, %2
  %27 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @dso, align 4
  %31 = call i64 @hists__has(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %35 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @dso, align 4
  %38 = call i64 @hists__has(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33, %26
  %41 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %42 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %43 = call i64 @sort__dso_cmp(%struct.hist_entry* %41, %struct.hist_entry* %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %3, align 8
  br label %59

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %33
  %50 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %51 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %55 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @_sort__sym_cmp(i32 %53, i32 %57)
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %49, %46, %18
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i64 @_sort__addr_cmp(i32, i32) #1

declare dso_local i64 @hists__has(i32, i32) #1

declare dso_local i64 @sort__dso_cmp(%struct.hist_entry*, %struct.hist_entry*) #1

declare dso_local i64 @_sort__sym_cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

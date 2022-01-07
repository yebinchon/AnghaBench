; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hde_width.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hde_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpp_dynamic_entry = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@TEP_FIELD_IS_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpp_dynamic_entry*)* @hde_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hde_width(%struct.hpp_dynamic_entry* %0) #0 {
  %2 = alloca %struct.hpp_dynamic_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hpp_dynamic_entry* %0, %struct.hpp_dynamic_entry** %2, align 8
  %6 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %2, align 8
  %7 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %59, label %11

11:                                               ; preds = %1
  %12 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %2, align 8
  %13 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %2, align 8
  %16 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlen(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %2, align 8
  %22 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %11
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %11
  %32 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %2, align 8
  %33 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TEP_FIELD_IS_STRING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %31
  %41 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %2, align 8
  %42 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %40, %31
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %2, align 8
  %57 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %1
  %60 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %2, align 8
  %61 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  ret i32 %63
}

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_stackmap.c_prealloc_elems_and_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_stackmap.c_prealloc_elems_and_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_stack_map = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_stack_map*)* @prealloc_elems_and_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prealloc_elems_and_freelist(%struct.bpf_stack_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_stack_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bpf_stack_map* %0, %struct.bpf_stack_map** %3, align 8
  %6 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 4, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %13, %17
  %19 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bpf_map_area_alloc(i32 %18, i32 %22)
  %24 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %27 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %58

33:                                               ; preds = %1
  %34 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %35 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %34, i32 0, i32 2
  %36 = call i32 @pcpu_freelist_init(i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %52

40:                                               ; preds = %33
  %41 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %42 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %41, i32 0, i32 2
  %43 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %44 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %48 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pcpu_freelist_populate(i32* %42, i32 %45, i32 %46, i32 %50)
  store i32 0, i32* %2, align 4
  br label %58

52:                                               ; preds = %39
  %53 = load %struct.bpf_stack_map*, %struct.bpf_stack_map** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_stack_map, %struct.bpf_stack_map* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bpf_map_area_free(i32 %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %40, %30
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @bpf_map_area_alloc(i32, i32) #1

declare dso_local i32 @pcpu_freelist_init(i32*) #1

declare dso_local i32 @pcpu_freelist_populate(i32*, i32, i32, i32) #1

declare dso_local i32 @bpf_map_area_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

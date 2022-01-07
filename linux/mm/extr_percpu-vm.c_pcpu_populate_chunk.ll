; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_percpu-vm.c_pcpu_populate_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_percpu-vm.c_pcpu_populate_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_chunk = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcpu_chunk*, i32, i32, i32)* @pcpu_populate_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcpu_populate_chunk(%struct.pcpu_chunk* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcpu_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page**, align 8
  store %struct.pcpu_chunk* %0, %struct.pcpu_chunk** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call %struct.page** (...) @pcpu_get_pages()
  store %struct.page** %11, %struct.page*** %10, align 8
  %12 = load %struct.page**, %struct.page*** %10, align 8
  %13 = icmp ne %struct.page** %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %48

17:                                               ; preds = %4
  %18 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %6, align 8
  %19 = load %struct.page**, %struct.page*** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @pcpu_alloc_pages(%struct.pcpu_chunk* %18, %struct.page** %19, i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %48

28:                                               ; preds = %17
  %29 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %6, align 8
  %30 = load %struct.page**, %struct.page*** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @pcpu_map_pages(%struct.pcpu_chunk* %29, %struct.page** %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %6, align 8
  %37 = load %struct.page**, %struct.page*** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @pcpu_free_pages(%struct.pcpu_chunk* %36, %struct.page** %37, i32 %38, i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %28
  %44 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @pcpu_post_map_flush(%struct.pcpu_chunk* %44, i32 %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %35, %25, %14
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.page** @pcpu_get_pages(...) #1

declare dso_local i64 @pcpu_alloc_pages(%struct.pcpu_chunk*, %struct.page**, i32, i32, i32) #1

declare dso_local i64 @pcpu_map_pages(%struct.pcpu_chunk*, %struct.page**, i32, i32) #1

declare dso_local i32 @pcpu_free_pages(%struct.pcpu_chunk*, %struct.page**, i32, i32) #1

declare dso_local i32 @pcpu_post_map_flush(%struct.pcpu_chunk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

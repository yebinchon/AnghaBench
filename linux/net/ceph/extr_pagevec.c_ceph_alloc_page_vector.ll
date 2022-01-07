; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_pagevec.c_ceph_alloc_page_vector.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_pagevec.c_ceph_alloc_page_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page** @ceph_alloc_page_vector(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.page**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.page** @kmalloc_array(i32 %8, i32 8, i32 %9)
  store %struct.page** %10, %struct.page*** %6, align 8
  %11 = load %struct.page**, %struct.page*** %6, align 8
  %12 = icmp ne %struct.page** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.page** @ERR_PTR(i32 %15)
  store %struct.page** %16, %struct.page*** %3, align 8
  br label %48

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.page* @__page_cache_alloc(i32 %23)
  %25 = load %struct.page**, %struct.page*** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %27
  store %struct.page* %24, %struct.page** %28, align 8
  %29 = load %struct.page**, %struct.page*** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 %31
  %33 = load %struct.page*, %struct.page** %32, align 8
  %34 = icmp eq %struct.page* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load %struct.page**, %struct.page*** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ceph_release_page_vector(%struct.page** %36, i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.page** @ERR_PTR(i32 %40)
  store %struct.page** %41, %struct.page*** %3, align 8
  br label %48

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page** %47, %struct.page*** %3, align 8
  br label %48

48:                                               ; preds = %46, %35, %13
  %49 = load %struct.page**, %struct.page*** %3, align 8
  ret %struct.page** %49
}

declare dso_local %struct.page** @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.page** @ERR_PTR(i32) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local i32 @ceph_release_page_vector(%struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

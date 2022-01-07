; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c___mbochs_get_page.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c___mbochs_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mdev_state = type { %struct.page**, i32 }

@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.mdev_state*, i64)* @__mbochs_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__mbochs_get_page(%struct.mdev_state* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.mdev_state*, align 8
  %5 = alloca i64, align 8
  store %struct.mdev_state* %0, %struct.mdev_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.mdev_state*, %struct.mdev_state** %4, align 8
  %7 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %6, i32 0, i32 1
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.mdev_state*, %struct.mdev_state** %4, align 8
  %14 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %13, i32 0, i32 0
  %15 = load %struct.page**, %struct.page*** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %16
  %18 = load %struct.page*, %struct.page** %17, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_HIGHUSER, align 4
  %22 = load i32, i32* @__GFP_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.page* @alloc_pages(i32 %23, i32 0)
  %25 = load %struct.mdev_state*, %struct.mdev_state** %4, align 8
  %26 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %25, i32 0, i32 0
  %27 = load %struct.page**, %struct.page*** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.page*, %struct.page** %27, i64 %28
  store %struct.page* %24, %struct.page** %29, align 8
  %30 = load %struct.mdev_state*, %struct.mdev_state** %4, align 8
  %31 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %30, i32 0, i32 0
  %32 = load %struct.page**, %struct.page*** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.page*, %struct.page** %32, i64 %33
  %35 = load %struct.page*, %struct.page** %34, align 8
  %36 = icmp ne %struct.page* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %20
  store %struct.page* null, %struct.page** %3, align 8
  br label %53

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.mdev_state*, %struct.mdev_state** %4, align 8
  %41 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %40, i32 0, i32 0
  %42 = load %struct.page**, %struct.page*** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.page*, %struct.page** %42, i64 %43
  %45 = load %struct.page*, %struct.page** %44, align 8
  %46 = call i32 @get_page(%struct.page* %45)
  %47 = load %struct.mdev_state*, %struct.mdev_state** %4, align 8
  %48 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %47, i32 0, i32 0
  %49 = load %struct.page**, %struct.page*** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.page*, %struct.page** %49, i64 %50
  %52 = load %struct.page*, %struct.page** %51, align 8
  store %struct.page* %52, %struct.page** %3, align 8
  br label %53

53:                                               ; preds = %39, %37
  %54 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %54
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

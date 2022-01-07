; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcookies.c_get_dcookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcookies.c_get_dcookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dcookie_struct = type { i32 }

@dcookie_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCACHE_COOKIE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dcookie(%struct.path* %0, i64* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcookie_struct*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @mutex_lock(i32* @dcookie_mutex)
  %8 = call i32 (...) @is_live()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.path*, %struct.path** %3, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DCACHE_COOKIE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.path*, %struct.path** %3, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = ptrtoint %struct.TYPE_2__* %25 to i64
  %27 = call %struct.dcookie_struct* @find_dcookie(i64 %26)
  store %struct.dcookie_struct* %27, %struct.dcookie_struct** %6, align 8
  br label %37

28:                                               ; preds = %13
  %29 = load %struct.path*, %struct.path** %3, align 8
  %30 = call %struct.dcookie_struct* @alloc_dcookie(%struct.path* %29)
  store %struct.dcookie_struct* %30, %struct.dcookie_struct** %6, align 8
  %31 = load %struct.dcookie_struct*, %struct.dcookie_struct** %6, align 8
  %32 = icmp ne %struct.dcookie_struct* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %41

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.dcookie_struct*, %struct.dcookie_struct** %6, align 8
  %39 = call i64 @dcookie_value(%struct.dcookie_struct* %38)
  %40 = load i64*, i64** %4, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %33, %10
  %42 = call i32 @mutex_unlock(i32* @dcookie_mutex)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_live(...) #1

declare dso_local %struct.dcookie_struct* @find_dcookie(i64) #1

declare dso_local %struct.dcookie_struct* @alloc_dcookie(%struct.path*) #1

declare dso_local i64 @dcookie_value(%struct.dcookie_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

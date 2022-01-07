; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_reset.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.mem_cgroup = type { %struct.page_counter, %struct.page_counter, %struct.page_counter, %struct.page_counter }
%struct.page_counter = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @mem_cgroup_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mem_cgroup_reset(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kernfs_open_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca %struct.page_counter*, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %12 = call i32 @of_css(%struct.kernfs_open_file* %11)
  %13 = call %struct.mem_cgroup* @mem_cgroup_from_css(i32 %12)
  store %struct.mem_cgroup* %13, %struct.mem_cgroup** %9, align 8
  %14 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %15 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MEMFILE_TYPE(i32 %17)
  switch i32 %18, label %31 [
    i32 130, label %19
    i32 129, label %22
    i32 131, label %25
    i32 128, label %28
  ]

19:                                               ; preds = %4
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %21 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %20, i32 0, i32 3
  store %struct.page_counter* %21, %struct.page_counter** %10, align 8
  br label %33

22:                                               ; preds = %4
  %23 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %24 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %23, i32 0, i32 2
  store %struct.page_counter* %24, %struct.page_counter** %10, align 8
  br label %33

25:                                               ; preds = %4
  %26 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %27 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %26, i32 0, i32 1
  store %struct.page_counter* %27, %struct.page_counter** %10, align 8
  br label %33

28:                                               ; preds = %4
  %29 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %30 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %29, i32 0, i32 0
  store %struct.page_counter* %30, %struct.page_counter** %10, align 8
  br label %33

31:                                               ; preds = %4
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %31, %28, %25, %22, %19
  %34 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %35 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MEMFILE_ATTR(i32 %37)
  switch i32 %38, label %45 [
    i32 132, label %39
    i32 133, label %42
  ]

39:                                               ; preds = %33
  %40 = load %struct.page_counter*, %struct.page_counter** %10, align 8
  %41 = call i32 @page_counter_reset_watermark(%struct.page_counter* %40)
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.page_counter*, %struct.page_counter** %10, align 8
  %44 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %47

45:                                               ; preds = %33
  %46 = call i32 (...) @BUG()
  br label %47

47:                                               ; preds = %45, %42, %39
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_css(i32) #1

declare dso_local i32 @of_css(%struct.kernfs_open_file*) #1

declare dso_local i32 @MEMFILE_TYPE(i32) #1

declare dso_local %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @MEMFILE_ATTR(i32) #1

declare dso_local i32 @page_counter_reset_watermark(%struct.page_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

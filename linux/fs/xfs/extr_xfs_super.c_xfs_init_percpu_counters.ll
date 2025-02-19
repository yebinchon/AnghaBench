; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_init_percpu_counters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_init_percpu_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*)* @xfs_init_percpu_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_init_percpu_counters(%struct.xfs_mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  %5 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @percpu_counter_init(i32* %6, i32 0, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @percpu_counter_init(i32* %16, i32 0, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %47

22:                                               ; preds = %14
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @percpu_counter_init(i32* %24, i32 0, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %43

30:                                               ; preds = %22
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %31, i32 0, i32 3
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @percpu_counter_init(i32* %32, i32 0, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %53

39:                                               ; preds = %37
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %40, i32 0, i32 2
  %42 = call i32 @percpu_counter_destroy(i32* %41)
  br label %43

43:                                               ; preds = %39, %29
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %45 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %44, i32 0, i32 1
  %46 = call i32 @percpu_counter_destroy(i32* %45)
  br label %47

47:                                               ; preds = %43, %21
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %49 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %48, i32 0, i32 0
  %50 = call i32 @percpu_counter_destroy(i32* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %38, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @percpu_counter_init(i32*, i32, i32) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

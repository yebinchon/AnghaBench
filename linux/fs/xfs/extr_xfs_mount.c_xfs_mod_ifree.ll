; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_mod_ifree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_mod_ifree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_mod_ifree(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %6, i32 0, i32 0
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @percpu_counter_add(i32* %7, i32 %8)
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %10, i32 0, i32 0
  %12 = call i64 @percpu_counter_compare(i32* %11, i32 0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = call i32 @ASSERT(i32 0)
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @percpu_counter_add(i32* %17, i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @percpu_counter_add(i32*, i32) #1

declare dso_local i64 @percpu_counter_compare(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

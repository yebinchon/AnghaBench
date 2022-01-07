; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.h_nilfs_flush_device.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.h_nilfs_flush_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32 }

@BARRIER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*)* @nilfs_flush_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_flush_device(%struct.the_nilfs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %3, align 8
  %5 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %6 = load i32, i32* @BARRIER, align 4
  %7 = call i32 @nilfs_test_opt(%struct.the_nilfs* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %11 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %31

15:                                               ; preds = %9
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = call i32 (...) @smp_wmb()
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @blkdev_issue_flush(i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @nilfs_test_opt(%struct.the_nilfs*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

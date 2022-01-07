; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_flush_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_flush_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { %struct.nilfs_sc_info* }
%struct.nilfs_sc_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_flush_segment(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_sc_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 0
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  store %struct.the_nilfs* %9, %struct.the_nilfs** %5, align 8
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %11 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %10, i32 0, i32 0
  %12 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  store %struct.nilfs_sc_info* %12, %struct.nilfs_sc_info** %6, align 8
  %13 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %14 = icmp ne %struct.nilfs_sc_info* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i64 (...) @nilfs_doing_construction()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  br label %31

19:                                               ; preds = %15
  %20 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %6, align 8
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @NILFS_MDT_INODE(%struct.super_block* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = call i32 @nilfs_segctor_do_flush(%struct.nilfs_sc_info* %20, i32 %29)
  br label %31

31:                                               ; preds = %28, %18
  ret void
}

declare dso_local i64 @nilfs_doing_construction(...) #1

declare dso_local i32 @nilfs_segctor_do_flush(%struct.nilfs_sc_info*, i32) #1

declare dso_local i64 @NILFS_MDT_INODE(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

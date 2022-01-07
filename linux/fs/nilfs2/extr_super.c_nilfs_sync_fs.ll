; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.nilfs_super_block = type { i32 }

@NILFS_SB_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @nilfs_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_super_block**, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  store %struct.the_nilfs* %10, %struct.the_nilfs** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call i32 @nilfs_construct_segment(%struct.super_block* %14)
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 0
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %21 = call i64 @nilfs_sb_dirty(%struct.the_nilfs* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %26 = call i32 @nilfs_sb_will_flip(%struct.the_nilfs* %25)
  %27 = call %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block* %24, i32 %26)
  store %struct.nilfs_super_block** %27, %struct.nilfs_super_block*** %6, align 8
  %28 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %29 = call i64 @likely(%struct.nilfs_super_block** %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %33 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %32, i64 0
  %34 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %33, align 8
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %36 = call i32 @nilfs_set_log_cursor(%struct.nilfs_super_block* %34, %struct.the_nilfs* %35)
  %37 = load %struct.super_block*, %struct.super_block** %3, align 8
  %38 = load i32, i32* @NILFS_SB_COMMIT, align 4
  %39 = call i32 @nilfs_commit_super(%struct.super_block* %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %23
  br label %41

41:                                               ; preds = %40, %16
  %42 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %43 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %42, i32 0, i32 0
  %44 = call i32 @up_write(i32* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %49 = call i32 @nilfs_flush_device(%struct.the_nilfs* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @nilfs_construct_segment(%struct.super_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @nilfs_sb_dirty(%struct.the_nilfs*) #1

declare dso_local %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block*, i32) #1

declare dso_local i32 @nilfs_sb_will_flip(%struct.the_nilfs*) #1

declare dso_local i64 @likely(%struct.nilfs_super_block**) #1

declare dso_local i32 @nilfs_set_log_cursor(%struct.nilfs_super_block*, %struct.the_nilfs*) #1

declare dso_local i32 @nilfs_commit_super(%struct.super_block*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nilfs_flush_device(%struct.the_nilfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

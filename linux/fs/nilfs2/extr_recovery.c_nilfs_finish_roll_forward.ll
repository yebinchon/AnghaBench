; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_finish_roll_forward.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_finish_roll_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32, i32 }
%struct.nilfs_recovery_info = type { i32, i32 }
%struct.buffer_head = type { i32, i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"buffer sync write failed during post-cleaning of recovery.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.the_nilfs*, %struct.nilfs_recovery_info*)* @nilfs_finish_roll_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_finish_roll_forward(%struct.the_nilfs* %0, %struct.nilfs_recovery_info* %1) #0 {
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca %struct.nilfs_recovery_info*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %3, align 8
  store %struct.nilfs_recovery_info* %1, %struct.nilfs_recovery_info** %4, align 8
  %7 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %8 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %4, align 8
  %9 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @nilfs_get_segnum_of_block(%struct.the_nilfs* %7, i32 %10)
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %13 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %4, align 8
  %14 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @nilfs_get_segnum_of_block(%struct.the_nilfs* %12, i32 %15)
  %17 = icmp ne i64 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %21 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %4, align 8
  %24 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %27 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.buffer_head* @__getblk(i32 %22, i32 %25, i32 %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %5, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %31 = icmp ne %struct.buffer_head* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memset(i32 %37, i32 0, i32 %40)
  %42 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %43 = call i32 @set_buffer_dirty(%struct.buffer_head* %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %45 = call i32 @sync_dirty_buffer(%struct.buffer_head* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %19
  %50 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %51 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @KERN_WARNING, align 4
  %54 = call i32 @nilfs_msg(i32 %52, i32 %53, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %49, %19
  %56 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %57 = call i32 @brelse(%struct.buffer_head* %56)
  br label %58

58:                                               ; preds = %55, %18
  ret void
}

declare dso_local i64 @nilfs_get_segnum_of_block(%struct.the_nilfs*, i32) #1

declare dso_local %struct.buffer_head* @__getblk(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

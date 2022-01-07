; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.reiserfs_transaction_handle = type { i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"green-2005\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"reserved blocks left %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @reiserfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reiserfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_transaction_handle, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call i32 @reiserfs_quota_off_umount(%struct.super_block* %5)
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i32 @reiserfs_write_lock(%struct.super_block* %7)
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call i32 @sb_rdonly(%struct.super_block* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %1
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %3, %struct.super_block* %13, i32 10)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %18)
  %20 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %17, i32 %19, i32 1)
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = call i32 @SB_DISK_SUPER_BLOCK(%struct.super_block* %21)
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @set_sb_umount_state(i32 %22, i32 %26)
  %28 = load %struct.super_block*, %struct.super_block** %2, align 8
  %29 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %28)
  %30 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %3, i32 %29)
  br label %31

31:                                               ; preds = %16, %12
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.super_block*, %struct.super_block** %2, align 8
  %34 = call i32 @journal_release(%struct.reiserfs_transaction_handle* %3, %struct.super_block* %33)
  %35 = load %struct.super_block*, %struct.super_block** %2, align 8
  %36 = call i32 @reiserfs_free_bitmap_cache(%struct.super_block* %35)
  %37 = load %struct.super_block*, %struct.super_block** %2, align 8
  %38 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %37)
  %39 = call i32 @brelse(i32 %38)
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = call i32 @print_statistics(%struct.super_block* %40)
  %42 = load %struct.super_block*, %struct.super_block** %2, align 8
  %43 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %32
  %48 = load %struct.super_block*, %struct.super_block** %2, align 8
  %49 = load %struct.super_block*, %struct.super_block** %2, align 8
  %50 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @reiserfs_warning(%struct.super_block* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %47, %32
  %55 = load %struct.super_block*, %struct.super_block** %2, align 8
  %56 = call i32 @reiserfs_write_unlock(%struct.super_block* %55)
  %57 = load %struct.super_block*, %struct.super_block** %2, align 8
  %58 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = call i32 @mutex_destroy(i32* %59)
  %61 = load %struct.super_block*, %struct.super_block** %2, align 8
  %62 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @destroy_workqueue(i32 %64)
  %66 = load %struct.super_block*, %struct.super_block** %2, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load %struct.super_block*, %struct.super_block** %2, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  ret void
}

declare dso_local i32 @reiserfs_quota_off_umount(%struct.super_block*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @set_sb_umount_state(i32, i32) #1

declare dso_local i32 @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @journal_release(%struct.reiserfs_transaction_handle*, %struct.super_block*) #1

declare dso_local i32 @reiserfs_free_bitmap_cache(%struct.super_block*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @print_statistics(%struct.super_block*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

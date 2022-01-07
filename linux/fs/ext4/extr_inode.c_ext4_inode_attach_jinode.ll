; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_attach_jinode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_inode_attach_jinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_inode_info = type { %struct.jbd2_inode* }
%struct.jbd2_inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_inode_attach_jinode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext4_inode_info*, align 8
  %5 = alloca %struct.jbd2_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %6)
  store %struct.ext4_inode_info* %7, %struct.ext4_inode_info** %4, align 8
  %8 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %9 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %8, i32 0, i32 0
  %10 = load %struct.jbd2_inode*, %struct.jbd2_inode** %9, align 8
  %11 = icmp ne %struct.jbd2_inode* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_2__* @EXT4_SB(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %62

21:                                               ; preds = %12
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.jbd2_inode* @jbd2_alloc_inode(i32 %22)
  store %struct.jbd2_inode* %23, %struct.jbd2_inode** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %28 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %27, i32 0, i32 0
  %29 = load %struct.jbd2_inode*, %struct.jbd2_inode** %28, align 8
  %30 = icmp ne %struct.jbd2_inode* %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %21
  %32 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %33 = icmp ne %struct.jbd2_inode* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %62

40:                                               ; preds = %31
  %41 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %42 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %43 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %42, i32 0, i32 0
  store %struct.jbd2_inode* %41, %struct.jbd2_inode** %43, align 8
  %44 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %45 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %44, i32 0, i32 0
  %46 = load %struct.jbd2_inode*, %struct.jbd2_inode** %45, align 8
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = call i32 @jbd2_journal_init_jbd_inode(%struct.jbd2_inode* %46, %struct.inode* %47)
  store %struct.jbd2_inode* null, %struct.jbd2_inode** %5, align 8
  br label %49

49:                                               ; preds = %40, %21
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %54 = icmp ne %struct.jbd2_inode* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.jbd2_inode*, %struct.jbd2_inode** %5, align 8
  %60 = call i32 @jbd2_free_inode(%struct.jbd2_inode* %59)
  br label %61

61:                                               ; preds = %58, %49
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %34, %20
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(i32) #1

declare dso_local %struct.jbd2_inode* @jbd2_alloc_inode(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd2_journal_init_jbd_inode(%struct.jbd2_inode*, %struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @jbd2_free_inode(%struct.jbd2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

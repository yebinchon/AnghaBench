; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.jfs_inode_info = type { i64, i32, i32, i32 }
%struct.bmap = type { i32* }
%struct.TYPE_2__ = type { %struct.bmap* }

@.str = private unnamed_addr constant [33 x i8] c"In jfs_evict_inode, inode = 0x%p\00", align 1
@FILESYSTEM_I = common dso_local global i64 0, align 8
@COMMIT_Freewmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jfs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.jfs_inode_info*, align 8
  %4 = alloca %struct.bmap*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %5)
  store %struct.jfs_inode_info* %6, %struct.jfs_inode_info** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call i32 @jfs_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.inode* %7)
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %1
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call i32 @is_bad_inode(%struct.inode* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call i32 @dquot_initialize(%struct.inode* %18)
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FILESYSTEM_I, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = call i32 @truncate_inode_pages_final(i32* %28)
  %30 = load i32, i32* @COMMIT_Freewmap, align 4
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = call i64 @test_cflag(i32 %30, %struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = call i32 @jfs_free_zero_link(%struct.inode* %35)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = call i32 @diFree(%struct.inode* %38)
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = call i32 @dquot_free_inode(%struct.inode* %40)
  br label %42

42:                                               ; preds = %37, %17
  br label %47

43:                                               ; preds = %13, %1
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = call i32 @truncate_inode_pages_final(i32* %45)
  br label %47

47:                                               ; preds = %43, %42
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = call i32 @clear_inode(%struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = call i32 @dquot_drop(%struct.inode* %50)
  %52 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %53 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %52, i32 0, i32 3
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %60 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %59, i32 0, i32 2
  %61 = call i32 @spin_lock_irq(i32* %60)
  %62 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %63 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %84

66:                                               ; preds = %47
  %67 = load %struct.inode*, %struct.inode** %2, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_2__* @JFS_SBI(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.bmap*, %struct.bmap** %71, align 8
  store %struct.bmap* %72, %struct.bmap** %4, align 8
  %73 = load %struct.bmap*, %struct.bmap** %4, align 8
  %74 = getelementptr inbounds %struct.bmap, %struct.bmap* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %77 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = call i32 @atomic_dec(i32* %80)
  %82 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %83 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %82, i32 0, i32 1
  store i32 -1, i32* %83, align 8
  br label %84

84:                                               ; preds = %66, %47
  %85 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %3, align 8
  %86 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %85, i32 0, i32 2
  %87 = call i32 @spin_unlock_irq(i32* %86)
  ret void
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @jfs_info(i8*, %struct.inode*) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i32 @jfs_free_zero_link(%struct.inode*) #1

declare dso_local i32 @diFree(%struct.inode*) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_iget_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_iget_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.inode = type { i64, i32, i32, i32 }
%struct.super_block = type { i32 }

@inode_hashtable = common dso_local global %struct.hlist_head* null, align 8
@inode_hash_lock = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @iget_locked(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.hlist_head*, %struct.hlist_head** @inode_hashtable, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @hash(%struct.super_block* %10, i64 %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %9, i64 %13
  store %struct.hlist_head* %14, %struct.hlist_head** %6, align 8
  br label %15

15:                                               ; preds = %91, %36, %2
  %16 = call i32 @spin_lock(i32* @inode_hash_lock)
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call %struct.inode* @find_inode_fast(%struct.super_block* %17, %struct.hlist_head* %18, i64 %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = call i32 @spin_unlock(i32* @inode_hash_lock)
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i64 @IS_ERR(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %97

29:                                               ; preds = %24
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call i32 @wait_on_inode(%struct.inode* %30)
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i32 @inode_unhashed(%struct.inode* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i32 @iput(%struct.inode* %37)
  br label %15

39:                                               ; preds = %29
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %40, %struct.inode** %3, align 8
  br label %97

41:                                               ; preds = %15
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = call %struct.inode* @alloc_inode(%struct.super_block* %42)
  store %struct.inode* %43, %struct.inode** %7, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = icmp ne %struct.inode* %44, null
  br i1 %45, label %46, label %95

46:                                               ; preds = %41
  %47 = call i32 @spin_lock(i32* @inode_hash_lock)
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call %struct.inode* @find_inode_fast(%struct.super_block* %48, %struct.hlist_head* %49, i64 %50)
  store %struct.inode* %51, %struct.inode** %8, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = icmp ne %struct.inode* %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load i32, i32* @I_NEW, align 4
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  %66 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %67 = call i32 @hlist_add_head(i32* %65, %struct.hlist_head* %66)
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = call i32 @inode_sb_list_add(%struct.inode* %71)
  %73 = call i32 @spin_unlock(i32* @inode_hash_lock)
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %74, %struct.inode** %3, align 8
  br label %97

75:                                               ; preds = %46
  %76 = call i32 @spin_unlock(i32* @inode_hash_lock)
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = call i32 @destroy_inode(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = call i64 @IS_ERR(%struct.inode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %97

83:                                               ; preds = %75
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %84, %struct.inode** %7, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = call i32 @wait_on_inode(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = call i32 @inode_unhashed(%struct.inode* %87)
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = call i32 @iput(%struct.inode* %92)
  br label %15

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %41
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %96, %struct.inode** %3, align 8
  br label %97

97:                                               ; preds = %95, %82, %54, %39, %28
  %98 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %98
}

declare dso_local i32 @hash(%struct.super_block*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @find_inode_fast(%struct.super_block*, %struct.hlist_head*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @wait_on_inode(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inode_unhashed(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @alloc_inode(%struct.super_block*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @inode_sb_list_add(%struct.inode*) #1

declare dso_local i32 @destroy_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

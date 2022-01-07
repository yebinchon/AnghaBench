; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i64, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.TYPE_2__ = type { i64 }

@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_transaction_handle, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %8 = mul nsw i32 %7, 2
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @REISERFS_QUOTA_INIT_BLOCKS(i32 %11)
  %13 = mul nsw i32 2, %12
  %14 = add nsw i32 %8, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call i32 @is_bad_inode(%struct.inode* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call i32 @dquot_initialize(%struct.inode* %24)
  br label %26

26:                                               ; preds = %23, %19, %1
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 4
  %29 = call i32 @truncate_inode_pages_final(i32* %28)
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %107

35:                                               ; preds = %26
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @I_NEW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %99, label %42

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = call %struct.TYPE_2__* @INODE_PKEY(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %99

48:                                               ; preds = %42
  %49 = load %struct.inode*, %struct.inode** %2, align 8
  %50 = call i32 @reiserfs_delete_xattrs(%struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @reiserfs_write_lock(i32 %53)
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @journal_begin(%struct.reiserfs_transaction_handle* %4, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %94

62:                                               ; preds = %48
  %63 = load %struct.inode*, %struct.inode** %2, align 8
  %64 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %2, align 8
  %66 = call i32 @reiserfs_discard_prealloc(%struct.reiserfs_transaction_handle* %4, %struct.inode* %65)
  %67 = load %struct.inode*, %struct.inode** %2, align 8
  %68 = call i32 @reiserfs_delete_object(%struct.reiserfs_transaction_handle* %4, %struct.inode* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %62
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @reiserfs_write_unlock_nested(i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.inode*, %struct.inode** %2, align 8
  %77 = call i32 @dquot_free_inode(%struct.inode* %76)
  %78 = load %struct.inode*, %struct.inode** %2, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @reiserfs_write_lock_nested(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %62
  %84 = call i64 @journal_end(%struct.reiserfs_transaction_handle* %4)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %94

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %94

91:                                               ; preds = %87
  %92 = load %struct.inode*, %struct.inode** %2, align 8
  %93 = call i32 @remove_save_link(%struct.inode* %92, i32 0)
  br label %94

94:                                               ; preds = %91, %90, %86, %61
  %95 = load %struct.inode*, %struct.inode** %2, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @reiserfs_write_unlock(i32 %97)
  br label %100

99:                                               ; preds = %42, %35
  br label %100

100:                                              ; preds = %99, %94
  %101 = load %struct.inode*, %struct.inode** %2, align 8
  %102 = call i32 @clear_inode(%struct.inode* %101)
  %103 = load %struct.inode*, %struct.inode** %2, align 8
  %104 = call i32 @dquot_drop(%struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %2, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %112

107:                                              ; preds = %34
  %108 = load %struct.inode*, %struct.inode** %2, align 8
  %109 = call i32 @clear_inode(%struct.inode* %108)
  %110 = load %struct.inode*, %struct.inode** %2, align 8
  %111 = call i32 @dquot_drop(%struct.inode* %110)
  br label %112

112:                                              ; preds = %107, %100
  ret void
}

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local %struct.TYPE_2__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @reiserfs_delete_xattrs(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i64 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @reiserfs_discard_prealloc(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @reiserfs_delete_object(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(i32) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock_nested(i32, i32) #1

declare dso_local i64 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @remove_save_link(%struct.inode*, i32) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

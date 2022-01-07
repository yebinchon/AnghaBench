; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }

@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@REISERFS_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @reiserfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.reiserfs_transaction_handle, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %16 = mul nsw i32 %15, 3
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32 %19)
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %16, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i32 @dquot_initialize(%struct.inode* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %116

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @reiserfs_write_lock(i32 %32)
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REISERFS_LINK_MAX, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @reiserfs_write_unlock(i32 %42)
  %44 = load i32, i32* @EMLINK, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %116

46:                                               ; preds = %29
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call i32 @inc_nlink(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %10, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = call i32 @drop_nlink(%struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @reiserfs_write_unlock(i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %116

64:                                               ; preds = %46
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dentry*, %struct.dentry** %7, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = call i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle* %10, %struct.inode* %65, i32 %69, i32 %73, %struct.inode* %74, i32 1)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %76)
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %78)
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %64
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = call i32 @drop_nlink(%struct.inode* %83)
  %85 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @reiserfs_write_unlock(i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %12, align 4
  br label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %4, align 4
  br label %116

98:                                               ; preds = %64
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = call i32 @current_time(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.inode*, %struct.inode** %9, align 8
  %104 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %10, %struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %9, align 8
  %106 = call i32 @ihold(%struct.inode* %105)
  %107 = load %struct.dentry*, %struct.dentry** %7, align 8
  %108 = load %struct.inode*, %struct.inode** %9, align 8
  %109 = call i32 @d_instantiate(%struct.dentry* %107, %struct.inode* %108)
  %110 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10)
  store i32 %110, i32* %8, align 4
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @reiserfs_write_unlock(i32 %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %98, %96, %56, %39, %27
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

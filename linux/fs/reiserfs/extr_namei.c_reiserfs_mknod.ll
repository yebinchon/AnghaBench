; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32* }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_security_handle = type { i32 }

@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reiserfs_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @reiserfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.reiserfs_transaction_handle, align 4
  %13 = alloca %struct.reiserfs_security_handle, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %17 = mul nsw i32 %16, 3
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @REISERFS_QUOTA_INIT_BLOCKS(i32 %20)
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32 %24)
  %26 = add nsw i32 %21, %25
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %17, %27
  store i32 %28, i32* %14, align 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @dquot_initialize(%struct.inode* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %154

35:                                               ; preds = %4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.inode* @new_inode(i32 %38)
  store %struct.inode* %39, %struct.inode** %11, align 8
  %40 = icmp ne %struct.inode* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %154

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @new_inode_init(%struct.inode* %45, %struct.inode* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = call i32 @drop_new_inode(%struct.inode* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %154

55:                                               ; preds = %44
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i64 @reiserfs_cache_default_acl(%struct.inode* %56)
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = call i32 @reiserfs_security_init(%struct.inode* %62, %struct.inode* %63, %struct.TYPE_2__* %65, %struct.reiserfs_security_handle* %13)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = call i32 @drop_new_inode(%struct.inode* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %154

73:                                               ; preds = %55
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @reiserfs_write_lock(i32 %79)
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %12, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = call i32 @drop_new_inode(%struct.inode* %89)
  br label %148

91:                                               ; preds = %73
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.dentry*, %struct.dentry** %7, align 8
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = call i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle* %12, %struct.inode* %92, i32 %93, i32* null, i32 0, %struct.dentry* %94, %struct.inode* %95, %struct.reiserfs_security_handle* %13)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %148

100:                                              ; preds = %91
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 2
  store i32* @reiserfs_special_inode_operations, i32** %102, align 8
  %103 = load %struct.inode*, %struct.inode** %11, align 8
  %104 = load %struct.inode*, %struct.inode** %11, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @init_special_inode(%struct.inode* %103, i32 %106, i32 %107)
  %109 = load %struct.inode*, %struct.inode** %11, align 8
  %110 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %12, %struct.inode* %109)
  %111 = load %struct.inode*, %struct.inode** %11, align 8
  %112 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %111)
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %113)
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = load %struct.dentry*, %struct.dentry** %7, align 8
  %117 = getelementptr inbounds %struct.dentry, %struct.dentry* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dentry*, %struct.dentry** %7, align 8
  %121 = getelementptr inbounds %struct.dentry, %struct.dentry* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.inode*, %struct.inode** %11, align 8
  %125 = call i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle* %12, %struct.inode* %115, i32 %119, i32 %123, %struct.inode* %124, i32 1)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %100
  %129 = load %struct.inode*, %struct.inode** %11, align 8
  %130 = call i32 @drop_nlink(%struct.inode* %129)
  %131 = load %struct.inode*, %struct.inode** %11, align 8
  %132 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %12, %struct.inode* %131)
  %133 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %12)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %136, %128
  %139 = load %struct.inode*, %struct.inode** %11, align 8
  %140 = call i32 @unlock_new_inode(%struct.inode* %139)
  %141 = load %struct.inode*, %struct.inode** %11, align 8
  %142 = call i32 @iput(%struct.inode* %141)
  br label %148

143:                                              ; preds = %100
  %144 = load %struct.dentry*, %struct.dentry** %7, align 8
  %145 = load %struct.inode*, %struct.inode** %11, align 8
  %146 = call i32 @d_instantiate_new(%struct.dentry* %144, %struct.inode* %145)
  %147 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %12)
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %143, %138, %99, %88
  %149 = load %struct.inode*, %struct.inode** %6, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @reiserfs_write_unlock(i32 %151)
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %148, %69, %51, %41, %33
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @new_inode_init(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @drop_new_inode(%struct.inode*) #1

declare dso_local i64 @reiserfs_cache_default_acl(%struct.inode*) #1

declare dso_local i32 @reiserfs_security_init(%struct.inode*, %struct.inode*, %struct.TYPE_2__*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32*, i32, %struct.dentry*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

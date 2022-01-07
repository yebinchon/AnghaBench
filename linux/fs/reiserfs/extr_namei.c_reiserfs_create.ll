; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_security_handle = type { i32 }

@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reiserfs_file_inode_operations = common dso_local global i32 0, align 4
@reiserfs_file_operations = common dso_local global i32 0, align 4
@reiserfs_address_space_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @reiserfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.reiserfs_transaction_handle, align 4
  %14 = alloca %struct.reiserfs_security_handle, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %17 = mul nsw i32 %16, 2
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
  store i32 %28, i32* %12, align 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @dquot_initialize(%struct.inode* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %152

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
  br label %152

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
  br label %152

55:                                               ; preds = %44
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i64 @reiserfs_cache_default_acl(%struct.inode* %56)
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %12, align 4
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = call i32 @reiserfs_security_init(%struct.inode* %62, %struct.inode* %63, %struct.TYPE_4__* %65, %struct.reiserfs_security_handle* %14)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = call i32 @drop_new_inode(%struct.inode* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %152

73:                                               ; preds = %55
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @reiserfs_write_lock(i32 %79)
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %13, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = call i32 @drop_new_inode(%struct.inode* %89)
  br label %146

91:                                               ; preds = %73
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.dentry*, %struct.dentry** %7, align 8
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = call i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle* %13, %struct.inode* %92, i32 %93, i32* null, i32 0, %struct.dentry* %94, %struct.inode* %95, %struct.reiserfs_security_handle* %14)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %146

100:                                              ; preds = %91
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 3
  store i32* @reiserfs_file_inode_operations, i32** %102, align 8
  %103 = load %struct.inode*, %struct.inode** %11, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 2
  store i32* @reiserfs_file_operations, i32** %104, align 8
  %105 = load %struct.inode*, %struct.inode** %11, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32* @reiserfs_address_space_operations, i32** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = load %struct.dentry*, %struct.dentry** %7, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dentry*, %struct.dentry** %7, align 8
  %115 = getelementptr inbounds %struct.dentry, %struct.dentry* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.inode*, %struct.inode** %11, align 8
  %119 = call i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle* %13, %struct.inode* %109, i32 %113, i32 %117, %struct.inode* %118, i32 1)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %100
  %123 = load %struct.inode*, %struct.inode** %11, align 8
  %124 = call i32 @drop_nlink(%struct.inode* %123)
  %125 = load %struct.inode*, %struct.inode** %11, align 8
  %126 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %13, %struct.inode* %125)
  %127 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %13)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %130, %122
  %133 = load %struct.inode*, %struct.inode** %11, align 8
  %134 = call i32 @unlock_new_inode(%struct.inode* %133)
  %135 = load %struct.inode*, %struct.inode** %11, align 8
  %136 = call i32 @iput(%struct.inode* %135)
  br label %146

137:                                              ; preds = %100
  %138 = load %struct.inode*, %struct.inode** %11, align 8
  %139 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %138)
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %140)
  %142 = load %struct.dentry*, %struct.dentry** %7, align 8
  %143 = load %struct.inode*, %struct.inode** %11, align 8
  %144 = call i32 @d_instantiate_new(%struct.dentry* %142, %struct.inode* %143)
  %145 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %13)
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %137, %132, %99, %88
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @reiserfs_write_unlock(i32 %149)
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %146, %69, %51, %41, %33
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @new_inode_init(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @drop_new_inode(%struct.inode*) #1

declare dso_local i64 @reiserfs_cache_default_acl(%struct.inode*) #1

declare dso_local i32 @reiserfs_security_init(%struct.inode*, %struct.inode*, %struct.TYPE_4__*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32*, i32, %struct.dentry*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

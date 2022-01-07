; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.dentry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_security_handle = type { i32 }

@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@reiserfs_symlink_inode_operations = common dso_local global i32 0, align 4
@reiserfs_address_space_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @reiserfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.reiserfs_transaction_handle, align 4
  %13 = alloca %struct.reiserfs_security_handle, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @S_IFLNK, align 4
  %18 = load i32, i32* @S_IRWXUGO, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %21 = mul nsw i32 %20, 3
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = call i32 @REISERFS_QUOTA_INIT_BLOCKS(%struct.TYPE_10__* %24)
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = call i32 @REISERFS_QUOTA_TRANS_BLOCKS(%struct.TYPE_10__* %28)
  %30 = add nsw i32 %25, %29
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %21, %31
  store i32 %32, i32* %15, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @dquot_initialize(%struct.inode* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %195

39:                                               ; preds = %3
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = call %struct.inode* @new_inode(%struct.TYPE_10__* %42)
  store %struct.inode* %43, %struct.inode** %9, align 8
  %44 = icmp ne %struct.inode* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %195

48:                                               ; preds = %39
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @new_inode_init(%struct.inode* %49, %struct.inode* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i32 @drop_new_inode(%struct.inode* %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %195

59:                                               ; preds = %48
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = call i32 @reiserfs_security_init(%struct.inode* %60, %struct.inode* %61, %struct.TYPE_11__* %63, %struct.reiserfs_security_handle* %13)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.inode*, %struct.inode** %9, align 8
  %69 = call i32 @drop_new_inode(%struct.inode* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %195

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %15, align 4
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = call i32 @reiserfs_write_lock(%struct.TYPE_10__* %77)
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = call i32 @ROUND_UP(i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @MAX_DIRECT_ITEM_LEN(i32 %87)
  %89 = icmp sgt i32 %82, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %71
  %91 = load i32, i32* @ENAMETOOLONG, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = call i32 @drop_new_inode(%struct.inode* %93)
  br label %189

95:                                               ; preds = %71
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @GFP_NOFS, align 4
  %98 = call i8* @kmalloc(i32 %96, i32 %97)
  store i8* %98, i8** %10, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %95
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = call i32 @drop_new_inode(%struct.inode* %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %189

106:                                              ; preds = %95
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = call i32 @memcpy(i8* %107, i8* %108, i32 %110)
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = call i32 @padd_item(i8* %112, i32 %113, i32 %115)
  %117 = load %struct.inode*, %struct.inode** %5, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %12, %struct.TYPE_10__* %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %106
  %125 = load %struct.inode*, %struct.inode** %9, align 8
  %126 = call i32 @drop_new_inode(%struct.inode* %125)
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @kfree(i8* %127)
  br label %189

129:                                              ; preds = %106
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = load %struct.dentry*, %struct.dentry** %6, align 8
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = call i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle* %12, %struct.inode* %130, i32 %131, i8* %132, i32 %134, %struct.dentry* %135, %struct.inode* %136, %struct.reiserfs_security_handle* %13)
  store i32 %137, i32* %8, align 4
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @kfree(i8* %138)
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %189

143:                                              ; preds = %129
  %144 = load %struct.inode*, %struct.inode** %9, align 8
  %145 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %144)
  %146 = load %struct.inode*, %struct.inode** %5, align 8
  %147 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %146)
  %148 = load %struct.inode*, %struct.inode** %9, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 2
  store i32* @reiserfs_symlink_inode_operations, i32** %149, align 8
  %150 = load %struct.inode*, %struct.inode** %9, align 8
  %151 = call i32 @inode_nohighmem(%struct.inode* %150)
  %152 = load %struct.inode*, %struct.inode** %9, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 1
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  store i32* @reiserfs_address_space_operations, i32** %155, align 8
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = load %struct.dentry*, %struct.dentry** %6, align 8
  %158 = getelementptr inbounds %struct.dentry, %struct.dentry* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.dentry*, %struct.dentry** %6, align 8
  %162 = getelementptr inbounds %struct.dentry, %struct.dentry* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.inode*, %struct.inode** %9, align 8
  %166 = call i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle* %12, %struct.inode* %156, i32 %160, i32 %164, %struct.inode* %165, i32 1)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %143
  %170 = load %struct.inode*, %struct.inode** %9, align 8
  %171 = call i32 @drop_nlink(%struct.inode* %170)
  %172 = load %struct.inode*, %struct.inode** %9, align 8
  %173 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %12, %struct.inode* %172)
  %174 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %12)
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = load i32, i32* %16, align 4
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %177, %169
  %180 = load %struct.inode*, %struct.inode** %9, align 8
  %181 = call i32 @unlock_new_inode(%struct.inode* %180)
  %182 = load %struct.inode*, %struct.inode** %9, align 8
  %183 = call i32 @iput(%struct.inode* %182)
  br label %189

184:                                              ; preds = %143
  %185 = load %struct.dentry*, %struct.dentry** %6, align 8
  %186 = load %struct.inode*, %struct.inode** %9, align 8
  %187 = call i32 @d_instantiate_new(%struct.dentry* %185, %struct.inode* %186)
  %188 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %12)
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %184, %179, %142, %124, %101, %90
  %190 = load %struct.inode*, %struct.inode** %5, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 0
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = call i32 @reiserfs_write_unlock(%struct.TYPE_10__* %192)
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %189, %67, %55, %45, %37
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(%struct.TYPE_10__*) #1

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(%struct.TYPE_10__*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(%struct.TYPE_10__*) #1

declare dso_local i32 @new_inode_init(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @drop_new_inode(%struct.inode*) #1

declare dso_local i32 @reiserfs_security_init(%struct.inode*, %struct.inode*, %struct.TYPE_11__*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @ROUND_UP(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MAX_DIRECT_ITEM_LEN(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @padd_item(i8*, i32, i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i8*, i32, %struct.dentry*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

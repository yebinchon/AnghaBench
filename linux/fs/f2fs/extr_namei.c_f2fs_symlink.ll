; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__*, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.fscrypt_str = type { i8*, i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@f2fs_encrypted_symlink_inode_operations = common dso_local global i32 0, align 4
@f2fs_symlink_inode_operations = common dso_local global i32 0, align 4
@f2fs_dblock_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @f2fs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fscrypt_str, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %13)
  store %struct.f2fs_sb_info* %14, %struct.f2fs_sb_info** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %10, align 8
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %18 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %155

24:                                               ; preds = %3
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %26 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %155

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fscrypt_prepare_symlink(%struct.inode* %32, i8* %33, i64 %34, i32 %39, %struct.fscrypt_str* %11)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  br label %155

45:                                               ; preds = %31
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call i32 @dquot_initialize(%struct.inode* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %155

52:                                               ; preds = %45
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load i32, i32* @S_IFLNK, align 4
  %55 = load i32, i32* @S_IRWXUGO, align 4
  %56 = or i32 %54, %55
  %57 = call %struct.inode* @f2fs_new_inode(%struct.inode* %53, i32 %56)
  store %struct.inode* %57, %struct.inode** %9, align 8
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call i64 @IS_ERR(%struct.inode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = call i32 @PTR_ERR(%struct.inode* %62)
  store i32 %63, i32* %4, align 4
  br label %155

64:                                               ; preds = %52
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = call i64 @IS_ENCRYPTED(%struct.inode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 2
  store i32* @f2fs_encrypted_symlink_inode_operations, i32** %70, align 8
  br label %74

71:                                               ; preds = %64
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 2
  store i32* @f2fs_symlink_inode_operations, i32** %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = call i32 @inode_nohighmem(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32* @f2fs_dblock_aops, i32** %80, align 8
  %81 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %82 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %81)
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i32 @f2fs_add_link(%struct.dentry* %83, %struct.inode* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %141

89:                                               ; preds = %74
  %90 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %91 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %90)
  %92 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %92, i32 %95)
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @fscrypt_encrypt_symlink(%struct.inode* %97, i8* %98, i64 %99, %struct.fscrypt_str* %11)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %111

104:                                              ; preds = %89
  %105 = load %struct.inode*, %struct.inode** %9, align 8
  %106 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %11, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %11, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @page_symlink(%struct.inode* %105, i8* %107, i32 %109)
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %104, %103
  %112 = load %struct.dentry*, %struct.dentry** %6, align 8
  %113 = load %struct.inode*, %struct.inode** %9, align 8
  %114 = call i32 @d_instantiate_new(%struct.dentry* %112, %struct.inode* %113)
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %111
  %118 = load %struct.inode*, %struct.inode** %9, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %11, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, 1
  %124 = call i32 @filemap_write_and_wait_range(%struct.TYPE_4__* %120, i32 0, i32 %123)
  %125 = load %struct.inode*, %struct.inode** %5, align 8
  %126 = call i64 @IS_DIRSYNC(%struct.inode* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %130 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @f2fs_sync_fs(i32 %131, i32 1)
  br label %133

133:                                              ; preds = %128, %117
  br label %138

134:                                              ; preds = %111
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = load %struct.dentry*, %struct.dentry** %6, align 8
  %137 = call i32 @f2fs_unlink(%struct.inode* %135, %struct.dentry* %136)
  br label %138

138:                                              ; preds = %134, %133
  %139 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %140 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %139, i32 1)
  br label %144

141:                                              ; preds = %88
  %142 = load %struct.inode*, %struct.inode** %9, align 8
  %143 = call i32 @f2fs_handle_failed_inode(%struct.inode* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %11, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = icmp ne i8* %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %11, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @kvfree(i8* %151)
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %61, %50, %43, %28, %21
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i32 @fscrypt_prepare_symlink(%struct.inode*, i8*, i64, i32, %struct.fscrypt_str*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @f2fs_new_inode(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @fscrypt_encrypt_symlink(%struct.inode*, i8*, i64, %struct.fscrypt_str*) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @filemap_write_and_wait_range(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @f2fs_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_handle_failed_inode(%struct.inode*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

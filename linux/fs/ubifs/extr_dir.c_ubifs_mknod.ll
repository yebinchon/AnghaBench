; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32, i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32, %union.ubifs_dev_desc* }
%union.ubifs_dev_desc = type { i32 }
%struct.fscrypt_name = type { i32 }

@__const.ubifs_mknod.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 1, i32 1, i32 0 }, align 4
@.str = private unnamed_addr constant [26 x i8] c"dent '%pd' in dir ino %lu\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ubifs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca %struct.ubifs_inode*, align 8
  %13 = alloca %struct.ubifs_info*, align 8
  %14 = alloca %union.ubifs_dev_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_budget_req, align 4
  %19 = alloca %struct.fscrypt_name, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %20)
  store %struct.ubifs_inode* %21, %struct.ubifs_inode** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %25, align 8
  store %struct.ubifs_info* %26, %struct.ubifs_info** %13, align 8
  store %union.ubifs_dev_desc* null, %union.ubifs_dev_desc** %14, align 8
  store i32 0, i32* %17, align 4
  %27 = bitcast %struct.ubifs_budget_req* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.ubifs_mknod.req to i8*), i64 16, i1 false)
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dbg_gen(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.dentry* %28, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @S_ISBLK(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @S_ISCHR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36, %4
  %41 = load i32, i32* @GFP_NOFS, align 4
  %42 = call %union.ubifs_dev_desc* @kmalloc(i32 4, i32 %41)
  store %union.ubifs_dev_desc* %42, %union.ubifs_dev_desc** %14, align 8
  %43 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %44 = icmp ne %union.ubifs_dev_desc* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %183

48:                                               ; preds = %40
  %49 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ubifs_encode_dev(%union.ubifs_dev_desc* %49, i32 %50)
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %48, %36
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @ALIGN(i32 %53, i32 8)
  %55 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %18, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %57 = call i32 @ubifs_budget_space(%struct.ubifs_info* %56, %struct.ubifs_budget_req* %18)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %62 = call i32 @kfree(%union.ubifs_dev_desc* %61)
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %5, align 4
  br label %183

64:                                               ; preds = %52
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = call i32 @fscrypt_setup_filename(%struct.inode* %65, i32* %67, i32 0, %struct.fscrypt_name* %19)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %73 = call i32 @kfree(%union.ubifs_dev_desc* %72)
  br label %179

74:                                               ; preds = %64
  %75 = call i32 @fname_len(%struct.fscrypt_name* %19)
  %76 = call i32 @CALC_DENT_SIZE(i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %77, %struct.inode* %78, i32 %79)
  store %struct.inode* %80, %struct.inode** %10, align 8
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = call i64 @IS_ERR(%struct.inode* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %86 = call i32 @kfree(%union.ubifs_dev_desc* %85)
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = call i32 @PTR_ERR(%struct.inode* %87)
  store i32 %88, i32* %16, align 4
  br label %177

89:                                               ; preds = %74
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @init_special_inode(%struct.inode* %90, i32 %93, i32 %94)
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.inode*, %struct.inode** %10, align 8
  %98 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  store i32 %96, i32* %101, align 8
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %102)
  store %struct.ubifs_inode* %103, %struct.ubifs_inode** %11, align 8
  %104 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %14, align 8
  %105 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %106 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %105, i32 0, i32 3
  store %union.ubifs_dev_desc* %104, %union.ubifs_dev_desc** %106, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %109 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = load %struct.dentry*, %struct.dentry** %7, align 8
  %113 = getelementptr inbounds %struct.dentry, %struct.dentry* %112, i32 0, i32 0
  %114 = call i32 @ubifs_init_security(%struct.inode* %110, %struct.inode* %111, i32* %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %89
  br label %172

118:                                              ; preds = %89
  %119 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %120 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %119, i32 0, i32 2
  %121 = call i32 @mutex_lock(i32* %120)
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.inode*, %struct.inode** %6, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %131 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.inode*, %struct.inode** %10, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 8
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = load %struct.inode*, %struct.inode** %10, align 8
  %142 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %139, %struct.inode* %140, %struct.fscrypt_name* %19, %struct.inode* %141, i32 0, i32 0)
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %118
  br label %158

146:                                              ; preds = %118
  %147 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %148 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %147, i32 0, i32 2
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %151 = call i32 @ubifs_release_budget(%struct.ubifs_info* %150, %struct.ubifs_budget_req* %18)
  %152 = load %struct.inode*, %struct.inode** %10, align 8
  %153 = call i32 @insert_inode_hash(%struct.inode* %152)
  %154 = load %struct.dentry*, %struct.dentry** %7, align 8
  %155 = load %struct.inode*, %struct.inode** %10, align 8
  %156 = call i32 @d_instantiate(%struct.dentry* %154, %struct.inode* %155)
  %157 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %19)
  store i32 0, i32* %5, align 4
  br label %183

158:                                              ; preds = %145
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.inode*, %struct.inode** %6, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.inode*, %struct.inode** %6, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %168 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %170 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %169, i32 0, i32 2
  %171 = call i32 @mutex_unlock(i32* %170)
  br label %172

172:                                              ; preds = %158, %117
  %173 = load %struct.inode*, %struct.inode** %10, align 8
  %174 = call i32 @make_bad_inode(%struct.inode* %173)
  %175 = load %struct.inode*, %struct.inode** %10, align 8
  %176 = call i32 @iput(%struct.inode* %175)
  br label %177

177:                                              ; preds = %172, %84
  %178 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %19)
  br label %179

179:                                              ; preds = %177, %71
  %180 = load %struct.ubifs_info*, %struct.ubifs_info** %13, align 8
  %181 = call i32 @ubifs_release_budget(%struct.ubifs_info* %180, %struct.ubifs_budget_req* %18)
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %179, %146, %60, %45
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg_gen(i8*, %struct.dentry*, i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local %union.ubifs_dev_desc* @kmalloc(i32, i32) #1

declare dso_local i32 @ubifs_encode_dev(%union.ubifs_dev_desc*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @kfree(%union.ubifs_dev_desc*) #1

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, i32*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #1

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @ubifs_init_security(%struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

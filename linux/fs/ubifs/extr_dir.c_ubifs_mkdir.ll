; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { i32 }
%struct.ubifs_inode = type { i32, i32 }
%struct.fscrypt_name = type { i32 }

@__const.ubifs_mkdir.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 1 }, align 4
@.str = private unnamed_addr constant [37 x i8] c"dent '%pd', mode %#hx in dir ino %lu\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot create directory, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ubifs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ubifs_inode*, align 8
  %10 = alloca %struct.ubifs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_budget_req, align 4
  %14 = alloca %struct.fscrypt_name, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %15)
  store %struct.ubifs_inode* %16, %struct.ubifs_inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %20, align 8
  store %struct.ubifs_info* %21, %struct.ubifs_info** %10, align 8
  %22 = bitcast %struct.ubifs_budget_req* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.ubifs_mkdir.req to i8*), i64 8, i1 false)
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dbg_gen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.dentry* %23, i32 %24, i32 %27)
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %30 = call i32 @ubifs_budget_space(%struct.ubifs_info* %29, %struct.ubifs_budget_req* %13)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %141

35:                                               ; preds = %3
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = call i32 @fscrypt_setup_filename(%struct.inode* %36, i32* %38, i32 0, %struct.fscrypt_name* %14)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %137

43:                                               ; preds = %35
  %44 = call i32 @fname_len(%struct.fscrypt_name* %14)
  %45 = call i32 @CALC_DENT_SIZE(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = load i32, i32* @S_IFDIR, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %48, %49
  %51 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %46, %struct.inode* %47, i32 %50)
  store %struct.inode* %51, %struct.inode** %8, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i64 @IS_ERR(%struct.inode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call i32 @PTR_ERR(%struct.inode* %56)
  store i32 %57, i32* %11, align 4
  br label %135

58:                                               ; preds = %43
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = call i32 @ubifs_init_security(%struct.inode* %59, %struct.inode* %60, i32* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %130

67:                                               ; preds = %58
  %68 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %69 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %68, i32 0, i32 1
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call i32 @insert_inode_hash(%struct.inode* %71)
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = call i32 @inc_nlink(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call i32 @inc_nlink(%struct.inode* %75)
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %86 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 8
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %94, %struct.inode* %95, %struct.fscrypt_name* %14, %struct.inode* %96, i32 0, i32 0)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %67
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ubifs_err(%struct.ubifs_info* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %114

104:                                              ; preds = %67
  %105 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %106 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %109 = call i32 @ubifs_release_budget(%struct.ubifs_info* %108, %struct.ubifs_budget_req* %13)
  %110 = load %struct.dentry*, %struct.dentry** %6, align 8
  %111 = load %struct.inode*, %struct.inode** %8, align 8
  %112 = call i32 @d_instantiate(%struct.dentry* %110, %struct.inode* %111)
  %113 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %14)
  store i32 0, i32* %4, align 4
  br label %141

114:                                              ; preds = %100
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %124 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.inode*, %struct.inode** %5, align 8
  %126 = call i32 @drop_nlink(%struct.inode* %125)
  %127 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %128 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  br label %130

130:                                              ; preds = %114, %66
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = call i32 @make_bad_inode(%struct.inode* %131)
  %133 = load %struct.inode*, %struct.inode** %8, align 8
  %134 = call i32 @iput(%struct.inode* %133)
  br label %135

135:                                              ; preds = %130, %55
  %136 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %14)
  br label %137

137:                                              ; preds = %135, %42
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %10, align 8
  %139 = call i32 @ubifs_release_budget(%struct.ubifs_info* %138, %struct.ubifs_budget_req* %13)
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %104, %33
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg_gen(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, i32*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #1

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ubifs_init_security(%struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

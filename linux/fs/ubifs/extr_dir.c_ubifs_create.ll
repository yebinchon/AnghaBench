; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32, i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { i32 }
%struct.ubifs_inode = type { i32, i32 }
%struct.fscrypt_name = type { i32 }

@__const.ubifs_create.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 1, i32 1 }, align 4
@.str = private unnamed_addr constant [37 x i8] c"dent '%pd', mode %#hx in dir ino %lu\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot create regular file, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ubifs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_info*, align 8
  %12 = alloca %struct.ubifs_budget_req, align 4
  %13 = alloca %struct.ubifs_inode*, align 8
  %14 = alloca %struct.fscrypt_name, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %20, align 8
  store %struct.ubifs_info* %21, %struct.ubifs_info** %11, align 8
  %22 = bitcast %struct.ubifs_budget_req* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.ubifs_create.req to i8*), i64 12, i1 false)
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %23)
  store %struct.ubifs_inode* %24, %struct.ubifs_inode** %13, align 8
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dbg_gen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.dentry* %25, i32 %26, i32 %29)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %32 = call i32 @ubifs_budget_space(%struct.ubifs_info* %31, %struct.ubifs_budget_req* %12)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %5, align 4
  br label %135

37:                                               ; preds = %4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = call i32 @fscrypt_setup_filename(%struct.inode* %38, i32* %40, i32 0, %struct.fscrypt_name* %14)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %128

45:                                               ; preds = %37
  %46 = call i32 @fname_len(%struct.fscrypt_name* %14)
  %47 = call i32 @CALC_DENT_SIZE(i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %48, %struct.inode* %49, i32 %50)
  store %struct.inode* %51, %struct.inode** %10, align 8
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = call i64 @IS_ERR(%struct.inode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = call i32 @PTR_ERR(%struct.inode* %56)
  store i32 %57, i32* %15, align 4
  br label %126

58:                                               ; preds = %45
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = load %struct.dentry*, %struct.dentry** %7, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = call i32 @ubifs_init_security(%struct.inode* %59, %struct.inode* %60, i32* %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %121

67:                                               ; preds = %58
  %68 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %69 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %68, i32 0, i32 1
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %80 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 8
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %88, %struct.inode* %89, %struct.fscrypt_name* %14, %struct.inode* %90, i32 0, i32 0)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %67
  br label %107

95:                                               ; preds = %67
  %96 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %97 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %100 = call i32 @ubifs_release_budget(%struct.ubifs_info* %99, %struct.ubifs_budget_req* %12)
  %101 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %14)
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = call i32 @insert_inode_hash(%struct.inode* %102)
  %104 = load %struct.dentry*, %struct.dentry** %7, align 8
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = call i32 @d_instantiate(%struct.dentry* %104, %struct.inode* %105)
  store i32 0, i32* %5, align 4
  br label %135

107:                                              ; preds = %94
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %117 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %119 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  br label %121

121:                                              ; preds = %107, %66
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = call i32 @make_bad_inode(%struct.inode* %122)
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = call i32 @iput(%struct.inode* %124)
  br label %126

126:                                              ; preds = %121, %55
  %127 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %14)
  br label %128

128:                                              ; preds = %126, %44
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %130 = call i32 @ubifs_release_budget(%struct.ubifs_info* %129, %struct.ubifs_budget_req* %12)
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @ubifs_err(%struct.ubifs_info* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %128, %95, %35
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #2

declare dso_local i32 @dbg_gen(i8*, %struct.dentry*, i32, i32) #2

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #2

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, i32*, i32, %struct.fscrypt_name*) #2

declare dso_local i32 @CALC_DENT_SIZE(i32) #2

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #2

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #2

declare dso_local i32 @PTR_ERR(%struct.inode*) #2

declare dso_local i32 @ubifs_init_security(%struct.inode*, %struct.inode*, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #2

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #2

declare dso_local i32 @insert_inode_hash(%struct.inode*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @make_bad_inode(%struct.inode*) #2

declare dso_local i32 @iput(%struct.inode*) #2

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

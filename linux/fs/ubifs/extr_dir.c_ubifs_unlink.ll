; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dentry = type { i32 }
%struct.ubifs_inode = type { i32 }
%struct.fscrypt_name = type { i32 }

@__const.ubifs_unlink.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 2 }, align 4
@.str = private unnamed_addr constant [50 x i8] c"dent '%pd' from ino %lu (nlink %d) in dir ino %lu\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ubifs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ubifs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_budget_req, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fscrypt_name, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %18, align 8
  store %struct.ubifs_info* %19, %struct.ubifs_info** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call %struct.inode* @d_inode(%struct.dentry* %20)
  store %struct.inode* %21, %struct.inode** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %22)
  store %struct.ubifs_inode* %23, %struct.ubifs_inode** %8, align 8
  store i32 1, i32* %11, align 4
  %24 = bitcast %struct.ubifs_budget_req* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.ubifs_unlink.req to i8*), i64 8, i1 false)
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %13, align 4
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dbg_gen(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.dentry* %28, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = call i32 @fscrypt_setup_filename(%struct.inode* %39, i32* %41, i32 1, %struct.fscrypt_name* %14)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %162

47:                                               ; preds = %2
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i32 @ubifs_purge_xattrs(%struct.inode* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %162

54:                                               ; preds = %47
  %55 = call i32 @fname_len(%struct.fscrypt_name* %14)
  %56 = call i32 @CALC_DENT_SIZE(i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = call i32 @inode_is_locked(%struct.inode* %58)
  %60 = call i32 @ubifs_assert(%struct.ubifs_info* %57, i32 %59)
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i32 @inode_is_locked(%struct.inode* %62)
  %64 = call i32 @ubifs_assert(%struct.ubifs_info* %61, i32 %63)
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call i32 @dbg_check_synced_i_size(%struct.ubifs_info* %65, %struct.inode* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %159

71:                                               ; preds = %54
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %73 = call i32 @ubifs_budget_space(%struct.ubifs_info* %72, %struct.ubifs_budget_req* %12)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @ENOSPC, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %159

82:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %71
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = call i32 @lock_2_inodes(%struct.inode* %84, %struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call i32 @current_time(%struct.inode* %87)
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = call i32 @drop_nlink(%struct.inode* %91)
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %102 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 3
  store i32 %105, i32* %109, align 4
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %110, %struct.inode* %111, %struct.fscrypt_name* %14, %struct.inode* %112, i32 1, i32 0)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %83
  br label %136

117:                                              ; preds = %83
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = call i32 @unlock_2_inodes(%struct.inode* %118, %struct.inode* %119)
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %125 = call i32 @ubifs_release_budget(%struct.ubifs_info* %124, %struct.ubifs_budget_req* %12)
  br label %134

126:                                              ; preds = %117
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %131 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = call i32 (...) @smp_wmb()
  br label %134

134:                                              ; preds = %126, %123
  %135 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %14)
  store i32 0, i32* %3, align 4
  br label %162

136:                                              ; preds = %116
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.inode*, %struct.inode** %4, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.inode*, %struct.inode** %4, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %146 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.inode*, %struct.inode** %7, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @set_nlink(%struct.inode* %147, i32 %148)
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = load %struct.inode*, %struct.inode** %7, align 8
  %152 = call i32 @unlock_2_inodes(%struct.inode* %150, %struct.inode* %151)
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %136
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %157 = call i32 @ubifs_release_budget(%struct.ubifs_info* %156, %struct.ubifs_budget_req* %12)
  br label %158

158:                                              ; preds = %155, %136
  br label %159

159:                                              ; preds = %158, %81, %70
  %160 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %14)
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %159, %134, %52, %45
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg_gen(i8*, %struct.dentry*, i32, i32, i32) #1

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, i32*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_purge_xattrs(%struct.inode*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i32 @dbg_check_synced_i_size(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @lock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #1

declare dso_local i32 @unlock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

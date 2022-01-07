; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dentry = type { i32 }
%struct.ubifs_inode = type { i32 }
%struct.fscrypt_name = type { i32 }

@__const.ubifs_rmdir.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 2 }, align 4
@.str = private unnamed_addr constant [40 x i8] c"directory '%pd', ino %lu in dir ino %lu\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ubifs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca %struct.ubifs_budget_req, align 4
  %13 = alloca %struct.fscrypt_name, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %17, align 8
  store %struct.ubifs_info* %18, %struct.ubifs_info** %6, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  store i32 1, i32* %10, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %21)
  store %struct.ubifs_inode* %22, %struct.ubifs_inode** %11, align 8
  %23 = bitcast %struct.ubifs_budget_req* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.ubifs_rmdir.req to i8*), i64 8, i1 false)
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dbg_gen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.dentry* %24, i32 %27, i32 %30)
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32 @inode_is_locked(%struct.inode* %33)
  %35 = call i32 @ubifs_assert(%struct.ubifs_info* %32, i32 %34)
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i32 @inode_is_locked(%struct.inode* %37)
  %39 = call i32 @ubifs_assert(%struct.ubifs_info* %36, i32 %38)
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = call %struct.inode* @d_inode(%struct.dentry* %40)
  %42 = call i32 @ubifs_check_dir_empty(%struct.inode* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %159

47:                                               ; preds = %2
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = call i32 @fscrypt_setup_filename(%struct.inode* %48, i32* %50, i32 1, %struct.fscrypt_name* %13)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %159

56:                                               ; preds = %47
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = call i32 @ubifs_purge_xattrs(%struct.inode* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %159

63:                                               ; preds = %56
  %64 = call i32 @fname_len(%struct.fscrypt_name* %13)
  %65 = call i32 @CALC_DENT_SIZE(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %67 = call i32 @ubifs_budget_space(%struct.ubifs_info* %66, %struct.ubifs_budget_req* %12)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @ENOSPC, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %156

76:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %63
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = call i32 @lock_2_inodes(%struct.inode* %78, %struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = call i32 @current_time(%struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = call i32 @clear_nlink(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call i32 @drop_nlink(%struct.inode* %87)
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %98 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 2
  store i32 %101, i32* %105, align 8
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %107 = load %struct.inode*, %struct.inode** %4, align 8
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %106, %struct.inode* %107, %struct.fscrypt_name* %13, %struct.inode* %108, i32 1, i32 0)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %77
  br label %132

113:                                              ; preds = %77
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = load %struct.inode*, %struct.inode** %7, align 8
  %116 = call i32 @unlock_2_inodes(%struct.inode* %114, %struct.inode* %115)
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %121 = call i32 @ubifs_release_budget(%struct.ubifs_info* %120, %struct.ubifs_budget_req* %12)
  br label %130

122:                                              ; preds = %113
  %123 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %124 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %127 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  %129 = call i32 (...) @smp_wmb()
  br label %130

130:                                              ; preds = %122, %119
  %131 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %13)
  store i32 0, i32* %3, align 4
  br label %159

132:                                              ; preds = %112
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.inode*, %struct.inode** %4, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %142 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.inode*, %struct.inode** %4, align 8
  %144 = call i32 @inc_nlink(%struct.inode* %143)
  %145 = load %struct.inode*, %struct.inode** %7, align 8
  %146 = call i32 @set_nlink(%struct.inode* %145, i32 2)
  %147 = load %struct.inode*, %struct.inode** %4, align 8
  %148 = load %struct.inode*, %struct.inode** %7, align 8
  %149 = call i32 @unlock_2_inodes(%struct.inode* %147, %struct.inode* %148)
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %132
  %153 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %154 = call i32 @ubifs_release_budget(%struct.ubifs_info* %153, %struct.ubifs_budget_req* %12)
  br label %155

155:                                              ; preds = %152, %132
  br label %156

156:                                              ; preds = %155, %75
  %157 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %13)
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %156, %130, %61, %54, %45
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dbg_gen(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i32 @ubifs_check_dir_empty(%struct.inode*) #1

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, i32*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_purge_xattrs(%struct.inode*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @lock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #1

declare dso_local i32 @unlock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_cleanup_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_cleanup_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.qstr = type { i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"overlayfs: cleanup linked index (%pd2, ino=%lu, nlink=%u)\0A\00", align 1
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"overlayfs: cleanup index of '%pd2' failed (%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @ovl_cleanup_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovl_cleanup_index(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.dentry* @ovl_indexdir(i32 %13)
  store %struct.dentry* %14, %struct.dentry** %3, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %4, align 8
  %18 = load %struct.dentry*, %struct.dentry** %2, align 8
  %19 = call %struct.dentry* @ovl_dentry_lower(%struct.dentry* %18)
  store %struct.dentry* %19, %struct.dentry** %5, align 8
  %20 = load %struct.dentry*, %struct.dentry** %2, align 8
  %21 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %20)
  store %struct.dentry* %21, %struct.dentry** %6, align 8
  store %struct.dentry* null, %struct.dentry** %7, align 8
  %22 = bitcast %struct.qstr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = call i32 @ovl_get_index_name(%struct.dentry* %23, %struct.qstr* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %104

28:                                               ; preds = %1
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = call %struct.inode* @d_inode(%struct.dentry* %29)
  store %struct.inode* %30, %struct.inode** %8, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @S_ISDIR(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %28
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.dentry* %42, i32 %45, i32 %48)
  %50 = load %struct.dentry*, %struct.dentry** %2, align 8
  %51 = call %struct.inode* @d_inode(%struct.dentry* %50)
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @set_nlink(%struct.inode* %51, i32 %55)
  %57 = load %struct.dentry*, %struct.dentry** %2, align 8
  %58 = call i32 @ovl_set_nlink_upper(%struct.dentry* %57)
  br label %98

59:                                               ; preds = %36, %28
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = load i32, i32* @I_MUTEX_PARENT, align 4
  %62 = call i32 @inode_lock_nested(%struct.inode* %60, i32 %61)
  %63 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dentry*, %struct.dentry** %3, align 8
  %66 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.dentry* @lookup_one_len(i32 %64, %struct.dentry* %65, i32 %67)
  store %struct.dentry* %68, %struct.dentry** %7, align 8
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = call i32 @PTR_ERR(%struct.dentry* %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = call i64 @IS_ERR(%struct.dentry* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  store %struct.dentry* null, %struct.dentry** %7, align 8
  br label %91

75:                                               ; preds = %59
  %76 = load %struct.dentry*, %struct.dentry** %2, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ovl_index_all(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.dentry*, %struct.dentry** %3, align 8
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = load %struct.dentry*, %struct.dentry** %7, align 8
  %85 = call i32 @ovl_cleanup_and_whiteout(%struct.dentry* %82, %struct.inode* %83, %struct.dentry* %84)
  store i32 %85, i32* %10, align 4
  br label %90

86:                                               ; preds = %75
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = load %struct.dentry*, %struct.dentry** %7, align 8
  %89 = call i32 @ovl_cleanup(%struct.inode* %87, %struct.dentry* %88)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %81
  br label %91

91:                                               ; preds = %90, %74
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call i32 @inode_unlock(%struct.inode* %92)
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %104

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %104, %97, %41
  %99 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @kfree(i32 %100)
  %102 = load %struct.dentry*, %struct.dentry** %7, align 8
  %103 = call i32 @dput(%struct.dentry* %102)
  ret void

104:                                              ; preds = %96, %27
  %105 = load %struct.dentry*, %struct.dentry** %2, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %105, i32 %106)
  br label %98
}

declare dso_local %struct.dentry* @ovl_indexdir(i32) #1

declare dso_local %struct.dentry* @ovl_dentry_lower(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.dentry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ovl_get_index_name(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ovl_set_nlink_upper(%struct.dentry*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @ovl_index_all(i32) #1

declare dso_local i32 @ovl_cleanup_and_whiteout(%struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ovl_cleanup(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @pr_err(i8*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

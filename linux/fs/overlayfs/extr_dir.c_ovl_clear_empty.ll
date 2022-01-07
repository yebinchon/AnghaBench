; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_clear_empty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_clear_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode*, %struct.TYPE_2__* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.list_head = type { i32 }
%struct.path = type { %struct.dentry* }
%struct.kstat = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@STATX_BASIC_STATS = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@RENAME_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.list_head*)* @ovl_clear_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_clear_empty(%struct.dentry* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.path, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.kstat, align 4
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call %struct.dentry* @ovl_workdir(%struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %7, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call %struct.dentry* @ovl_dentry_upper(%struct.TYPE_2__* %22)
  store %struct.dentry* %23, %struct.dentry** %8, align 8
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %9, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = icmp ne %struct.dentry* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @EROFS, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.dentry* @ERR_PTR(i32 %35)
  store %struct.dentry* %36, %struct.dentry** %3, align 8
  br label %148

37:                                               ; preds = %2
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = load %struct.dentry*, %struct.dentry** %8, align 8
  %40 = call i32 @ovl_lock_rename_workdir(%struct.dentry* %38, %struct.dentry* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %145

44:                                               ; preds = %37
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = call i32 @ovl_path_upper(%struct.dentry* %45, %struct.path* %10)
  %47 = load i32, i32* @STATX_BASIC_STATS, align 4
  %48 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %49 = call i32 @vfs_getattr(%struct.path* %10, %struct.kstat* %13, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %141

53:                                               ; preds = %44
  %54 = load i32, i32* @ESTALE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %14, align 4
  %56 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @S_ISDIR(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %141

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %63 = load %struct.dentry*, %struct.dentry** %62, align 8
  store %struct.dentry* %63, %struct.dentry** %11, align 8
  %64 = load %struct.dentry*, %struct.dentry** %11, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.inode*, %struct.inode** %67, align 8
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = icmp ne %struct.inode* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %141

72:                                               ; preds = %61
  %73 = load %struct.dentry*, %struct.dentry** %6, align 8
  %74 = getelementptr inbounds %struct.kstat, %struct.kstat* %13, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @OVL_CATTR(i32 %75)
  %77 = call %struct.dentry* @ovl_create_temp(%struct.dentry* %73, i32 %76)
  store %struct.dentry* %77, %struct.dentry** %12, align 8
  %78 = load %struct.dentry*, %struct.dentry** %12, align 8
  %79 = call i32 @PTR_ERR(%struct.dentry* %78)
  store i32 %79, i32* %14, align 4
  %80 = load %struct.dentry*, %struct.dentry** %12, align 8
  %81 = call i64 @IS_ERR(%struct.dentry* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %141

84:                                               ; preds = %72
  %85 = load %struct.dentry*, %struct.dentry** %11, align 8
  %86 = load %struct.dentry*, %struct.dentry** %12, align 8
  %87 = call i32 @ovl_copy_xattr(%struct.dentry* %85, %struct.dentry* %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %135

91:                                               ; preds = %84
  %92 = load %struct.dentry*, %struct.dentry** %4, align 8
  %93 = load %struct.dentry*, %struct.dentry** %12, align 8
  %94 = call i32 @ovl_set_opaque(%struct.dentry* %92, %struct.dentry* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %135

98:                                               ; preds = %91
  %99 = load %struct.dentry*, %struct.dentry** %12, align 8
  %100 = getelementptr inbounds %struct.dentry, %struct.dentry* %99, i32 0, i32 0
  %101 = load %struct.inode*, %struct.inode** %100, align 8
  %102 = call i32 @inode_lock(%struct.inode* %101)
  %103 = load %struct.dentry*, %struct.dentry** %12, align 8
  %104 = call i32 @ovl_set_attr(%struct.dentry* %103, %struct.kstat* %13)
  store i32 %104, i32* %14, align 4
  %105 = load %struct.dentry*, %struct.dentry** %12, align 8
  %106 = getelementptr inbounds %struct.dentry, %struct.dentry* %105, i32 0, i32 0
  %107 = load %struct.inode*, %struct.inode** %106, align 8
  %108 = call i32 @inode_unlock(%struct.inode* %107)
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %135

112:                                              ; preds = %98
  %113 = load %struct.inode*, %struct.inode** %7, align 8
  %114 = load %struct.dentry*, %struct.dentry** %12, align 8
  %115 = load %struct.inode*, %struct.inode** %9, align 8
  %116 = load %struct.dentry*, %struct.dentry** %11, align 8
  %117 = load i32, i32* @RENAME_EXCHANGE, align 4
  %118 = call i32 @ovl_do_rename(%struct.inode* %113, %struct.dentry* %114, %struct.inode* %115, %struct.dentry* %116, i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %135

122:                                              ; preds = %112
  %123 = load %struct.dentry*, %struct.dentry** %11, align 8
  %124 = load %struct.list_head*, %struct.list_head** %5, align 8
  %125 = call i32 @ovl_cleanup_whiteouts(%struct.dentry* %123, %struct.list_head* %124)
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = load %struct.dentry*, %struct.dentry** %11, align 8
  %128 = call i32 @ovl_cleanup(%struct.inode* %126, %struct.dentry* %127)
  %129 = load %struct.dentry*, %struct.dentry** %6, align 8
  %130 = load %struct.dentry*, %struct.dentry** %8, align 8
  %131 = call i32 @unlock_rename(%struct.dentry* %129, %struct.dentry* %130)
  %132 = load %struct.dentry*, %struct.dentry** %4, align 8
  %133 = call i32 @d_drop(%struct.dentry* %132)
  %134 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %134, %struct.dentry** %3, align 8
  br label %148

135:                                              ; preds = %121, %111, %97, %90
  %136 = load %struct.inode*, %struct.inode** %7, align 8
  %137 = load %struct.dentry*, %struct.dentry** %12, align 8
  %138 = call i32 @ovl_cleanup(%struct.inode* %136, %struct.dentry* %137)
  %139 = load %struct.dentry*, %struct.dentry** %12, align 8
  %140 = call i32 @dput(%struct.dentry* %139)
  br label %141

141:                                              ; preds = %135, %83, %71, %60, %52
  %142 = load %struct.dentry*, %struct.dentry** %6, align 8
  %143 = load %struct.dentry*, %struct.dentry** %8, align 8
  %144 = call i32 @unlock_rename(%struct.dentry* %142, %struct.dentry* %143)
  br label %145

145:                                              ; preds = %141, %43
  %146 = load i32, i32* %14, align 4
  %147 = call %struct.dentry* @ERR_PTR(i32 %146)
  store %struct.dentry* %147, %struct.dentry** %3, align 8
  br label %148

148:                                              ; preds = %145, %122, %33
  %149 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %149
}

declare dso_local %struct.dentry* @ovl_workdir(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.TYPE_2__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @ovl_lock_rename_workdir(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @ovl_path_upper(%struct.dentry*, %struct.path*) #1

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.kstat*, i32, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.dentry* @ovl_create_temp(%struct.dentry*, i32) #1

declare dso_local i32 @OVL_CATTR(i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_copy_xattr(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @ovl_set_opaque(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ovl_set_attr(%struct.dentry*, %struct.kstat*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ovl_do_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_cleanup_whiteouts(%struct.dentry*, %struct.list_head*) #1

declare dso_local i32 @ovl_cleanup(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_remove_upper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_remove_upper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.list_head = type { i32 }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, %struct.list_head*)* @ovl_remove_upper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_remove_upper(%struct.dentry* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.dentry* @ovl_dentry_upper(i32 %14)
  store %struct.dentry* %15, %struct.dentry** %7, align 8
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 2
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %8, align 8
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %19 = load %struct.list_head*, %struct.list_head** %6, align 8
  %20 = call i32 @list_empty(%struct.list_head* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = load %struct.list_head*, %struct.list_head** %6, align 8
  %25 = call %struct.dentry* @ovl_clear_empty(%struct.dentry* %23, %struct.list_head* %24)
  store %struct.dentry* %25, %struct.dentry** %10, align 8
  %26 = load %struct.dentry*, %struct.dentry** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.dentry* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.dentry*, %struct.dentry** %10, align 8
  %29 = call i64 @IS_ERR(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %103

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load i32, i32* @I_MUTEX_PARENT, align 4
  %36 = call i32 @inode_lock_nested(%struct.inode* %34, i32 %35)
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.dentry* @lookup_one_len(i32 %40, %struct.dentry* %41, i32 %45)
  store %struct.dentry* %46, %struct.dentry** %9, align 8
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = call i32 @PTR_ERR(%struct.dentry* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.dentry*, %struct.dentry** %9, align 8
  %50 = call i64 @IS_ERR(%struct.dentry* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %98

53:                                               ; preds = %33
  %54 = load i32, i32* @ESTALE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  %56 = load %struct.dentry*, %struct.dentry** %10, align 8
  %57 = icmp ne %struct.dentry* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.dentry*, %struct.dentry** %9, align 8
  %60 = load %struct.dentry*, %struct.dentry** %10, align 8
  %61 = icmp ne %struct.dentry* %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.dentry*, %struct.dentry** %10, align 8
  %64 = icmp ne %struct.dentry* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load %struct.dentry*, %struct.dentry** %4, align 8
  %67 = load %struct.dentry*, %struct.dentry** %9, align 8
  %68 = call i32 @ovl_matches_upper(%struct.dentry* %66, %struct.dentry* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %58
  br label %95

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load %struct.dentry*, %struct.dentry** %9, align 8
  %77 = call i32 @vfs_rmdir(%struct.inode* %75, %struct.dentry* %76)
  store i32 %77, i32* %11, align 4
  br label %82

78:                                               ; preds = %71
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = load %struct.dentry*, %struct.dentry** %9, align 8
  %81 = call i32 @vfs_unlink(%struct.inode* %79, %struct.dentry* %80, i32* null)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.dentry*, %struct.dentry** %4, align 8
  %84 = getelementptr inbounds %struct.dentry, %struct.dentry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dentry*, %struct.dentry** %4, align 8
  %87 = call i32 @ovl_type_origin(%struct.dentry* %86)
  %88 = call i32 @ovl_dir_modified(i32 %85, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = load %struct.dentry*, %struct.dentry** %4, align 8
  %93 = call i32 @d_drop(%struct.dentry* %92)
  br label %94

94:                                               ; preds = %91, %82
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.dentry*, %struct.dentry** %9, align 8
  %97 = call i32 @dput(%struct.dentry* %96)
  br label %98

98:                                               ; preds = %95, %52
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = call i32 @inode_unlock(%struct.inode* %99)
  %101 = load %struct.dentry*, %struct.dentry** %10, align 8
  %102 = call i32 @dput(%struct.dentry* %101)
  br label %103

103:                                              ; preds = %98, %31
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local %struct.dentry* @ovl_dentry_upper(i32) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.dentry* @ovl_clear_empty(%struct.dentry*, %struct.list_head*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_matches_upper(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @vfs_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @vfs_unlink(%struct.inode*, %struct.dentry*, i32*) #1

declare dso_local i32 @ovl_dir_modified(i32, i32) #1

declare dso_local i32 @ovl_type_origin(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

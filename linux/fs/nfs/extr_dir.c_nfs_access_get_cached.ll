; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_get_cached.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_get_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cred = type { i32 }
%struct.nfs_access_entry = type { i32, i32, i32 }
%struct.nfs_inode = type { i32, i32 }

@NFS_INO_INVALID_ACCESS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.cred*, %struct.nfs_access_entry*, i32)* @nfs_access_get_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_access_get_cached(%struct.inode* %0, %struct.cred* %1, %struct.nfs_access_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.nfs_access_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_inode*, align 8
  %11 = alloca %struct.nfs_access_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.cred* %1, %struct.cred** %7, align 8
  store %struct.nfs_access_entry* %2, %struct.nfs_access_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.nfs_inode* @NFS_I(%struct.inode* %14)
  store %struct.nfs_inode* %15, %struct.nfs_inode** %10, align 8
  store i32 1, i32* %12, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  br label %19

19:                                               ; preds = %64, %4
  %20 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %21 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %89

27:                                               ; preds = %19
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.cred*, %struct.cred** %7, align 8
  %30 = call %struct.nfs_access_entry* @nfs_access_search_rbtree(%struct.inode* %28, %struct.cred* %29)
  store %struct.nfs_access_entry* %30, %struct.nfs_access_entry** %11, align 8
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %13, align 4
  %33 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %11, align 8
  %34 = icmp eq %struct.nfs_access_entry* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %84

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %39 = call i32 @nfs_check_cache_invalid(%struct.inode* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %68

42:                                               ; preds = %36
  %43 = load i32, i32* @ECHILD, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %84

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %89

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i32 @NFS_SERVER(%struct.inode* %56)
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i32 @__nfs_revalidate_inode(i32 %57, %struct.inode* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %97

64:                                               ; preds = %52
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  store i32 0, i32* %12, align 4
  br label %19

68:                                               ; preds = %41
  %69 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %11, align 8
  %70 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %8, align 8
  %73 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %11, align 8
  %75 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %8, align 8
  %78 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %11, align 8
  %80 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %79, i32 0, i32 0
  %81 = load %struct.nfs_inode*, %struct.nfs_inode** %10, align 8
  %82 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %81, i32 0, i32 1
  %83 = call i32 @list_move_tail(i32* %80, i32* %82)
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %68, %47, %35
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %5, align 4
  br label %97

89:                                               ; preds = %51, %26
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call i32 @nfs_access_zap_cache(%struct.inode* %93)
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %89, %84, %62
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_access_entry* @nfs_access_search_rbtree(%struct.inode*, %struct.cred*) #1

declare dso_local i32 @nfs_check_cache_invalid(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__nfs_revalidate_inode(i32, %struct.inode*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @nfs_access_zap_cache(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

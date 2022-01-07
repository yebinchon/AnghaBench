; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.fuse_entry_out = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FUSE_ROOT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @fuse_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fuse_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_entry_out, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %12, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32 @fuse_lock_inode(%struct.inode* %14)
  store i32 %15, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i64 @get_node_id(%struct.inode* %19)
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = call i32 @fuse_lookup_name(i32 %18, i64 %20, i32* %22, %struct.fuse_entry_out* %9, %struct.inode** %10)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @fuse_unlock_inode(%struct.inode* %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %85

36:                                               ; preds = %32
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = icmp ne %struct.inode* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call i64 @get_node_id(%struct.inode* %42)
  %44 = load i64, i64* @FUSE_ROOT_ID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %82

47:                                               ; preds = %41, %36
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = call %struct.dentry* @d_splice_alias(%struct.inode* %48, %struct.dentry* %49)
  store %struct.dentry* %50, %struct.dentry** %11, align 8
  %51 = load %struct.dentry*, %struct.dentry** %11, align 8
  %52 = call i32 @PTR_ERR(%struct.dentry* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.dentry*, %struct.dentry** %11, align 8
  %54 = call i64 @IS_ERR(%struct.dentry* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %85

57:                                               ; preds = %47
  %58 = load %struct.dentry*, %struct.dentry** %11, align 8
  %59 = icmp ne %struct.dentry* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load %struct.dentry*, %struct.dentry** %11, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi %struct.dentry* [ %61, %60 ], [ %63, %62 ]
  store %struct.dentry* %65, %struct.dentry** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = call i32 @fuse_change_entry_timeout(%struct.dentry* %69, %struct.fuse_entry_out* %9)
  br label %74

71:                                               ; preds = %64
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = icmp ne %struct.inode* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = call i32 @fuse_advise_use_readdirplus(%struct.inode* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %81, %struct.dentry** %4, align 8
  br label %88

82:                                               ; preds = %46
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = call i32 @iput(%struct.inode* %83)
  br label %85

85:                                               ; preds = %82, %56, %35
  %86 = load i32, i32* %8, align 4
  %87 = call %struct.dentry* @ERR_PTR(i32 %86)
  store %struct.dentry* %87, %struct.dentry** %4, align 8
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %89
}

declare dso_local i32 @fuse_lock_inode(%struct.inode*) #1

declare dso_local i32 @fuse_lookup_name(i32, i64, i32*, %struct.fuse_entry_out*, %struct.inode**) #1

declare dso_local i64 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_unlock_inode(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @fuse_change_entry_timeout(%struct.dentry*, %struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

declare dso_local i32 @fuse_advise_use_readdirplus(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

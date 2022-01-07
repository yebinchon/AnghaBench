; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.fuse_attr = type { i32 }
%struct.fuse_inode = type { i32, i32 }
%struct.fuse_conn = type { i32 }

@fuse_inode_eq = common dso_local global i32 0, align 4
@fuse_inode_set = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @fuse_iget(%struct.super_block* %0, i32 %1, i32 %2, %struct.fuse_attr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.fuse_inode*, align 8
  %16 = alloca %struct.fuse_conn*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.fuse_attr* %3, %struct.fuse_attr** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.super_block*, %struct.super_block** %8, align 8
  %18 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %17)
  store %struct.fuse_conn* %18, %struct.fuse_conn** %16, align 8
  br label %19

19:                                               ; preds = %77, %6
  %20 = load %struct.super_block*, %struct.super_block** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @fuse_inode_eq, align 4
  %23 = load i32, i32* @fuse_inode_set, align 4
  %24 = call %struct.inode* @iget5_locked(%struct.super_block* %20, i32 %21, i32 %22, i32 %23, i32* %9)
  store %struct.inode* %24, %struct.inode** %14, align 8
  %25 = load %struct.inode*, %struct.inode** %14, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store %struct.inode* null, %struct.inode** %7, align 8
  br label %102

28:                                               ; preds = %19
  %29 = load %struct.inode*, %struct.inode** %14, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I_NEW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %28
  %36 = load i32, i32* @S_NOATIME, align 4
  %37 = load %struct.inode*, %struct.inode** %14, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %42 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.fuse_attr*, %struct.fuse_attr** %11, align 8
  %47 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @S_ISREG(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45, %35
  %52 = load i32, i32* @S_NOCMTIME, align 4
  %53 = load %struct.inode*, %struct.inode** %14, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.inode*, %struct.inode** %14, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %14, align 8
  %62 = load %struct.fuse_attr*, %struct.fuse_attr** %11, align 8
  %63 = call i32 @fuse_init_inode(%struct.inode* %61, %struct.fuse_attr* %62)
  %64 = load %struct.inode*, %struct.inode** %14, align 8
  %65 = call i32 @unlock_new_inode(%struct.inode* %64)
  br label %83

66:                                               ; preds = %28
  %67 = load %struct.inode*, %struct.inode** %14, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fuse_attr*, %struct.fuse_attr** %11, align 8
  %71 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %69, %72
  %74 = load i32, i32* @S_IFMT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.inode*, %struct.inode** %14, align 8
  %79 = call i32 @make_bad_inode(%struct.inode* %78)
  %80 = load %struct.inode*, %struct.inode** %14, align 8
  %81 = call i32 @iput(%struct.inode* %80)
  br label %19

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.inode*, %struct.inode** %14, align 8
  %85 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %84)
  store %struct.fuse_inode* %85, %struct.fuse_inode** %15, align 8
  %86 = load %struct.fuse_inode*, %struct.fuse_inode** %15, align 8
  %87 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %86, i32 0, i32 0
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load %struct.fuse_inode*, %struct.fuse_inode** %15, align 8
  %90 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.fuse_inode*, %struct.fuse_inode** %15, align 8
  %94 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load %struct.inode*, %struct.inode** %14, align 8
  %97 = load %struct.fuse_attr*, %struct.fuse_attr** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @fuse_change_attributes(%struct.inode* %96, %struct.fuse_attr* %97, i32 %98, i32 %99)
  %101 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %101, %struct.inode** %7, align 8
  br label %102

102:                                              ; preds = %83, %27
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %103
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, i32*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @fuse_init_inode(%struct.inode*, %struct.fuse_attr*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_change_attributes(%struct.inode*, %struct.fuse_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

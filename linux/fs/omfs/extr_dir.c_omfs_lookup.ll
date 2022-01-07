; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.buffer_head = type { i64, %struct.TYPE_4__ }
%struct.omfs_inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OMFS_NAMELEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @omfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @omfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.omfs_inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OMFS_NAMELEN, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @ENAMETOOLONG, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.dentry* @ERR_PTR(i32 %20)
  store %struct.dentry* %21, %struct.dentry** %4, align 8
  br label %72

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.dentry* @omfs_find_entry(%struct.inode* %23, i32 %27, i64 %31)
  %33 = bitcast %struct.dentry* %32 to %struct.buffer_head*
  store %struct.buffer_head* %33, %struct.buffer_head** %8, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = bitcast %struct.buffer_head* %34 to %struct.dentry*
  %36 = call i32 @IS_ERR(%struct.dentry* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %22
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.omfs_inode*
  store %struct.omfs_inode* %42, %struct.omfs_inode** %10, align 8
  %43 = load %struct.omfs_inode*, %struct.omfs_inode** %10, align 8
  %44 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be64_to_cpu(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %49 = bitcast %struct.buffer_head* %48 to %struct.dentry*
  %50 = call i32 @brelse(%struct.dentry* %49)
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call %struct.inode* @omfs_iget(i32 %53, i32 %54)
  store %struct.inode* %55, %struct.inode** %9, align 8
  br label %68

56:                                               ; preds = %22
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.dentry* @ERR_PTR(i32 %59)
  %61 = bitcast %struct.dentry* %60 to %struct.buffer_head*
  %62 = icmp ne %struct.buffer_head* %57, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %65 = bitcast %struct.buffer_head* %64 to %struct.dentry*
  %66 = call %struct.inode* @ERR_CAST(%struct.dentry* %65)
  store %struct.inode* %66, %struct.inode** %9, align 8
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67, %38
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = call %struct.dentry* @d_splice_alias(%struct.inode* %69, %struct.dentry* %70)
  store %struct.dentry* %71, %struct.dentry** %4, align 8
  br label %72

72:                                               ; preds = %68, %18
  %73 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %73
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @omfs_find_entry(%struct.inode*, i32, i64) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.dentry*) #1

declare dso_local %struct.inode* @omfs_iget(i32, i32) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

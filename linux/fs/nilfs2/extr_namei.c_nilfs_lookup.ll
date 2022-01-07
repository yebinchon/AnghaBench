; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@NILFS_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @nilfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nilfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NILFS_NAME_LEN, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @ENAMETOOLONG, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %4, align 8
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = call i64 @nilfs_inode_by_name(%struct.inode* %21, %struct.TYPE_3__* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call %struct.TYPE_4__* @NILFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.inode* @nilfs_iget(i32 %30, i32 %34, i64 %35)
  br label %38

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %27
  %39 = phi %struct.inode* [ %36, %27 ], [ null, %37 ]
  store %struct.inode* %39, %struct.inode** %8, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = call %struct.dentry* @d_splice_alias(%struct.inode* %40, %struct.dentry* %41)
  store %struct.dentry* %42, %struct.dentry** %4, align 8
  br label %43

43:                                               ; preds = %38, %16
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %44
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @nilfs_inode_by_name(%struct.inode*, %struct.TYPE_3__*) #1

declare dso_local %struct.inode* @nilfs_iget(i32, i32, i64) #1

declare dso_local %struct.TYPE_4__* @NILFS_I(%struct.inode*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

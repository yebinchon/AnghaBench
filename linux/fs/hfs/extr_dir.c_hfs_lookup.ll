; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_dir.c_hfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_dir.c_hfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { i32, i32, i32 }
%struct.hfs_find_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @hfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @hfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfs_find_data, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_4__* @HFS_SB(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hfs_find_init(i32 %17, %struct.hfs_find_data* %9)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.inode* @ERR_PTR(i32 %22)
  %24 = bitcast %struct.inode* %23 to %struct.dentry*
  store %struct.dentry* %24, %struct.dentry** %4, align 8
  br label %71

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 1
  %36 = call i32 @hfs_cat_build_key(i32 %28, %struct.TYPE_3__* %30, i32 %33, i32* %35)
  %37 = call i32 @hfs_brec_read(%struct.hfs_find_data* %9, i32* %8, i32 4)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.inode* @ERR_PTR(i32 %46)
  store %struct.inode* %47, %struct.inode** %10, align 8
  br label %48

48:                                               ; preds = %45, %40
  br label %64

49:                                               ; preds = %25
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call %struct.inode* @hfs_iget(i32 %52, i32* %55, i32* %8)
  store %struct.inode* %56, %struct.inode** %10, align 8
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = icmp ne %struct.inode* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @EACCES, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.inode* @ERR_PTR(i32 %61)
  store %struct.inode* %62, %struct.inode** %10, align 8
  br label %63

63:                                               ; preds = %59, %49
  br label %64

64:                                               ; preds = %63, %48
  %65 = call i32 @hfs_find_exit(%struct.hfs_find_data* %9)
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = bitcast %struct.dentry* %67 to %struct.inode*
  %69 = call %struct.inode* @d_splice_alias(%struct.inode* %66, %struct.inode* %68)
  %70 = bitcast %struct.inode* %69 to %struct.dentry*
  store %struct.dentry* %70, %struct.dentry** %4, align 8
  br label %71

71:                                               ; preds = %64, %21
  %72 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %72
}

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_4__* @HFS_SB(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @hfs_cat_build_key(i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @hfs_brec_read(%struct.hfs_find_data*, i32*, i32) #1

declare dso_local %struct.inode* @hfs_iget(i32, i32*, i32*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

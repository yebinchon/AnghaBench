; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_encode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.nilfs_fid = type { i32, i32, i32, i32, i32 }
%struct.nilfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.nilfs_root* }

@NILFS_FID_SIZE_CONNECTABLE = common dso_local global i32 0, align 4
@FILEID_INVALID = common dso_local global i32 0, align 4
@NILFS_FID_SIZE_NON_CONNECTABLE = common dso_local global i32 0, align 4
@FILEID_NILFS_WITH_PARENT = common dso_local global i32 0, align 4
@FILEID_NILFS_WITHOUT_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32*, %struct.inode*)* @nilfs_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_encode_fh(%struct.inode* %0, i32* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nilfs_fid*, align 8
  %11 = alloca %struct.nilfs_root*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.nilfs_fid*
  store %struct.nilfs_fid* %14, %struct.nilfs_fid** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.TYPE_2__* @NILFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.nilfs_root*, %struct.nilfs_root** %17, align 8
  store %struct.nilfs_root* %18, %struct.nilfs_root** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NILFS_FID_SIZE_CONNECTABLE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @NILFS_FID_SIZE_CONNECTABLE, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %29, i32* %5, align 4
  br label %77

30:                                               ; preds = %21, %4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NILFS_FID_SIZE_NON_CONNECTABLE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @NILFS_FID_SIZE_NON_CONNECTABLE, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %38, i32* %5, align 4
  br label %77

39:                                               ; preds = %30
  %40 = load %struct.nilfs_root*, %struct.nilfs_root** %11, align 8
  %41 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nilfs_fid*, %struct.nilfs_fid** %10, align 8
  %44 = getelementptr inbounds %struct.nilfs_fid, %struct.nilfs_fid* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nilfs_fid*, %struct.nilfs_fid** %10, align 8
  %49 = getelementptr inbounds %struct.nilfs_fid, %struct.nilfs_fid* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nilfs_fid*, %struct.nilfs_fid** %10, align 8
  %54 = getelementptr inbounds %struct.nilfs_fid, %struct.nilfs_fid* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = icmp ne %struct.inode* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %39
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nilfs_fid*, %struct.nilfs_fid** %10, align 8
  %62 = getelementptr inbounds %struct.nilfs_fid, %struct.nilfs_fid* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nilfs_fid*, %struct.nilfs_fid** %10, align 8
  %67 = getelementptr inbounds %struct.nilfs_fid, %struct.nilfs_fid* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @FILEID_NILFS_WITH_PARENT, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @NILFS_FID_SIZE_CONNECTABLE, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  br label %75

71:                                               ; preds = %39
  %72 = load i32, i32* @FILEID_NILFS_WITHOUT_PARENT, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @NILFS_FID_SIZE_NON_CONNECTABLE, align 4
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %57
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %35, %26
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_2__* @NILFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_fill_fsxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_fill_fsxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fsxattr = type { i32, i32, i8*, i32 }

@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*, i32, %struct.fsxattr*)* @xfs_fill_fsxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_fill_fsxattr(%struct.xfs_inode* %0, i32 %1, %struct.fsxattr* %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsxattr*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fsxattr* %2, %struct.fsxattr** %6, align 8
  %7 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %9 = call i32 @xfs_ip2xflags(%struct.xfs_inode* %8)
  %10 = call i32 @simple_fill_fsxattr(%struct.fsxattr* %7, i32 %9)
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %14, %20
  %22 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %23 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %27, %33
  %35 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %36 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %38 = call i32 @xfs_get_projid(%struct.xfs_inode* %37)
  %39 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %40 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %3
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %45 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %50 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @XFS_IFEXTENTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %59 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i8* @xfs_iext_count(%struct.TYPE_8__* %60)
  %62 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %63 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %71

64:                                               ; preds = %48
  %65 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %66 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %70 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %64, %57
  br label %75

72:                                               ; preds = %43
  %73 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %74 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %73, i32 0, i32 2
  store i8* null, i8** %74, align 8
  br label %75

75:                                               ; preds = %72, %71
  br label %98

76:                                               ; preds = %3
  %77 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %78 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @XFS_IFEXTENTS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %86 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %85, i32 0, i32 1
  %87 = call i8* @xfs_iext_count(%struct.TYPE_8__* %86)
  %88 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %89 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  br label %97

90:                                               ; preds = %76
  %91 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %92 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.fsxattr*, %struct.fsxattr** %6, align 8
  %96 = getelementptr inbounds %struct.fsxattr, %struct.fsxattr* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %90, %84
  br label %98

98:                                               ; preds = %97, %75
  ret void
}

declare dso_local i32 @simple_fill_fsxattr(%struct.fsxattr*, i32) #1

declare dso_local i32 @xfs_ip2xflags(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_get_projid(%struct.xfs_inode*) #1

declare dso_local i8* @xfs_iext_count(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

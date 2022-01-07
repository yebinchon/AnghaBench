; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_da_args = type { i8*, i32, i32 }

@ATTR_ALLOC = common dso_local global i32 0, align 4
@ATTR_KERNOVAL = common dso_local global i32 0, align 4
@xs_attr_get = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_DA_OP_ALLOCVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_get(%struct.xfs_inode* %0, i8* %1, i8** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_da_args, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @ATTR_ALLOC, align 4
  %17 = load i32, i32* @ATTR_KERNOVAL, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i8**, i8*** %9, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i1 [ true, %5 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %30 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @xs_attr_get, align 4
  %33 = call i32 @XFS_STATS_INC(i32 %31, i32 %32)
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @XFS_FORCED_SHUTDOWN(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %99

42:                                               ; preds = %25
  %43 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @xfs_attr_args_init(%struct.xfs_da_args* %12, %struct.xfs_inode* %43, i8* %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %6, align 4
  br label %99

51:                                               ; preds = %42
  %52 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %53 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ATTR_ALLOC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32, i32* @XFS_DA_OP_ALLOCVAL, align 4
  %60 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %67

63:                                               ; preds = %51
  %64 = load i8**, i8*** %9, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 0
  store i8* %65, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %72 = call i32 @xfs_ilock_attr_map_shared(%struct.xfs_inode* %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %74 = call i32 @xfs_attr_get_ilocked(%struct.xfs_inode* %73, %struct.xfs_da_args* %12)
  store i32 %74, i32* %14, align 4
  %75 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @xfs_iunlock(%struct.xfs_inode* %75, i32 %76)
  %78 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %67
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @ATTR_ALLOC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @kmem_free(i8* %90)
  %92 = load i8**, i8*** %9, align 8
  store i8* null, i8** %92, align 8
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %6, align 4
  br label %99

95:                                               ; preds = %67
  %96 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %12, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8**, i8*** %9, align 8
  store i8* %97, i8** %98, align 8
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %93, %49, %39
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_STATS_INC(i32, i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @xfs_attr_args_init(%struct.xfs_da_args*, %struct.xfs_inode*, i8*, i32) #1

declare dso_local i32 @xfs_ilock_attr_map_shared(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_attr_get_ilocked(%struct.xfs_inode*, %struct.xfs_da_args*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @kmem_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

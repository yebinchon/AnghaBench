; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_acl.c___xfs_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_acl.c___xfs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_acl = type { i32 }

@SGI_ACL_FILE = common dso_local global i8* null, align 8
@EACCES = common dso_local global i32 0, align 4
@SGI_ACL_DEFAULT = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATTR_ROOT = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xfs_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_acl*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.xfs_inode* @XFS_I(%struct.inode* %13)
  store %struct.xfs_inode* %14, %struct.xfs_inode** %8, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %35 [
    i32 129, label %16
    i32 128, label %18
  ]

16:                                               ; preds = %3
  %17 = load i8*, i8** @SGI_ACL_FILE, align 8
  store i8* %17, i8** %9, align 8
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISDIR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %26 = icmp ne %struct.posix_acl* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  store i32 %32, i32* %4, align 4
  br label %101

33:                                               ; preds = %18
  %34 = load i8*, i8** @SGI_ACL_DEFAULT, align 8
  store i8* %34, i8** %9, align 8
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %101

38:                                               ; preds = %33, %16
  %39 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %40 = icmp ne %struct.posix_acl* %39, null
  br i1 %40, label %41, label %80

41:                                               ; preds = %38
  %42 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %43 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @XFS_ACL_MAX_SIZE(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call %struct.xfs_acl* @kmem_zalloc_large(i32 %46, i32 0)
  store %struct.xfs_acl* %47, %struct.xfs_acl** %11, align 8
  %48 = load %struct.xfs_acl*, %struct.xfs_acl** %11, align 8
  %49 = icmp ne %struct.xfs_acl* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %101

53:                                               ; preds = %41
  %54 = load %struct.xfs_acl*, %struct.xfs_acl** %11, align 8
  %55 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %56 = call i32 @xfs_acl_to_disk(%struct.xfs_acl* %54, %struct.posix_acl* %55)
  %57 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %58 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @XFS_ACL_MAX_ENTRIES(i32 %59)
  %61 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %62 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.xfs_acl*, %struct.xfs_acl** %11, align 8
  %74 = bitcast %struct.xfs_acl* %73 to i8*
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @ATTR_ROOT, align 4
  %77 = call i32 @xfs_attr_set(%struct.xfs_inode* %71, i8* %72, i8* %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.xfs_acl*, %struct.xfs_acl** %11, align 8
  %79 = call i32 @kmem_free(%struct.xfs_acl* %78)
  br label %91

80:                                               ; preds = %38
  %81 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* @ATTR_ROOT, align 4
  %84 = call i32 @xfs_attr_remove(%struct.xfs_inode* %81, i8* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @ENOATTR, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %80
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %98 = call i32 @set_cached_acl(%struct.inode* %95, i32 %96, %struct.posix_acl* %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %50, %35, %31
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @XFS_ACL_MAX_SIZE(i32) #1

declare dso_local %struct.xfs_acl* @kmem_zalloc_large(i32, i32) #1

declare dso_local i32 @xfs_acl_to_disk(%struct.xfs_acl*, %struct.posix_acl*) #1

declare dso_local i32 @XFS_ACL_MAX_ENTRIES(i32) #1

declare dso_local i32 @xfs_attr_set(%struct.xfs_inode*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kmem_free(%struct.xfs_acl*) #1

declare dso_local i32 @xfs_attr_remove(%struct.xfs_inode*, i8*, i32) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

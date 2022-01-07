; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_xattr.c_vfs_getxattr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_xattr.c_vfs_getxattr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.xattr_handler = type { i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i32)* }
%struct.dentry.0 = type opaque
%struct.inode.1 = type opaque

@MAY_READ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_getxattr_alloc(%struct.dentry* %0, i8* %1, i8** %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xattr_handler*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %13, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %14, align 8
  %21 = load %struct.inode*, %struct.inode** %13, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @MAY_READ, align 4
  %24 = call i32 @xattr_permission(%struct.inode* %21, i8* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %6, align 4
  br label %102

29:                                               ; preds = %5
  %30 = load %struct.inode*, %struct.inode** %13, align 8
  %31 = call %struct.xattr_handler* @xattr_resolve_name(%struct.inode* %30, i8** %8)
  store %struct.xattr_handler* %31, %struct.xattr_handler** %12, align 8
  %32 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %33 = call i64 @IS_ERR(%struct.xattr_handler* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %37 = call i32 @PTR_ERR(%struct.xattr_handler* %36)
  store i32 %37, i32* %6, align 4
  br label %102

38:                                               ; preds = %29
  %39 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %40 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %39, i32 0, i32 0
  %41 = load i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i32)*, i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i32)* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %102

46:                                               ; preds = %38
  %47 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %48 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %47, i32 0, i32 0
  %49 = load i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i32)*, i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i32)** %48, align 8
  %50 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = bitcast %struct.dentry* %51 to %struct.dentry.0*
  %53 = load %struct.inode*, %struct.inode** %13, align 8
  %54 = bitcast %struct.inode* %53 to %struct.inode.1*
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 %49(%struct.xattr_handler* %50, %struct.dentry.0* %52, %struct.inode.1* %54, i8* %55, i8* null, i32 0)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %102

61:                                               ; preds = %46
  %62 = load i8*, i8** %14, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %10, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %64, %61
  %70 = load i8**, i8*** %9, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %11, align 4
  %75 = call i8* @krealloc(i8* %71, i32 %73, i32 %74)
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %102

81:                                               ; preds = %69
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @memset(i8* %82, i32 0, i32 %84)
  br label %86

86:                                               ; preds = %81, %64
  %87 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %88 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %87, i32 0, i32 0
  %89 = load i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i32)*, i32 (%struct.xattr_handler*, %struct.dentry.0*, %struct.inode.1*, i8*, i8*, i32)** %88, align 8
  %90 = load %struct.xattr_handler*, %struct.xattr_handler** %12, align 8
  %91 = load %struct.dentry*, %struct.dentry** %7, align 8
  %92 = bitcast %struct.dentry* %91 to %struct.dentry.0*
  %93 = load %struct.inode*, %struct.inode** %13, align 8
  %94 = bitcast %struct.inode* %93 to %struct.inode.1*
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i32 %89(%struct.xattr_handler* %90, %struct.dentry.0* %92, %struct.inode.1* %94, i8* %95, i8* %96, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i8*, i8** %14, align 8
  %100 = load i8**, i8*** %9, align 8
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %86, %78, %59, %43, %35, %27
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @xattr_permission(%struct.inode*, i8*, i32) #1

declare dso_local %struct.xattr_handler* @xattr_resolve_name(%struct.inode*, i8**) #1

declare dso_local i64 @IS_ERR(%struct.xattr_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.xattr_handler*) #1

declare dso_local i8* @krealloc(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_xattr.c___vfs_setxattr_noperm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_xattr.c___vfs_setxattr_noperm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX_LEN = common dso_local global i32 0, align 4
@S_NOSEC = common dso_local global i32 0, align 4
@IOP_XATTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vfs_setxattr_noperm(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %12, align 8
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @XATTR_SECURITY_PREFIX, align 4
  %23 = load i32, i32* @XATTR_SECURITY_PREFIX_LEN, align 4
  %24 = call i32 @strncmp(i8* %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load i32, i32* @S_NOSEC, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.inode*, %struct.inode** %12, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %5
  %38 = load %struct.inode*, %struct.inode** %12, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IOP_XATTR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %37
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @__vfs_setxattr(%struct.dentry* %45, %struct.inode* %46, i8* %47, i8* %48, i64 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %44
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = call i32 @fsnotify_xattr(%struct.dentry* %55)
  %57 = load %struct.dentry*, %struct.dentry** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @security_inode_post_setxattr(%struct.dentry* %57, i8* %58, i8* %59, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %44
  br label %73

64:                                               ; preds = %37
  %65 = load %struct.inode*, %struct.inode** %12, align 8
  %66 = call i32 @is_bad_inode(%struct.inode* %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %103

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @XATTR_SECURITY_PREFIX_LEN, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8* %87, i8** %15, align 8
  %88 = load %struct.inode*, %struct.inode** %12, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @security_inode_setsecurity(%struct.inode* %88, i8* %89, i8* %90, i64 %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %83
  %97 = load %struct.dentry*, %struct.dentry** %7, align 8
  %98 = call i32 @fsnotify_xattr(%struct.dentry* %97)
  br label %99

99:                                               ; preds = %96, %83
  br label %100

100:                                              ; preds = %99, %78
  br label %101

101:                                              ; preds = %100, %73
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %69
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @__vfs_setxattr(%struct.dentry*, %struct.inode*, i8*, i8*, i64, i32) #1

declare dso_local i32 @fsnotify_xattr(%struct.dentry*) #1

declare dso_local i32 @security_inode_post_setxattr(%struct.dentry*, i8*, i8*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @security_inode_setsecurity(%struct.inode*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

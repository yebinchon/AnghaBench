; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.cred = type { i32 }

@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ovl_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cred*, align 8
  %13 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = call %struct.dentry* @ovl_dentry_real(%struct.dentry* %14)
  store %struct.dentry* %15, %struct.dentry** %8, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cred* @ovl_override_creds(i32 %18)
  store %struct.cred* %19, %struct.cred** %12, align 8
  %20 = load %struct.dentry*, %struct.dentry** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @vfs_listxattr(%struct.dentry* %20, i8* %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.cred*, %struct.cred** %12, align 8
  %25 = call i32 @revert_creds(%struct.cred* %24)
  %26 = load i64, i64* %9, align 8
  %27 = icmp ule i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %3
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %4, align 8
  br label %78

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %75, %33
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @strnlen(i8* %40, i64 %41)
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ugt i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i64, i64* @EIO, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %4, align 8
  br label %78

54:                                               ; preds = %39
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @ovl_can_list(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %9, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @memmove(i8* %65, i8* %68, i64 %69)
  br label %75

71:                                               ; preds = %54
  %72 = load i64, i64* %13, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %11, align 8
  br label %75

75:                                               ; preds = %71, %61
  br label %36

76:                                               ; preds = %36
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %76, %51, %31
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local %struct.dentry* @ovl_dentry_real(%struct.dentry*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i64 @vfs_listxattr(%struct.dentry*, i8*, i64) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @strnlen(i8*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ovl_can_list(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

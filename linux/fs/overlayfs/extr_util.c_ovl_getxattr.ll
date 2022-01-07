; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@ENODATA = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"overlayfs: failed to get xattr %s: err=%zi)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ovl_getxattr(%struct.dentry* %0, i8* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %11, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @vfs_getxattr(%struct.dentry* %12, i8* %13, i8* null, i64 0)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @ENODATA, align 8
  %20 = sub i64 0, %19
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @EOPNOTSUPP, align 8
  %25 = sub i64 0, %24
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load i64, i64* @ENODATA, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %66

30:                                               ; preds = %22
  br label %59

31:                                               ; preds = %4
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %35, %36
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i64 %37, i32 %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i64, i64* @ENOMEM, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %66

45:                                               ; preds = %34
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @vfs_getxattr(%struct.dentry* %46, i8* %47, i8* %48, i64 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ult i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %59

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %31
  %56 = load i8*, i8** %11, align 8
  %57 = load i8**, i8*** %8, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %5, align 8
  br label %66

59:                                               ; preds = %53, %30
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %60, i64 %61)
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %59, %55, %42, %27
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i64 @vfs_getxattr(%struct.dentry*, i8*, i8*, i64) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

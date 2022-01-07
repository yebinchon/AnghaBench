; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_get_redirect_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_get_redirect_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@OVL_XATTR_REDIRECT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"overlayfs: invalid redirect (%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ovl_get_redirect_xattr(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %9, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = load i32, i32* @OVL_XATTR_REDIRECT, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @ovl_getxattr(%struct.dentry* %10, i32 %11, i8** %9, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %72

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @ERR_PTR(i32 %24)
  store i8* %25, i8** %3, align 8
  br label %72

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %63

30:                                               ; preds = %26
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %52, %36
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 47
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @strchrnul(i8* %45, i8 signext 47)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %63

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %7, align 8
  br label %38

54:                                               ; preds = %38
  br label %61

55:                                               ; preds = %30
  %56 = load i8*, i8** %9, align 8
  %57 = call i32* @strchr(i8* %56, i8 signext 47)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %63

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %3, align 8
  br label %72

63:                                               ; preds = %59, %50, %29
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @kfree(i8* %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i8* @ERR_PTR(i32 %70)
  store i8* %71, i8** %3, align 8
  br label %72

72:                                               ; preds = %63, %61, %23, %19
  %73 = load i8*, i8** %3, align 8
  ret i8* %73
}

declare dso_local i32 @ovl_getxattr(%struct.dentry*, i32, i8**, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

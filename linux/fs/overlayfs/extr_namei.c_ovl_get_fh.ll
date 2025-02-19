; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_get_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_get_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_fh = type { i32 }
%struct.dentry = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"overlayfs: failed to get origin (%i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"overlayfs: invalid origin (%*phN)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ovl_fh* (%struct.dentry*, i8*)* @ovl_get_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ovl_fh* @ovl_get_fh(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.ovl_fh*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ovl_fh*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ovl_fh* null, %struct.ovl_fh** %8, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @vfs_getxattr(%struct.dentry* %9, i8* %10, %struct.ovl_fh* null, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14
  store %struct.ovl_fh* null, %struct.ovl_fh** %3, align 8
  br label %74

25:                                               ; preds = %19
  br label %67

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store %struct.ovl_fh* null, %struct.ovl_fh** %3, align 8
  br label %74

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.ovl_fh* @kzalloc(i32 %31, i32 %32)
  store %struct.ovl_fh* %33, %struct.ovl_fh** %8, align 8
  %34 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %35 = icmp ne %struct.ovl_fh* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.ovl_fh* @ERR_PTR(i32 %38)
  store %struct.ovl_fh* %39, %struct.ovl_fh** %3, align 8
  br label %74

40:                                               ; preds = %30
  %41 = load %struct.dentry*, %struct.dentry** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @vfs_getxattr(%struct.dentry* %41, i8* %42, %struct.ovl_fh* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %67

49:                                               ; preds = %40
  %50 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ovl_check_fh_len(%struct.ovl_fh* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ENODATA, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %64

61:                                               ; preds = %55
  br label %70

62:                                               ; preds = %49
  %63 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  store %struct.ovl_fh* %63, %struct.ovl_fh** %3, align 8
  br label %74

64:                                               ; preds = %70, %67, %60
  %65 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %66 = call i32 @kfree(%struct.ovl_fh* %65)
  store %struct.ovl_fh* null, %struct.ovl_fh** %3, align 8
  br label %74

67:                                               ; preds = %48, %25
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i8*, i32, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %64

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %73 = call i32 (i8*, i32, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %71, %struct.ovl_fh* %72)
  br label %64

74:                                               ; preds = %64, %62, %36, %29, %24
  %75 = load %struct.ovl_fh*, %struct.ovl_fh** %3, align 8
  ret %struct.ovl_fh* %75
}

declare dso_local i32 @vfs_getxattr(%struct.dentry*, i8*, %struct.ovl_fh*, i32) #1

declare dso_local %struct.ovl_fh* @kzalloc(i32, i32) #1

declare dso_local %struct.ovl_fh* @ERR_PTR(i32) #1

declare dso_local i32 @ovl_check_fh_len(%struct.ovl_fh*, i32) #1

declare dso_local i32 @kfree(%struct.ovl_fh*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

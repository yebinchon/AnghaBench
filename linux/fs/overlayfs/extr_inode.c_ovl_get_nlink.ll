; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_get_nlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_get_nlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OVL_XATTR_NLINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"overlayfs: failed to get index nlink (%pd2, err=%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_get_nlink(%struct.dentry* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [13 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = icmp ne %struct.dentry* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %14, %3
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %4, align 4
  br label %91

25:                                               ; preds = %17
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = load i32, i32* @OVL_XATTR_NLINK, align 4
  %28 = bitcast [13 x i8]* %10 to i8**
  %29 = call i32 @vfs_getxattr(%struct.dentry* %26, i32 %27, i8** %28, i32 12)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %86

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 76
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 85
  br i1 %45, label %56, label %46

46:                                               ; preds = %41, %33
  %47 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 43
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 45
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %41
  br label %86

57:                                               ; preds = %51, %46
  %58 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i32 @kstrtoint(i8* %59, i32 10, i32* %8)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %86

64:                                               ; preds = %57
  %65 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 76
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  br label %73

71:                                               ; preds = %64
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi %struct.dentry* [ %70, %69 ], [ %72, %71 ]
  %75 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %91

86:                                               ; preds = %83, %63, %56, %32
  %87 = load %struct.dentry*, %struct.dentry** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.dentry* %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %86, %84, %23
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @vfs_getxattr(%struct.dentry*, i32, i8**, i32) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_verify_set_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_verify_set_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.ovl_fh = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"overlayfs: failed to verify %s (%pd2, ino=%lu, err=%i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"origin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_verify_set_fh(%struct.dentry* %0, i8* %1, %struct.dentry* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ovl_fh*, align 8
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.ovl_fh* @ovl_encode_real_fh(%struct.dentry* %14, i32 %15)
  store %struct.ovl_fh* %16, %struct.ovl_fh** %12, align 8
  %17 = load %struct.ovl_fh*, %struct.ovl_fh** %12, align 8
  %18 = call i32 @PTR_ERR(%struct.ovl_fh* %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.ovl_fh*, %struct.ovl_fh** %12, align 8
  %20 = call i64 @IS_ERR(%struct.ovl_fh* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store %struct.ovl_fh* null, %struct.ovl_fh** %12, align 8
  br label %52

23:                                               ; preds = %5
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.ovl_fh*, %struct.ovl_fh** %12, align 8
  %27 = call i32 @ovl_verify_fh(%struct.dentry* %24, i8* %25, %struct.ovl_fh* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @ENODATA, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.ovl_fh*, %struct.ovl_fh** %12, align 8
  %39 = load %struct.ovl_fh*, %struct.ovl_fh** %12, align 8
  %40 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ovl_do_setxattr(%struct.dentry* %36, i8* %37, %struct.ovl_fh* %38, i32 %41, i32 0)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %35, %30, %23
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %52

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %67, %47
  %49 = load %struct.ovl_fh*, %struct.ovl_fh** %12, align 8
  %50 = call i32 @kfree(%struct.ovl_fh* %49)
  %51 = load i32, i32* %13, align 4
  ret i32 %51

52:                                               ; preds = %46, %22
  %53 = load %struct.dentry*, %struct.dentry** %8, align 8
  %54 = call %struct.inode* @d_inode(%struct.dentry* %53)
  store %struct.inode* %54, %struct.inode** %11, align 8
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %59 = load %struct.dentry*, %struct.dentry** %8, align 8
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = icmp ne %struct.inode* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %67

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ %65, %62 ], [ 0, %66 ]
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %58, %struct.dentry* %59, i32 %68, i32 %69)
  br label %48
}

declare dso_local %struct.ovl_fh* @ovl_encode_real_fh(%struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ovl_fh*) #1

declare dso_local i64 @IS_ERR(%struct.ovl_fh*) #1

declare dso_local i32 @ovl_verify_fh(%struct.dentry*, i8*, %struct.ovl_fh*) #1

declare dso_local i32 @ovl_do_setxattr(%struct.dentry*, i8*, %struct.ovl_fh*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ovl_fh*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i8*, %struct.dentry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

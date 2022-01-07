; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_check_layer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_check_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ovl_fs = type { i32 }
%struct.dentry = type { i32 }

@ELOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"overlayfs: overlapping %s path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ovl_fs*, %struct.dentry*, i8*)* @ovl_check_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_check_layer(%struct.super_block* %0, %struct.ovl_fs* %1, %struct.dentry* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ovl_fs*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ovl_fs* %1, %struct.ovl_fs** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %13, %struct.dentry** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

17:                                               ; preds = %4
  %18 = load %struct.dentry*, %struct.dentry** %10, align 8
  %19 = call %struct.dentry* @dget_parent(%struct.dentry* %18)
  store %struct.dentry* %19, %struct.dentry** %11, align 8
  br label %20

20:                                               ; preds = %48, %17
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.dentry*, %struct.dentry** %11, align 8
  %25 = load %struct.dentry*, %struct.dentry** %10, align 8
  %26 = icmp ne %struct.dentry* %24, %25
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br i1 %28, label %29, label %54

29:                                               ; preds = %27
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = load %struct.dentry*, %struct.dentry** %11, align 8
  %32 = call i64 @ovl_lookup_trap_inode(%struct.super_block* %30, %struct.dentry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @ELOOP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %48

39:                                               ; preds = %29
  %40 = load %struct.dentry*, %struct.dentry** %11, align 8
  %41 = call i64 @ovl_is_inuse(%struct.dentry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @ovl_report_in_use(%struct.ovl_fs* %44, i8* %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %49, %struct.dentry** %10, align 8
  %50 = load %struct.dentry*, %struct.dentry** %10, align 8
  %51 = call %struct.dentry* @dget_parent(%struct.dentry* %50)
  store %struct.dentry* %51, %struct.dentry** %11, align 8
  %52 = load %struct.dentry*, %struct.dentry** %10, align 8
  %53 = call i32 @dput(%struct.dentry* %52)
  br label %20

54:                                               ; preds = %27
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  %56 = call i32 @dput(%struct.dentry* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i64 @ovl_lookup_trap_inode(%struct.super_block*, %struct.dentry*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i64 @ovl_is_inuse(%struct.dentry*) #1

declare dso_local i32 @ovl_report_in_use(%struct.ovl_fs*, i8*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

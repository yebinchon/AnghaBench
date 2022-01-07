; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_check_origin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_check_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_fs = type { i32 }
%struct.dentry = type { i32 }
%struct.ovl_path = type { i32 }
%struct.ovl_fh = type { i32 }

@OVL_XATTR_ORIGIN = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_fs*, %struct.dentry*, %struct.ovl_path**, i32*)* @ovl_check_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_check_origin(%struct.ovl_fs* %0, %struct.dentry* %1, %struct.ovl_path** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ovl_fs*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ovl_path**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ovl_fh*, align 8
  %11 = alloca i32, align 4
  store %struct.ovl_fs* %0, %struct.ovl_fs** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.ovl_path** %2, %struct.ovl_path*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = load i32, i32* @OVL_XATTR_ORIGIN, align 4
  %14 = call %struct.ovl_fh* @ovl_get_fh(%struct.dentry* %12, i32 %13)
  store %struct.ovl_fh* %14, %struct.ovl_fh** %10, align 8
  %15 = load %struct.ovl_fh*, %struct.ovl_fh** %10, align 8
  %16 = call i64 @IS_ERR_OR_NULL(%struct.ovl_fh* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.ovl_fh*, %struct.ovl_fh** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.ovl_fh* %19)
  store i32 %20, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  %22 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %23 = load %struct.ovl_fh*, %struct.ovl_fh** %10, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = load %struct.ovl_path**, %struct.ovl_path*** %8, align 8
  %26 = call i32 @ovl_check_origin_fh(%struct.ovl_fs* %22, %struct.ovl_fh* %23, i32 0, %struct.dentry* %24, %struct.ovl_path** %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ovl_fh*, %struct.ovl_fh** %10, align 8
  %28 = call i32 @kfree(%struct.ovl_fh* %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @ESTALE, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %49

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %49

39:                                               ; preds = %21
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32*, i32** %9, align 8
  store i32 1, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %44, %37, %36, %18
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.ovl_fh* @ovl_get_fh(%struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ovl_fh*) #1

declare dso_local i32 @PTR_ERR(%struct.ovl_fh*) #1

declare dso_local i32 @ovl_check_origin_fh(%struct.ovl_fs*, %struct.ovl_fh*, i32, %struct.dentry*, %struct.ovl_path**) #1

declare dso_local i32 @kfree(%struct.ovl_fh*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

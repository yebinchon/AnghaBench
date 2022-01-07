; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_set_origin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_set_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_fh = type { i32 }

@OVL_XATTR_ORIGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_set_origin(%struct.dentry* %0, %struct.dentry* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ovl_fh*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.ovl_fh* null, %struct.ovl_fh** %8, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ovl_can_decode_fh(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = call %struct.ovl_fh* @ovl_encode_real_fh(%struct.dentry* %16, i32 0)
  store %struct.ovl_fh* %17, %struct.ovl_fh** %8, align 8
  %18 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %19 = call i64 @IS_ERR(%struct.ovl_fh* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %23 = call i32 @PTR_ERR(%struct.ovl_fh* %22)
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = load i32, i32* @OVL_XATTR_ORIGIN, align 4
  %29 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %30 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %31 = icmp ne %struct.ovl_fh* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %34 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  %39 = call i32 @ovl_check_setxattr(%struct.dentry* %26, %struct.dentry* %27, i32 %28, %struct.ovl_fh* %29, i32 %38, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %41 = call i32 @kfree(%struct.ovl_fh* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %37, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @ovl_can_decode_fh(i32) #1

declare dso_local %struct.ovl_fh* @ovl_encode_real_fh(%struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ovl_fh*) #1

declare dso_local i32 @PTR_ERR(%struct.ovl_fh*) #1

declare dso_local i32 @ovl_check_setxattr(%struct.dentry*, %struct.dentry*, i32, %struct.ovl_fh*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ovl_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

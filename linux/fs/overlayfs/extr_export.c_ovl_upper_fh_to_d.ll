; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_upper_fh_to_d.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_upper_fh_to_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { %struct.ovl_fs* }
%struct.ovl_fs = type { i32 }
%struct.ovl_fh = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.ovl_fh*)* @ovl_upper_fh_to_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_upper_fh_to_d(%struct.super_block* %0, %struct.ovl_fh* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ovl_fh*, align 8
  %6 = alloca %struct.ovl_fs*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ovl_fh* %1, %struct.ovl_fh** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 0
  %11 = load %struct.ovl_fs*, %struct.ovl_fs** %10, align 8
  store %struct.ovl_fs* %11, %struct.ovl_fs** %6, align 8
  %12 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %13 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %3, align 8
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.ovl_fh*, %struct.ovl_fh** %5, align 8
  %22 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %23 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.dentry* @ovl_decode_real_fh(%struct.ovl_fh* %21, i32 %24, i32 1)
  store %struct.dentry* %25, %struct.dentry** %8, align 8
  %26 = load %struct.dentry*, %struct.dentry** %8, align 8
  %27 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %30, %struct.dentry** %3, align 8
  br label %38

31:                                               ; preds = %20
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = call %struct.dentry* @ovl_get_dentry(%struct.super_block* %32, %struct.dentry* %33, i32* null, i32* null)
  store %struct.dentry* %34, %struct.dentry** %7, align 8
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = call i32 @dput(%struct.dentry* %35)
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %37, %struct.dentry** %3, align 8
  br label %38

38:                                               ; preds = %31, %29, %16
  %39 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %39
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @ovl_decode_real_fh(%struct.ovl_fh*, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_get_dentry(%struct.super_block*, %struct.dentry*, i32*, i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

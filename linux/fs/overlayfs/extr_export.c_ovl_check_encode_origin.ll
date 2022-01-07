; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_check_encode_origin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_check_encode_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ovl_fs* }
%struct.ovl_fs = type { i64 }

@OVL_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @ovl_check_encode_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_check_encode_origin(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ovl_fs*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ovl_fs*, %struct.ovl_fs** %8, align 8
  store %struct.ovl_fs* %9, %struct.ovl_fs** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call i32 @ovl_dentry_lower(%struct.dentry* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call i64 @ovl_dentry_upper(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* @OVL_INDEX, align 4
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = call i32 @d_inode(%struct.dentry* %20)
  %22 = call i32 @ovl_test_flag(i32 %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

25:                                               ; preds = %18, %14
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = call i64 @d_is_dir(%struct.dentry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %31 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.dentry*, %struct.dentry** %3, align 8
  %36 = call i32 @ovl_connect_layer(%struct.dentry* %35)
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %29, %25
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34, %24, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ovl_dentry_lower(%struct.dentry*) #1

declare dso_local i64 @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i32 @ovl_test_flag(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @ovl_connect_layer(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

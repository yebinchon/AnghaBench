; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_test_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_test_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_context = type { %struct.kernfs_super_info* }
%struct.kernfs_super_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @kernfs_test_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_test_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.kernfs_super_info*, align 8
  %6 = alloca %struct.kernfs_super_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.fs_context* %1, %struct.fs_context** %4, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.kernfs_super_info* @kernfs_info(%struct.super_block* %7)
  store %struct.kernfs_super_info* %8, %struct.kernfs_super_info** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %10, align 8
  store %struct.kernfs_super_info* %11, %struct.kernfs_super_info** %6, align 8
  %12 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %5, align 8
  %13 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %6, align 8
  %16 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %5, align 8
  %21 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %6, align 8
  %24 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br label %27

27:                                               ; preds = %19, %2
  %28 = phi i1 [ false, %2 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local %struct.kernfs_super_info* @kernfs_info(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

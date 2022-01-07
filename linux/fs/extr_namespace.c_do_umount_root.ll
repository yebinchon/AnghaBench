; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_umount_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_umount_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.fs_context = type { i32 }

@SB_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @do_umount_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_umount_root(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = call i32 @down_write(i32* %6)
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call i32 @sb_rdonly(%struct.super_block* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SB_RDONLY, align 4
  %16 = load i32, i32* @SB_RDONLY, align 4
  %17 = call %struct.fs_context* @fs_context_for_reconfigure(i32 %14, i32 %15, i32 %16)
  store %struct.fs_context* %17, %struct.fs_context** %4, align 8
  %18 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %19 = call i64 @IS_ERR(%struct.fs_context* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.fs_context* %22)
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %11
  %25 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %26 = call i32 @parse_monolithic_mount_data(%struct.fs_context* %25, i32* null)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %31 = call i32 @reconfigure_super(%struct.fs_context* %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %34 = call i32 @put_fs_context(%struct.fs_context* %33)
  br label %35

35:                                               ; preds = %32, %21
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.super_block*, %struct.super_block** %2, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 0
  %39 = call i32 @up_write(i32* %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local %struct.fs_context* @fs_context_for_reconfigure(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fs_context*) #1

declare dso_local i32 @PTR_ERR(%struct.fs_context*) #1

declare dso_local i32 @parse_monolithic_mount_data(%struct.fs_context*, i32*) #1

declare dso_local i32 @reconfigure_super(%struct.fs_context*) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

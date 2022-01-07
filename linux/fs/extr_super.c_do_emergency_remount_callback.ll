; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_super.c_do_emergency_remount_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_super.c_do_emergency_remount_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i64, i64 }
%struct.fs_context = type { i32 }

@SB_BORN = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@SB_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @do_emergency_remount_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_emergency_remount_callback(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.fs_context*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 1
  %6 = call i32 @down_write(i32* %5)
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %11
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SB_BORN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load %struct.super_block*, %struct.super_block** %2, align 8
  %25 = call i32 @sb_rdonly(%struct.super_block* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %23
  %28 = load %struct.super_block*, %struct.super_block** %2, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @SB_RDONLY, align 4
  %32 = load i32, i32* @SB_FORCE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SB_RDONLY, align 4
  %35 = call %struct.fs_context* @fs_context_for_reconfigure(i64 %30, i32 %33, i32 %34)
  store %struct.fs_context* %35, %struct.fs_context** %3, align 8
  %36 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %37 = call i32 @IS_ERR(%struct.fs_context* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %27
  %40 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %41 = call i64 @parse_monolithic_mount_data(%struct.fs_context* %40, i32* null)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %45 = call i32 @reconfigure_super(%struct.fs_context* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %48 = call i32 @put_fs_context(%struct.fs_context* %47)
  br label %49

49:                                               ; preds = %46, %27
  br label %50

50:                                               ; preds = %49, %23, %16, %11, %1
  %51 = load %struct.super_block*, %struct.super_block** %2, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 1
  %53 = call i32 @up_write(i32* %52)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local %struct.fs_context* @fs_context_for_reconfigure(i64, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.fs_context*) #1

declare dso_local i64 @parse_monolithic_mount_data(%struct.fs_context*, i32*) #1

declare dso_local i32 @reconfigure_super(%struct.fs_context*) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

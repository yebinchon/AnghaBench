; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }
%struct.fs_context = type { %struct.fuse_fs_context* }
%struct.fuse_fs_context = type { i32*, i32 }
%struct.file = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@fuse_dev_operations = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fuse_dev_fiq_ops = common dso_local global i32 0, align 4
@fuse_free_conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @fuse_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.fuse_fs_context*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_conn*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %10 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %11 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %10, i32 0, i32 0
  %12 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %11, align 8
  store %struct.fuse_fs_context* %12, %struct.fuse_fs_context** %6, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %6, align 8
  %16 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.file* @fget(i32 %17)
  store %struct.file* %18, %struct.file** %7, align 8
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = icmp ne %struct.file* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %82

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, @fuse_dev_operations
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27, %22
  br label %79

38:                                               ; preds = %27
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %6, align 8
  %42 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.fuse_conn* @kmalloc(i32 4, i32 %43)
  store %struct.fuse_conn* %44, %struct.fuse_conn** %9, align 8
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %48 = icmp ne %struct.fuse_conn* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %79

50:                                               ; preds = %38
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = getelementptr inbounds %struct.super_block, %struct.super_block* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @fuse_conn_init(%struct.fuse_conn* %51, i64 %54, i32* @fuse_dev_fiq_ops, i32* null)
  %56 = load i32, i32* @fuse_free_conn, align 4
  %57 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %58 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 1
  store %struct.fuse_conn* %59, %struct.fuse_conn** %61, align 8
  %62 = load %struct.super_block*, %struct.super_block** %4, align 8
  %63 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %6, align 8
  %64 = call i32 @fuse_fill_super_common(%struct.super_block* %62, %struct.fuse_fs_context* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  br label %74

68:                                               ; preds = %50
  %69 = load %struct.file*, %struct.file** %7, align 8
  %70 = call i32 @fput(%struct.file* %69)
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = call i32 @get_fuse_conn_super(%struct.super_block* %71)
  %73 = call i32 @fuse_send_init(i32 %72)
  store i32 0, i32* %3, align 4
  br label %84

74:                                               ; preds = %67
  %75 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %76 = call i32 @fuse_conn_put(%struct.fuse_conn* %75)
  %77 = load %struct.super_block*, %struct.super_block** %4, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 1
  store %struct.fuse_conn* null, %struct.fuse_conn** %78, align 8
  br label %79

79:                                               ; preds = %74, %49, %37
  %80 = load %struct.file*, %struct.file** %7, align 8
  %81 = call i32 @fput(%struct.file* %80)
  br label %82

82:                                               ; preds = %79, %21
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %68
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local %struct.fuse_conn* @kmalloc(i32, i32) #1

declare dso_local i32 @fuse_conn_init(%struct.fuse_conn*, i64, i32*, i32*) #1

declare dso_local i32 @fuse_fill_super_common(%struct.super_block*, %struct.fuse_fs_context*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @fuse_send_init(i32) #1

declare dso_local i32 @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local i32 @fuse_conn_put(%struct.fuse_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

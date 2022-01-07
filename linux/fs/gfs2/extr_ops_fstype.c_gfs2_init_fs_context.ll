; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i64, i32*, %struct.gfs2_args*, %struct.TYPE_4__* }
%struct.gfs2_args = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.gfs2_args }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_CONTEXT_FOR_RECONFIGURE = common dso_local global i64 0, align 8
@GFS2_QUOTA_DEFAULT = common dso_local global i32 0, align 4
@GFS2_DATA_DEFAULT = common dso_local global i32 0, align 4
@GFS2_ERRORS_DEFAULT = common dso_local global i32 0, align 4
@gfs2_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @gfs2_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.gfs2_args*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.gfs2_args* @kmalloc(i32 24, i32 %6)
  store %struct.gfs2_args* %7, %struct.gfs2_args** %4, align 8
  %8 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %9 = icmp eq %struct.gfs2_args* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %15 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FS_CONTEXT_FOR_RECONFIGURE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %21 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %25, align 8
  store %struct.gfs2_sbd* %26, %struct.gfs2_sbd** %5, align 8
  %27 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 0
  %30 = bitcast %struct.gfs2_args* %27 to i8*
  %31 = bitcast %struct.gfs2_args* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 24, i1 false)
  br label %50

32:                                               ; preds = %13
  %33 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %34 = call i32 @memset(%struct.gfs2_args* %33, i32 0, i32 24)
  %35 = load i32, i32* @GFS2_QUOTA_DEFAULT, align 4
  %36 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %37 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @GFS2_DATA_DEFAULT, align 4
  %39 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %40 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %42 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %41, i32 0, i32 0
  store i32 30, i32* %42, align 4
  %43 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %44 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %43, i32 0, i32 1
  store i32 30, i32* %44, align 4
  %45 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %46 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %45, i32 0, i32 2
  store i32 60, i32* %46, align 4
  %47 = load i32, i32* @GFS2_ERRORS_DEFAULT, align 4
  %48 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %49 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %32, %19
  %51 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %52 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %53 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %52, i32 0, i32 2
  store %struct.gfs2_args* %51, %struct.gfs2_args** %53, align 8
  %54 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %55 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %54, i32 0, i32 1
  store i32* @gfs2_context_ops, i32** %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.gfs2_args* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.gfs2_args*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

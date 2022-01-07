; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_remount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.mount = type { i32 }
%struct.fs_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MS_RMT_MASK = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32, i32, i32, i8*)* @do_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_remount(%struct.path* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.mount*, align 8
  %15 = alloca %struct.fs_context*, align 8
  store %struct.path* %0, %struct.path** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load %struct.path*, %struct.path** %7, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %13, align 8
  %21 = load %struct.path*, %struct.path** %7, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call %struct.mount* @real_mount(%struct.TYPE_2__* %23)
  store %struct.mount* %24, %struct.mount** %14, align 8
  %25 = load %struct.mount*, %struct.mount** %14, align 8
  %26 = call i32 @check_mnt(%struct.mount* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %105

31:                                               ; preds = %5
  %32 = load %struct.path*, %struct.path** %7, align 8
  %33 = getelementptr inbounds %struct.path, %struct.path* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.path*, %struct.path** %7, align 8
  %36 = getelementptr inbounds %struct.path, %struct.path* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %105

44:                                               ; preds = %31
  %45 = load %struct.mount*, %struct.mount** %14, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @can_change_locked_flags(%struct.mount* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %105

52:                                               ; preds = %44
  %53 = load %struct.path*, %struct.path** %7, align 8
  %54 = getelementptr inbounds %struct.path, %struct.path* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MS_RMT_MASK, align 4
  %58 = call %struct.fs_context* @fs_context_for_reconfigure(i64 %55, i32 %56, i32 %57)
  store %struct.fs_context* %58, %struct.fs_context** %15, align 8
  %59 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %60 = call i64 @IS_ERR(%struct.fs_context* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %64 = call i32 @PTR_ERR(%struct.fs_context* %63)
  store i32 %64, i32* %6, align 4
  br label %105

65:                                               ; preds = %52
  %66 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @parse_monolithic_mount_data(%struct.fs_context* %66, i8* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %97, label %71

71:                                               ; preds = %65
  %72 = load %struct.super_block*, %struct.super_block** %13, align 8
  %73 = getelementptr inbounds %struct.super_block, %struct.super_block* %72, i32 0, i32 0
  %74 = call i32 @down_write(i32* %73)
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  %77 = load %struct.super_block*, %struct.super_block** %13, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %81 = call i64 @ns_capable(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %71
  %84 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %85 = call i32 @reconfigure_super(%struct.fs_context* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load %struct.mount*, %struct.mount** %14, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @set_mount_attributes(%struct.mount* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct.super_block*, %struct.super_block** %13, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 0
  %96 = call i32 @up_write(i32* %95)
  br label %97

97:                                               ; preds = %93, %65
  %98 = load %struct.path*, %struct.path** %7, align 8
  %99 = load %struct.mount*, %struct.mount** %14, align 8
  %100 = getelementptr inbounds %struct.mount, %struct.mount* %99, i32 0, i32 0
  %101 = call i32 @mnt_warn_timestamp_expiry(%struct.path* %98, i32* %100)
  %102 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %103 = call i32 @put_fs_context(%struct.fs_context* %102)
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %97, %62, %49, %41, %28
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local %struct.mount* @real_mount(%struct.TYPE_2__*) #1

declare dso_local i32 @check_mnt(%struct.mount*) #1

declare dso_local i32 @can_change_locked_flags(%struct.mount*, i32) #1

declare dso_local %struct.fs_context* @fs_context_for_reconfigure(i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fs_context*) #1

declare dso_local i32 @PTR_ERR(%struct.fs_context*) #1

declare dso_local i32 @parse_monolithic_mount_data(%struct.fs_context*, i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @ns_capable(i32, i32) #1

declare dso_local i32 @reconfigure_super(%struct.fs_context*) #1

declare dso_local i32 @set_mount_attributes(%struct.mount*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mnt_warn_timestamp_expiry(%struct.path*, i32*) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

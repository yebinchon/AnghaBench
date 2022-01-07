; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fsopen.c_vfs_fsconfig_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fsopen.c_vfs_fsconfig_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.fs_parameter = type { i32 }

@FS_CONTEXT_CREATE_PARAMS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FS_CONTEXT_CREATING = common dso_local global i32 0, align 4
@FS_CONTEXT_AWAITING_MOUNT = common dso_local global i32 0, align 4
@FS_CONTEXT_RECONF_PARAMS = common dso_local global i32 0, align 4
@FS_CONTEXT_RECONFIGURING = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@FS_CONTEXT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, i32, %struct.fs_parameter*)* @vfs_fsconfig_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_fsconfig_locked(%struct.fs_context* %0, i32 %1, %struct.fs_parameter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_parameter*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fs_parameter* %2, %struct.fs_parameter** %7, align 8
  %10 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %11 = call i32 @finish_clean_context(%struct.fs_context* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %130

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %106 [
    i32 129, label %18
    i32 128, label %64
  ]

18:                                               ; preds = %16
  %19 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %20 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FS_CONTEXT_CREATE_PARAMS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %130

27:                                               ; preds = %18
  %28 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %29 = call i32 @mount_capable(%struct.fs_context* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %130

34:                                               ; preds = %27
  %35 = load i32, i32* @FS_CONTEXT_CREATING, align 4
  %36 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %37 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %39 = call i32 @vfs_get_tree(%struct.fs_context* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %125

43:                                               ; preds = %34
  %44 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %45 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.super_block*, %struct.super_block** %47, align 8
  store %struct.super_block* %48, %struct.super_block** %8, align 8
  %49 = load %struct.super_block*, %struct.super_block** %8, align 8
  %50 = call i32 @security_sb_kern_mount(%struct.super_block* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @unlikely(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %56 = call i32 @fc_drop_locked(%struct.fs_context* %55)
  br label %125

57:                                               ; preds = %43
  %58 = load %struct.super_block*, %struct.super_block** %8, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = call i32 @up_write(i32* %59)
  %61 = load i32, i32* @FS_CONTEXT_AWAITING_MOUNT, align 4
  %62 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %63 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %4, align 4
  br label %130

64:                                               ; preds = %16
  %65 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %66 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FS_CONTEXT_RECONF_PARAMS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %130

73:                                               ; preds = %64
  %74 = load i32, i32* @FS_CONTEXT_RECONFIGURING, align 4
  %75 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %76 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %78 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.super_block*, %struct.super_block** %80, align 8
  store %struct.super_block* %81, %struct.super_block** %8, align 8
  %82 = load %struct.super_block*, %struct.super_block** %8, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %86 = call i32 @ns_capable(i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %73
  %89 = load i32, i32* @EPERM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %125

91:                                               ; preds = %73
  %92 = load %struct.super_block*, %struct.super_block** %8, align 8
  %93 = getelementptr inbounds %struct.super_block, %struct.super_block* %92, i32 0, i32 0
  %94 = call i32 @down_write(i32* %93)
  %95 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %96 = call i32 @reconfigure_super(%struct.fs_context* %95)
  store i32 %96, i32* %9, align 4
  %97 = load %struct.super_block*, %struct.super_block** %8, align 8
  %98 = getelementptr inbounds %struct.super_block, %struct.super_block* %97, i32 0, i32 0
  %99 = call i32 @up_write(i32* %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %125

103:                                              ; preds = %91
  %104 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %105 = call i32 @vfs_clean_context(%struct.fs_context* %104)
  store i32 0, i32* %4, align 4
  br label %130

106:                                              ; preds = %16
  %107 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %108 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @FS_CONTEXT_CREATE_PARAMS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %114 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @FS_CONTEXT_RECONF_PARAMS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %130

121:                                              ; preds = %112, %106
  %122 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %123 = load %struct.fs_parameter*, %struct.fs_parameter** %7, align 8
  %124 = call i32 @vfs_parse_fs_param(%struct.fs_context* %122, %struct.fs_parameter* %123)
  store i32 %124, i32* %4, align 4
  br label %130

125:                                              ; preds = %102, %88, %54, %42
  %126 = load i32, i32* @FS_CONTEXT_FAILED, align 4
  %127 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %128 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %121, %118, %103, %70, %57, %31, %24, %14
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @finish_clean_context(%struct.fs_context*) #1

declare dso_local i32 @mount_capable(%struct.fs_context*) #1

declare dso_local i32 @vfs_get_tree(%struct.fs_context*) #1

declare dso_local i32 @security_sb_kern_mount(%struct.super_block*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @fc_drop_locked(%struct.fs_context*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @reconfigure_super(%struct.fs_context*) #1

declare dso_local i32 @vfs_clean_context(%struct.fs_context*) #1

declare dso_local i32 @vfs_parse_fs_param(%struct.fs_context*, %struct.fs_parameter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

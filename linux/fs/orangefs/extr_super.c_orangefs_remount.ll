; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_remount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_sb_info_s = type { i64, i32, i32 }
%struct.orangefs_kernel_op_s = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GOSSIP_SUPER_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"orangefs_remount: called\0A\00", align 1
@ORANGEFS_VFS_OP_FS_MOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ORANGEFS_MAX_SERVER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Attempting ORANGEFS Remount via host %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"orangefs_remount\00", align 1
@ORANGEFS_OP_PRIORITY = common dso_local global i32 0, align 4
@ORANGEFS_OP_NO_MUTEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"orangefs_remount: mount got return value of %d\0A\00", align 1
@orangefs_userspace_version = common dso_local global i32 0, align 4
@ORANGEFS_VFS_OP_FEATURES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"orangefs_features\00", align 1
@orangefs_features = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_remount(%struct.orangefs_sb_info_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.orangefs_sb_info_s*, align 8
  %4 = alloca %struct.orangefs_kernel_op_s*, align 8
  %5 = alloca i32, align 4
  store %struct.orangefs_sb_info_s* %0, %struct.orangefs_sb_info_s** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @gossip_debug(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ORANGEFS_VFS_OP_FS_MOUNT, align 4
  %11 = call %struct.orangefs_kernel_op_s* @op_alloc(i32 %10)
  store %struct.orangefs_kernel_op_s* %11, %struct.orangefs_kernel_op_s** %4, align 8
  %12 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %13 = icmp ne %struct.orangefs_kernel_op_s* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %98

17:                                               ; preds = %1
  %18 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %19 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.orangefs_sb_info_s*, %struct.orangefs_sb_info_s** %3, align 8
  %25 = getelementptr inbounds %struct.orangefs_sb_info_s, %struct.orangefs_sb_info_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ORANGEFS_MAX_SERVER_ADDR_LEN, align 4
  %28 = call i32 @strncpy(i32 %23, i32 %26, i32 %27)
  %29 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %30 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %31 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @gossip_debug(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %38 = load i32, i32* @ORANGEFS_OP_PRIORITY, align 4
  %39 = load i32, i32* @ORANGEFS_OP_NO_MUTEX, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @service_operation(%struct.orangefs_kernel_op_s* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, ...) @gossip_debug(i32 %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %17
  %48 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %49 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.orangefs_sb_info_s*, %struct.orangefs_sb_info_s** %3, align 8
  %55 = getelementptr inbounds %struct.orangefs_sb_info_s, %struct.orangefs_sb_info_s* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.orangefs_sb_info_s*, %struct.orangefs_sb_info_s** %3, align 8
  %57 = getelementptr inbounds %struct.orangefs_sb_info_s, %struct.orangefs_sb_info_s* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %47, %17
  %59 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %60 = call i32 @op_release(%struct.orangefs_kernel_op_s* %59)
  %61 = load i32, i32* @orangefs_userspace_version, align 4
  %62 = icmp sge i32 %61, 20906
  br i1 %62, label %63, label %95

63:                                               ; preds = %58
  %64 = load i32, i32* @ORANGEFS_VFS_OP_FEATURES, align 4
  %65 = call %struct.orangefs_kernel_op_s* @op_alloc(i32 %64)
  store %struct.orangefs_kernel_op_s* %65, %struct.orangefs_kernel_op_s** %4, align 8
  %66 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %67 = icmp ne %struct.orangefs_kernel_op_s* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %98

71:                                               ; preds = %63
  %72 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %73 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %78 = load i32, i32* @ORANGEFS_OP_PRIORITY, align 4
  %79 = load i32, i32* @ORANGEFS_OP_NO_MUTEX, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @service_operation(%struct.orangefs_kernel_op_s* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %71
  %85 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %86 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* @orangefs_features, align 8
  br label %92

91:                                               ; preds = %71
  store i64 0, i64* @orangefs_features, align 8
  br label %92

92:                                               ; preds = %91, %84
  %93 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %94 = call i32 @op_release(%struct.orangefs_kernel_op_s* %93)
  br label %96

95:                                               ; preds = %58
  store i64 0, i64* @orangefs_features, align 8
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %68, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @gossip_debug(i32, i8*, ...) #1

declare dso_local %struct.orangefs_kernel_op_s* @op_alloc(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @service_operation(%struct.orangefs_kernel_op_s*, i8*, i32) #1

declare dso_local i32 @op_release(%struct.orangefs_kernel_op_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

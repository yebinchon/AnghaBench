; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_check_set_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_check_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.mount_options = type { i32 }

@OCFS2_MOUNT_USRQUOTA = common dso_local global i32 0, align 4
@OCFS2_FEATURE_RO_COMPAT_USRQUOTA = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"User quotas were requested, but this filesystem does not have the feature enabled.\0A\00", align 1
@OCFS2_MOUNT_GRPQUOTA = common dso_local global i32 0, align 4
@OCFS2_FEATURE_RO_COMPAT_GRPQUOTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Group quotas were requested, but this filesystem does not have the feature enabled.\0A\00", align 1
@OCFS2_MOUNT_POSIX_ACL = common dso_local global i32 0, align 4
@OCFS2_FEATURE_INCOMPAT_XATTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"ACL support requested but extended attributes feature is not enabled\0A\00", align 1
@OCFS2_MOUNT_NO_POSIX_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.mount_options*)* @ocfs2_check_set_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_check_set_options(%struct.super_block* %0, %struct.mount_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.mount_options*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.mount_options* %1, %struct.mount_options** %5, align 8
  %6 = load %struct.mount_options*, %struct.mount_options** %5, align 8
  %7 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @OCFS2_MOUNT_USRQUOTA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load i32, i32* @OCFS2_FEATURE_RO_COMPAT_USRQUOTA, align 4
  %15 = call i32 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.super_block* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ML_ERROR, align 4
  %19 = call i32 @mlog(i32 %18, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %78

20:                                               ; preds = %12, %2
  %21 = load %struct.mount_options*, %struct.mount_options** %5, align 8
  %22 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OCFS2_MOUNT_GRPQUOTA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i32, i32* @OCFS2_FEATURE_RO_COMPAT_GRPQUOTA, align 4
  %30 = call i32 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.super_block* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ML_ERROR, align 4
  %34 = call i32 @mlog(i32 %33, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %78

35:                                               ; preds = %27, %20
  %36 = load %struct.mount_options*, %struct.mount_options** %5, align 8
  %37 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load i32, i32* @OCFS2_FEATURE_INCOMPAT_XATTR, align 4
  %45 = call i64 @OCFS2_HAS_INCOMPAT_FEATURE(%struct.super_block* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ML_ERROR, align 4
  %49 = call i32 @mlog(i32 %48, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %78

50:                                               ; preds = %42, %35
  %51 = load %struct.mount_options*, %struct.mount_options** %5, align 8
  %52 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %55 = load i32, i32* @OCFS2_MOUNT_NO_POSIX_ACL, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %50
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = load i32, i32* @OCFS2_FEATURE_INCOMPAT_XATTR, align 4
  %62 = call i64 @OCFS2_HAS_INCOMPAT_FEATURE(%struct.super_block* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %66 = load %struct.mount_options*, %struct.mount_options** %5, align 8
  %67 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %76

70:                                               ; preds = %59
  %71 = load i32, i32* @OCFS2_MOUNT_NO_POSIX_ACL, align 4
  %72 = load %struct.mount_options*, %struct.mount_options** %5, align 8
  %73 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %50
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %47, %32, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i64 @OCFS2_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

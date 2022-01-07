; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_verify_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_verify_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }

@OCFS2_MOUNT_HB_LOCAL = common dso_local global i32 0, align 4
@OCFS2_MOUNT_HB_GLOBAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cannot heartbeat on a locally mounted device.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Userspace stack expected, but o2cb heartbeat arguments passed to mount\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Mismatching o2cb heartbeat modes\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Heartbeat has to be started to mount a read-write clustered device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*)* @ocfs2_verify_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_verify_heartbeat(%struct.ocfs2_super* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  %5 = load i32, i32* @OCFS2_MOUNT_HB_LOCAL, align 4
  %6 = load i32, i32* @OCFS2_MOUNT_HB_GLOBAL, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %1
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %16 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @ML_ERROR, align 4
  %20 = call i32 @mlog(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %86

23:                                               ; preds = %14
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %25 = call i64 @ocfs2_userspace_stack(%struct.ocfs2_super* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @ML_ERROR, align 4
  %29 = call i32 @mlog(i32 %28, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %23
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OCFS2_MOUNT_HB_GLOBAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %41 = call i64 @ocfs2_cluster_o2cb_global_heartbeat(%struct.ocfs2_super* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39, %32
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OCFS2_MOUNT_HB_LOCAL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %52 = call i64 @ocfs2_cluster_o2cb_global_heartbeat(%struct.ocfs2_super* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %39
  %55 = load i32, i32* @ML_ERROR, align 4
  %56 = call i32 @mlog(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %86

59:                                               ; preds = %50, %43
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %62 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %60
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %69 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %67
  %72 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %73 = call i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %77 = call i64 @ocfs2_userspace_stack(%struct.ocfs2_super* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @ML_ERROR, align 4
  %81 = call i32 @mlog(i32 %80, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %75, %71, %67
  br label %85

85:                                               ; preds = %84, %60
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %79, %54, %27, %18
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i64 @ocfs2_userspace_stack(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_cluster_o2cb_global_heartbeat(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

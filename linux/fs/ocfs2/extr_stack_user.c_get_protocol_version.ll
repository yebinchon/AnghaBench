; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_get_protocol_version.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_get_protocol_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.ocfs2_cluster_connection = type { %struct.TYPE_9__, %struct.ocfs2_live_connection* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.ocfs2_live_connection = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_protocol_version = type { i64, i64 }

@ocfs2_user_plugin = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@running_proto = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cluster_connection*)* @get_protocol_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_protocol_version(%struct.ocfs2_cluster_connection* %0) #0 {
  %2 = alloca %struct.ocfs2_cluster_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_live_connection*, align 8
  %5 = alloca %struct.ocfs2_protocol_version, align 8
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %2, align 8
  %6 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %6, i32 0, i32 1
  %8 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %7, align 8
  store %struct.ocfs2_live_connection* %8, %struct.ocfs2_live_connection** %4, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ocfs2_user_plugin, i32 0, i32 0, i32 0), align 8
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @running_proto, i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ocfs2_user_plugin, i32 0, i32 0, i32 1), align 8
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @running_proto, i32 0, i32 1), align 8
  %11 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %4, align 8
  %15 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %18 = load i32, i32* @DLM_LOCK_EX, align 4
  %19 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %20 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @version_lock(%struct.ocfs2_cluster_connection* %17, i32 %18, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @running_proto, i32 0, i32 0), align 8
  %27 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %28 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @running_proto, i32 0, i32 1), align 8
  %31 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %32 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i64 %30, i64* %33, align 8
  %34 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %4, align 8
  %35 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @version_to_lvb(%struct.TYPE_10__* @running_proto, i32 %36)
  %38 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %39 = load i32, i32* @DLM_LOCK_PR, align 4
  %40 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %41 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @version_lock(%struct.ocfs2_cluster_connection* %38, i32 %39, i32 %42)
  br label %86

44:                                               ; preds = %1
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %51 = load i32, i32* @DLM_LOCK_PR, align 4
  %52 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %53 = call i32 @version_lock(%struct.ocfs2_cluster_connection* %50, i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %87

57:                                               ; preds = %49
  %58 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %4, align 8
  %59 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lvb_to_version(i32 %60, %struct.ocfs2_protocol_version* %5)
  %62 = getelementptr inbounds %struct.ocfs2_protocol_version, %struct.ocfs2_protocol_version* %5, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @running_proto, i32 0, i32 0), align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.ocfs2_protocol_version, %struct.ocfs2_protocol_version* %5, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @running_proto, i32 0, i32 1), align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %57
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %87

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.ocfs2_protocol_version, %struct.ocfs2_protocol_version* %5, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %78 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  %80 = getelementptr inbounds %struct.ocfs2_protocol_version, %struct.ocfs2_protocol_version* %5, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %2, align 8
  %83 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %74, %44
  br label %86

86:                                               ; preds = %85, %25
  br label %87

87:                                               ; preds = %86, %71, %56
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @version_lock(%struct.ocfs2_cluster_connection*, i32, i32) #1

declare dso_local i32 @version_to_lvb(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @lvb_to_version(i32, %struct.ocfs2_protocol_version*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

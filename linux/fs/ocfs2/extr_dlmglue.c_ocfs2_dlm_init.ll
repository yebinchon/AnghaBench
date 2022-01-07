; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32*, %struct.ocfs2_cluster_connection*, %struct.TYPE_2__, i32, i32, i32, i64, i32, i32, i32 }
%struct.ocfs2_cluster_connection = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ocfs2_downconvert_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ocfs2dc-%s\00", align 1
@lproto = common dso_local global i32 0, align 4
@ocfs2_do_node_down = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not find this host's node number\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_dlm_init(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_cluster_connection*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.ocfs2_cluster_connection* null, %struct.ocfs2_cluster_connection** %4, align 8
  %5 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %6 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  br label %77

11:                                               ; preds = %1
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %13 = call i32 @ocfs2_dlm_init_debug(%struct.ocfs2_super* %12)
  %14 = load i32, i32* @ocfs2_downconvert_thread, align 4
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32* @kthread_run(i32 %14, %struct.ocfs2_super* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @IS_ERR(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %11
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @PTR_ERR(i32* %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %98

36:                                               ; preds = %11
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %41 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %44 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %48 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %51 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strlen(i32 %52)
  %54 = load i32, i32* @ocfs2_do_node_down, align 4
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %56 = call i32 @ocfs2_cluster_connect(i32 %39, i32 %42, i32 %46, i32 %49, i32 %53, i32* @lproto, i32 %54, %struct.ocfs2_super* %55, %struct.ocfs2_cluster_connection** %4)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %36
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %98

62:                                               ; preds = %36
  %63 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %4, align 8
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %65 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %64, i32 0, i32 6
  %66 = call i32 @ocfs2_cluster_this_node(%struct.ocfs2_cluster_connection* %63, i64* %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  %72 = load i32, i32* @ML_ERROR, align 4
  %73 = call i32 @mlog(i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %4, align 8
  %75 = call i32 @ocfs2_cluster_disconnect(%struct.ocfs2_cluster_connection* %74, i32 0)
  br label %98

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %8
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %79 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %78, i32 0, i32 5
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %81 = call i32 @ocfs2_super_lock_res_init(i32* %79, %struct.ocfs2_super* %80)
  %82 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %83 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %82, i32 0, i32 4
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %85 = call i32 @ocfs2_rename_lock_res_init(i32* %83, %struct.ocfs2_super* %84)
  %86 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %87 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %86, i32 0, i32 3
  %88 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %89 = call i32 @ocfs2_nfs_sync_lock_res_init(i32* %87, %struct.ocfs2_super* %88)
  %90 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %91 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %94 = call i32 @ocfs2_orphan_scan_lock_res_init(i32* %92, %struct.ocfs2_super* %93)
  %95 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %4, align 8
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %97 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %96, i32 0, i32 1
  store %struct.ocfs2_cluster_connection* %95, %struct.ocfs2_cluster_connection** %97, align 8
  br label %98

98:                                               ; preds = %77, %69, %59, %27
  %99 = load i32, i32* %3, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %103 = call i32 @ocfs2_dlm_shutdown_debug(%struct.ocfs2_super* %102)
  %104 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %105 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %110 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @kthread_stop(i32* %111)
  br label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113, %98
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_dlm_init_debug(%struct.ocfs2_super*) #1

declare dso_local i32* @kthread_run(i32, %struct.ocfs2_super*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_cluster_connect(i32, i32, i32, i32, i32, i32*, i32, %struct.ocfs2_super*, %struct.ocfs2_cluster_connection**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ocfs2_cluster_this_node(%struct.ocfs2_cluster_connection*, i64*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @ocfs2_cluster_disconnect(%struct.ocfs2_cluster_connection*, i32) #1

declare dso_local i32 @ocfs2_super_lock_res_init(i32*, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_rename_lock_res_init(i32*, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_nfs_sync_lock_res_init(i32*, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_orphan_scan_lock_res_init(i32*, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_dlm_shutdown_debug(%struct.ocfs2_super*) #1

declare dso_local i32 @kthread_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

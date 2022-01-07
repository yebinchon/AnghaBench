; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_cluster_group_make_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_cluster_group_make_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node_group = type { %struct.config_group, i32, i32, i32, i32, i32, i32, %struct.config_group }
%struct.config_group = type { i32 }
%struct.o2nm_cluster = type { %struct.config_group, i32, i32, i32, i32, i32, i32, %struct.config_group }

@o2nm_single_cluster = common dso_local global %struct.o2nm_node_group* null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@o2nm_cluster_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@o2nm_node_group_type = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@O2NET_RECONNECT_DELAY_MS_DEFAULT = common dso_local global i32 0, align 4
@O2NET_IDLE_TIMEOUT_MS_DEFAULT = common dso_local global i32 0, align 4
@O2NET_KEEPALIVE_DELAY_MS_DEFAULT = common dso_local global i32 0, align 4
@O2NM_FENCE_RESET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @o2nm_cluster_group_make_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @o2nm_cluster_group_make_group(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.o2nm_cluster*, align 8
  %7 = alloca %struct.o2nm_node_group*, align 8
  %8 = alloca %struct.config_group*, align 8
  %9 = alloca %struct.config_group*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.o2nm_cluster* null, %struct.o2nm_cluster** %6, align 8
  store %struct.o2nm_node_group* null, %struct.o2nm_node_group** %7, align 8
  store %struct.config_group* null, %struct.config_group** %8, align 8
  store %struct.config_group* null, %struct.config_group** %9, align 8
  %10 = load %struct.o2nm_node_group*, %struct.o2nm_node_group** @o2nm_single_cluster, align 8
  %11 = icmp ne %struct.o2nm_node_group* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.config_group* @ERR_PTR(i32 %14)
  store %struct.config_group* %15, %struct.config_group** %3, align 8
  br label %87

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.o2nm_node_group* @kzalloc(i32 32, i32 %17)
  %19 = bitcast %struct.o2nm_node_group* %18 to %struct.o2nm_cluster*
  store %struct.o2nm_cluster* %19, %struct.o2nm_cluster** %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.o2nm_node_group* @kzalloc(i32 32, i32 %20)
  store %struct.o2nm_node_group* %21, %struct.o2nm_node_group** %7, align 8
  %22 = call %struct.config_group* (...) @o2hb_alloc_hb_set()
  store %struct.config_group* %22, %struct.config_group** %8, align 8
  %23 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %24 = icmp eq %struct.o2nm_cluster* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load %struct.o2nm_node_group*, %struct.o2nm_node_group** %7, align 8
  %27 = icmp eq %struct.o2nm_node_group* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.config_group*, %struct.config_group** %8, align 8
  %30 = icmp eq %struct.config_group* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %16
  br label %71

32:                                               ; preds = %28
  %33 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %34 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %33, i32 0, i32 0
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @config_group_init_type_name(%struct.config_group* %34, i8* %35, i32* @o2nm_cluster_type)
  %37 = load %struct.o2nm_node_group*, %struct.o2nm_node_group** %7, align 8
  %38 = getelementptr inbounds %struct.o2nm_node_group, %struct.o2nm_node_group* %37, i32 0, i32 7
  %39 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %40 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %39, i32 0, i32 0
  %41 = call i32 @configfs_add_default_group(%struct.config_group* %38, %struct.config_group* %40)
  %42 = load %struct.o2nm_node_group*, %struct.o2nm_node_group** %7, align 8
  %43 = getelementptr inbounds %struct.o2nm_node_group, %struct.o2nm_node_group* %42, i32 0, i32 7
  %44 = call i32 @config_group_init_type_name(%struct.config_group* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* @o2nm_node_group_type)
  %45 = load %struct.config_group*, %struct.config_group** %8, align 8
  %46 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %47 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %46, i32 0, i32 0
  %48 = call i32 @configfs_add_default_group(%struct.config_group* %45, %struct.config_group* %47)
  %49 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %50 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %49, i32 0, i32 6
  %51 = call i32 @rwlock_init(i32* %50)
  %52 = load i32, i32* @RB_ROOT, align 4
  %53 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %54 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @O2NET_RECONNECT_DELAY_MS_DEFAULT, align 4
  %56 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %57 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @O2NET_IDLE_TIMEOUT_MS_DEFAULT, align 4
  %59 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %60 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @O2NET_KEEPALIVE_DELAY_MS_DEFAULT, align 4
  %62 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %63 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @O2NM_FENCE_RESET, align 4
  %65 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %66 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %68 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %67, i32 0, i32 0
  store %struct.config_group* %68, %struct.config_group** %9, align 8
  %69 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %70 = bitcast %struct.o2nm_cluster* %69 to %struct.o2nm_node_group*
  store %struct.o2nm_node_group* %70, %struct.o2nm_node_group** @o2nm_single_cluster, align 8
  br label %71

71:                                               ; preds = %32, %31
  %72 = load %struct.config_group*, %struct.config_group** %9, align 8
  %73 = icmp eq %struct.config_group* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %76 = bitcast %struct.o2nm_cluster* %75 to %struct.o2nm_node_group*
  %77 = call i32 @kfree(%struct.o2nm_node_group* %76)
  %78 = load %struct.o2nm_node_group*, %struct.o2nm_node_group** %7, align 8
  %79 = call i32 @kfree(%struct.o2nm_node_group* %78)
  %80 = load %struct.config_group*, %struct.config_group** %8, align 8
  %81 = call i32 @o2hb_free_hb_set(%struct.config_group* %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  %84 = call %struct.config_group* @ERR_PTR(i32 %83)
  store %struct.config_group* %84, %struct.config_group** %9, align 8
  br label %85

85:                                               ; preds = %74, %71
  %86 = load %struct.config_group*, %struct.config_group** %9, align 8
  store %struct.config_group* %86, %struct.config_group** %3, align 8
  br label %87

87:                                               ; preds = %85, %12
  %88 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %88
}

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local %struct.o2nm_node_group* @kzalloc(i32, i32) #1

declare dso_local %struct.config_group* @o2hb_alloc_hb_set(...) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @configfs_add_default_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @kfree(%struct.o2nm_node_group*) #1

declare dso_local i32 @o2hb_free_hb_set(%struct.config_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_cluster_idle_timeout_ms_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_cluster_idle_timeout_ms_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.o2nm_cluster = type { i32, i32 }

@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"o2net: cannot change idle timeout after the first peer has agreed to it.  %d connected peers\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"o2net: idle timeout must be larger than keepalive delay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @o2nm_cluster_idle_timeout_ms_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2nm_cluster_idle_timeout_ms_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.o2nm_cluster*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.config_item*, %struct.config_item** %4, align 8
  %11 = call %struct.o2nm_cluster* @to_o2nm_cluster(%struct.config_item* %10)
  store %struct.o2nm_cluster* %11, %struct.o2nm_cluster** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @o2nm_cluster_attr_write(i8* %12, i64 %13, i32* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %3
  %18 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %7, align 8
  %19 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = call i64 (...) @o2net_num_connected_peers()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @ML_NOTICE, align 4
  %28 = call i64 (...) @o2net_num_connected_peers()
  %29 = call i32 (i32, i8*, ...) @mlog(i32 %27, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %48

32:                                               ; preds = %23, %17
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %7, align 8
  %35 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ule i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @ML_NOTICE, align 4
  %40 = call i32 (i32, i8*, ...) @mlog(i32 %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %47

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %7, align 8
  %46 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47, %26
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster(%struct.config_item*) #1

declare dso_local i32 @o2nm_cluster_attr_write(i8*, i64, i32*) #1

declare dso_local i64 @o2net_num_connected_peers(...) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

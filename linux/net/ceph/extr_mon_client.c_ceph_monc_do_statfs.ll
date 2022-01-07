; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_do_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_do_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ceph_statfs = type { i32 }
%struct.ceph_mon_generic_request = type { %struct.TYPE_10__*, %struct.TYPE_7__, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.ceph_mon_statfs* }
%struct.ceph_mon_statfs = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i8*, i64 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.ceph_statfs* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@CEPH_MSG_STATFS = common dso_local global i32 0, align 4
@CEPH_MSG_STATFS_REPLY = common dso_local global i32 0, align 4
@CEPH_NOPOOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_monc_do_statfs(%struct.ceph_mon_client* %0, i64 %1, %struct.ceph_statfs* %2) #0 {
  %4 = alloca %struct.ceph_mon_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ceph_statfs*, align 8
  %7 = alloca %struct.ceph_mon_generic_request*, align 8
  %8 = alloca %struct.ceph_mon_statfs*, align 8
  %9 = alloca i32, align 4
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ceph_statfs* %2, %struct.ceph_statfs** %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.ceph_mon_generic_request* @alloc_generic_request(%struct.ceph_mon_client* %12, i32 %13)
  store %struct.ceph_mon_generic_request* %14, %struct.ceph_mon_generic_request** %7, align 8
  %15 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %16 = icmp ne %struct.ceph_mon_generic_request* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %98

18:                                               ; preds = %3
  %19 = load i32, i32* @CEPH_MSG_STATFS, align 4
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call i8* @ceph_msg_new(i32 %19, i32 40, i32 %20, i32 1)
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  %23 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %24 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %23, i32 0, i32 0
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %24, align 8
  %25 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %26 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %98

30:                                               ; preds = %18
  %31 = load i32, i32* @CEPH_MSG_STATFS_REPLY, align 4
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call i8* @ceph_msg_new(i32 %31, i32 64, i32 %32, i32 1)
  %34 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %35 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %37 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %98

41:                                               ; preds = %30
  %42 = load %struct.ceph_statfs*, %struct.ceph_statfs** %6, align 8
  %43 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %44 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store %struct.ceph_statfs* %42, %struct.ceph_statfs** %45, align 8
  %46 = call i8* @cpu_to_le16(i32 2)
  %47 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %48 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i8* %46, i8** %51, align 8
  %52 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %53 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %56 = call i32 @register_generic_request(%struct.ceph_mon_generic_request* %55)
  %57 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %58 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.ceph_mon_statfs*, %struct.ceph_mon_statfs** %61, align 8
  store %struct.ceph_mon_statfs* %62, %struct.ceph_mon_statfs** %8, align 8
  %63 = load %struct.ceph_mon_statfs*, %struct.ceph_mon_statfs** %8, align 8
  %64 = getelementptr inbounds %struct.ceph_mon_statfs, %struct.ceph_mon_statfs* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = call i8* @cpu_to_le16(i32 -1)
  %67 = load %struct.ceph_mon_statfs*, %struct.ceph_mon_statfs** %8, align 8
  %68 = getelementptr inbounds %struct.ceph_mon_statfs, %struct.ceph_mon_statfs* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  %70 = load %struct.ceph_mon_statfs*, %struct.ceph_mon_statfs** %8, align 8
  %71 = getelementptr inbounds %struct.ceph_mon_statfs, %struct.ceph_mon_statfs* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %74 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ceph_mon_statfs*, %struct.ceph_mon_statfs** %8, align 8
  %79 = getelementptr inbounds %struct.ceph_mon_statfs, %struct.ceph_mon_statfs* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @CEPH_NOPOOL, align 8
  %82 = icmp ne i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load %struct.ceph_mon_statfs*, %struct.ceph_mon_statfs** %8, align 8
  %85 = getelementptr inbounds %struct.ceph_mon_statfs, %struct.ceph_mon_statfs* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @cpu_to_le64(i64 %86)
  %88 = load %struct.ceph_mon_statfs*, %struct.ceph_mon_statfs** %8, align 8
  %89 = getelementptr inbounds %struct.ceph_mon_statfs, %struct.ceph_mon_statfs* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %91 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %92 = call i32 @send_generic_request(%struct.ceph_mon_client* %90, %struct.ceph_mon_generic_request* %91)
  %93 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %4, align 8
  %94 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %97 = call i32 @wait_generic_request(%struct.ceph_mon_generic_request* %96)
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %41, %40, %29, %17
  %99 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %7, align 8
  %100 = call i32 @put_generic_request(%struct.ceph_mon_generic_request* %99)
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local %struct.ceph_mon_generic_request* @alloc_generic_request(%struct.ceph_mon_client*, i32) #1

declare dso_local i8* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @register_generic_request(%struct.ceph_mon_generic_request*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @send_generic_request(%struct.ceph_mon_client*, %struct.ceph_mon_generic_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_generic_request(%struct.ceph_mon_generic_request*) #1

declare dso_local i32 @put_generic_request(%struct.ceph_mon_generic_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

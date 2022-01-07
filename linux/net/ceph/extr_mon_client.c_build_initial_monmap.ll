; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_build_initial_monmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_build_initial_monmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.ceph_entity_addr }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ceph_entity_addr = type { i64 }
%struct.TYPE_6__ = type { %struct.ceph_options* }
%struct.ceph_options = type { i32, %struct.ceph_entity_addr* }

@mon_inst = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_ENTITY_TYPE_MON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mon_client*)* @build_initial_monmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_initial_monmap(%struct.ceph_mon_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_mon_client*, align 8
  %4 = alloca %struct.ceph_options*, align 8
  %5 = alloca %struct.ceph_entity_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %3, align 8
  %8 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %9 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.ceph_options*, %struct.ceph_options** %11, align 8
  store %struct.ceph_options* %12, %struct.ceph_options** %4, align 8
  %13 = load %struct.ceph_options*, %struct.ceph_options** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %13, i32 0, i32 1
  %15 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %14, align 8
  store %struct.ceph_entity_addr* %15, %struct.ceph_entity_addr** %5, align 8
  %16 = load %struct.ceph_options*, %struct.ceph_options** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = load i32, i32* @mon_inst, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @struct_size(%struct.TYPE_9__* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.TYPE_9__* @kzalloc(i32 %24, i32 %25)
  %27 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %28 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %27, i32 0, i32 0
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %28, align 8
  %29 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %30 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %99

36:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %90, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %43 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %51, i64 %53
  %55 = bitcast %struct.ceph_entity_addr* %50 to i8*
  %56 = bitcast %struct.ceph_entity_addr* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %58 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @CEPH_ENTITY_TYPE_MON, align 4
  %68 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %69 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 %67, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @cpu_to_le64(i32 %78)
  %80 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %81 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %79, i32* %89, align 8
  br label %90

90:                                               ; preds = %41
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %37

93:                                               ; preds = %37
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %3, align 8
  %96 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %33
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_9__* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.TYPE_9__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

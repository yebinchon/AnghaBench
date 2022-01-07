; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_writepages.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i32 }
%struct.ceph_file_layout = type { i32 }
%struct.ceph_snap_context = type { i32 }
%struct.timespec64 = type { i32 }
%struct.page = type { i32 }
%struct.ceph_vino = type { i32 }
%struct.ceph_osd_request = type { %struct.timespec64 }

@PAGE_MASK = common dso_local global i32 0, align 4
@CEPH_OSD_OP_WRITE = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"writepages %llu~%llu (%llu bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"writepages result %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_osdc_writepages(%struct.ceph_osd_client* %0, i32 %1, %struct.ceph_file_layout* %2, %struct.ceph_snap_context* %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.timespec64* %8, %struct.page** %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ceph_vino, align 4
  %14 = alloca %struct.ceph_osd_client*, align 8
  %15 = alloca %struct.ceph_file_layout*, align 8
  %16 = alloca %struct.ceph_snap_context*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.timespec64*, align 8
  %22 = alloca %struct.page**, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ceph_osd_request*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %13, i32 0, i32 0
  store i32 %1, i32* %27, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %14, align 8
  store %struct.ceph_file_layout* %2, %struct.ceph_file_layout** %15, align 8
  store %struct.ceph_snap_context* %3, %struct.ceph_snap_context** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store %struct.timespec64* %8, %struct.timespec64** %21, align 8
  store %struct.page** %9, %struct.page*** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* @PAGE_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %26, align 4
  %32 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %14, align 8
  %33 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %15, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* @CEPH_OSD_OP_WRITE, align 4
  %36 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %37 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %16, align 8
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %20, align 4
  %40 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %13, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.ceph_osd_request* @ceph_osdc_new_request(%struct.ceph_osd_client* %32, %struct.ceph_file_layout* %33, i32 %41, i32 %34, i32* %18, i32 0, i32 1, i32 %35, i32 %36, %struct.ceph_snap_context* %37, i32 %38, i32 %39, i32 1)
  store %struct.ceph_osd_request* %42, %struct.ceph_osd_request** %24, align 8
  %43 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %24, align 8
  %44 = call i64 @IS_ERR(%struct.ceph_osd_request* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %11
  %47 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %24, align 8
  %48 = call i32 @PTR_ERR(%struct.ceph_osd_request* %47)
  store i32 %48, i32* %12, align 4
  br label %84

49:                                               ; preds = %11
  %50 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %24, align 8
  %51 = load %struct.page**, %struct.page*** %22, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %26, align 4
  %54 = call i32 @osd_req_op_extent_osd_data_pages(%struct.ceph_osd_request* %50, i32 0, %struct.page** %51, i32 %52, i32 %53, i32 0, i32 0)
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %24, align 8
  %60 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %59, i32 0, i32 0
  %61 = load %struct.timespec64*, %struct.timespec64** %21, align 8
  %62 = bitcast %struct.timespec64* %60 to i8*
  %63 = bitcast %struct.timespec64* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %14, align 8
  %65 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %24, align 8
  %66 = call i32 @ceph_osdc_start_request(%struct.ceph_osd_client* %64, %struct.ceph_osd_request* %65, i32 1)
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %25, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %49
  %70 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %14, align 8
  %71 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %24, align 8
  %72 = call i32 @ceph_osdc_wait_request(%struct.ceph_osd_client* %70, %struct.ceph_osd_request* %71)
  store i32 %72, i32* %25, align 4
  br label %73

73:                                               ; preds = %69, %49
  %74 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %24, align 8
  %75 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %74)
  %76 = load i32, i32* %25, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %18, align 4
  store i32 %79, i32* %25, align 4
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* %25, align 4
  %82 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %25, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %80, %46
  %85 = load i32, i32* %12, align 4
  ret i32 %85
}

declare dso_local %struct.ceph_osd_request* @ceph_osdc_new_request(%struct.ceph_osd_client*, %struct.ceph_file_layout*, i32, i32, i32*, i32, i32, i32, i32, %struct.ceph_snap_context*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @osd_req_op_extent_osd_data_pages(%struct.ceph_osd_request*, i32, %struct.page**, i32, i32, i32, i32) #1

declare dso_local i32 @dout(i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ceph_osdc_start_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_wait_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

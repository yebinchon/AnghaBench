; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i32 }
%struct.ceph_file_layout = type { i32 }
%struct.page = type { i32 }
%struct.ceph_vino = type { i32, i32 }
%struct.ceph_osd_request = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"readpages on ino %llx.%llx on %llu~%llu\0A\00", align 1
@CEPH_OSD_OP_READ = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"readpages  final extent is %llu~%llu (%llu bytes align %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"readpages result %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_osdc_readpages(%struct.ceph_osd_client* %0, i64 %1, %struct.ceph_file_layout* %2, i32 %3, i32* %4, i32 %5, i32 %6, %struct.page** %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ceph_vino, align 4
  %13 = alloca %struct.ceph_osd_client*, align 8
  %14 = alloca %struct.ceph_file_layout*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.page**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ceph_osd_request*, align 8
  %23 = alloca i32, align 4
  %24 = bitcast %struct.ceph_vino* %12 to i64*
  store i64 %1, i64* %24, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %13, align 8
  store %struct.ceph_file_layout* %2, %struct.ceph_file_layout** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store %struct.page** %7, %struct.page*** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %12, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %12, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28, i32 %29, i32 %31)
  %33 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %13, align 8
  %34 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %14, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* @CEPH_OSD_OP_READ, align 4
  %38 = load i32, i32* @CEPH_OSD_FLAG_READ, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %18, align 4
  %41 = bitcast %struct.ceph_vino* %12 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = call %struct.ceph_osd_request* @ceph_osdc_new_request(%struct.ceph_osd_client* %33, %struct.ceph_file_layout* %34, i64 %42, i32 %35, i32* %36, i32 0, i32 1, i32 %37, i32 %38, i32* null, i32 %39, i32 %40, i32 0)
  store %struct.ceph_osd_request* %43, %struct.ceph_osd_request** %22, align 8
  %44 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %45 = call i64 @IS_ERR(%struct.ceph_osd_request* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %10
  %48 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %49 = call i32 @PTR_ERR(%struct.ceph_osd_request* %48)
  store i32 %49, i32* %11, align 4
  br label %79

50:                                               ; preds = %10
  %51 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %52 = load %struct.page**, %struct.page*** %19, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %21, align 4
  %56 = call i32 @osd_req_op_extent_osd_data_pages(%struct.ceph_osd_request* %51, i32 0, %struct.page** %52, i32 %54, i32 %55, i32 0, i32 0)
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %21, align 4
  %63 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59, i32 %61, i32 %62)
  %64 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %13, align 8
  %65 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %66 = call i32 @ceph_osdc_start_request(%struct.ceph_osd_client* %64, %struct.ceph_osd_request* %65, i32 0)
  store i32 %66, i32* %23, align 4
  %67 = load i32, i32* %23, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %50
  %70 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %13, align 8
  %71 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %72 = call i32 @ceph_osdc_wait_request(%struct.ceph_osd_client* %70, %struct.ceph_osd_request* %71)
  store i32 %72, i32* %23, align 4
  br label %73

73:                                               ; preds = %69, %50
  %74 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %22, align 8
  %75 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %74)
  %76 = load i32, i32* %23, align 4
  %77 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %23, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %73, %47
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @dout(i8*, i32, ...) #1

declare dso_local %struct.ceph_osd_request* @ceph_osdc_new_request(%struct.ceph_osd_client*, %struct.ceph_file_layout*, i64, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @osd_req_op_extent_osd_data_pages(%struct.ceph_osd_request*, i32, %struct.page**, i32, i32, i32, i32) #1

declare dso_local i32 @ceph_osdc_start_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_wait_request(%struct.ceph_osd_client*, %struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

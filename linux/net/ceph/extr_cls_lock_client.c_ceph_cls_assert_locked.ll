; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_cls_lock_client.c_ceph_cls_assert_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_cls_lock_client.c_ceph_cls_assert_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }
%struct.page = type { i32 }

@CEPH_ENCODING_START_BLK_LEN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"assert_locked\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_cls_assert_locked(%struct.ceph_osd_request* %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_osd_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = add i64 %33, 4
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = add i64 %37, 4
  %39 = add i64 %38, 4
  %40 = load i32, i32* @CEPH_ENCODING_START_BLK_LEN, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %6
  %48 = load i32, i32* @E2BIG, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %104

50:                                               ; preds = %6
  %51 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @osd_req_op_cls_init(%struct.ceph_osd_request* %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %53, i32* %21, align 4
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %21, align 4
  store i32 %57, i32* %7, align 4
  br label %104

58:                                               ; preds = %50
  %59 = load i32, i32* @GFP_NOIO, align 4
  %60 = call %struct.page** @ceph_alloc_page_vector(i32 1, i32 %59)
  store %struct.page** %60, %struct.page*** %18, align 8
  %61 = load %struct.page**, %struct.page*** %18, align 8
  %62 = call i64 @IS_ERR(%struct.page** %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.page**, %struct.page*** %18, align 8
  %66 = call i32 @PTR_ERR(%struct.page** %65)
  store i32 %66, i32* %7, align 4
  br label %104

67:                                               ; preds = %58
  %68 = load %struct.page**, %struct.page*** %18, align 8
  %69 = getelementptr inbounds %struct.page*, %struct.page** %68, i64 0
  %70 = load %struct.page*, %struct.page** %69, align 8
  %71 = call i8* @page_address(%struct.page* %70)
  store i8* %71, i8** %19, align 8
  %72 = load i8*, i8** %19, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %72, i64 %74
  store i8* %75, i8** %20, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @CEPH_ENCODING_START_BLK_LEN, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i32 @ceph_start_encoding(i8** %19, i32 1, i32 1, i32 %78)
  %80 = load i8*, i8** %20, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @ceph_encode_string(i8** %19, i8* %80, i8* %81, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ceph_encode_8(i8** %19, i32 %84)
  %86 = load i8*, i8** %20, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @ceph_encode_string(i8** %19, i8* %86, i8* %87, i32 %88)
  %90 = load i8*, i8** %20, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @ceph_encode_string(i8** %19, i8* %90, i8* %91, i32 %92)
  %94 = load i8*, i8** %19, align 8
  %95 = load i8*, i8** %20, align 8
  %96 = icmp ne i8* %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @WARN_ON(i32 %97)
  %99 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.page**, %struct.page*** %18, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @osd_req_op_cls_request_data_pages(%struct.ceph_osd_request* %99, i32 %100, %struct.page** %101, i32 %102, i32 0, i32 0, i32 1)
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %67, %64, %56, %47
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @osd_req_op_cls_init(%struct.ceph_osd_request*, i32, i8*, i8*) #1

declare dso_local %struct.page** @ceph_alloc_page_vector(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @ceph_start_encoding(i8**, i32, i32, i32) #1

declare dso_local i32 @ceph_encode_string(i8**, i8*, i8*, i32) #1

declare dso_local i32 @ceph_encode_8(i8**, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @osd_req_op_cls_request_data_pages(%struct.ceph_osd_request*, i32, %struct.page**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

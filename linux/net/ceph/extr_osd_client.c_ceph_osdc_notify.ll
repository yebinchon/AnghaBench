; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_client = type { i32 }
%struct.ceph_object_id = type { i32 }
%struct.ceph_object_locator = type { i32 }
%struct.page = type { i32 }
%struct.ceph_osd_linger_request = type { i64*, i32, %struct.TYPE_2__, %struct.page*** }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_READ = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@notify = common dso_local global i32 0, align 4
@response_data = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"lreq %p failed to initiate notify %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_osdc_notify(%struct.ceph_osd_client* %0, %struct.ceph_object_id* %1, %struct.ceph_object_locator* %2, i8* %3, i32 %4, i32 %5, %struct.page*** %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_osd_client*, align 8
  %11 = alloca %struct.ceph_object_id*, align 8
  %12 = alloca %struct.ceph_object_locator*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page***, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.ceph_osd_linger_request*, align 8
  %19 = alloca %struct.page**, align 8
  %20 = alloca i32, align 4
  store %struct.ceph_osd_client* %0, %struct.ceph_osd_client** %10, align 8
  store %struct.ceph_object_id* %1, %struct.ceph_object_id** %11, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.page*** %6, %struct.page**** %16, align 8
  store i64* %7, i64** %17, align 8
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.page***, %struct.page**** %16, align 8
  %27 = icmp ne %struct.page*** %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load %struct.page***, %struct.page**** %16, align 8
  store %struct.page** null, %struct.page*** %29, align 8
  %30 = load i64*, i64** %17, align 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %8
  %32 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %10, align 8
  %33 = call %struct.ceph_osd_linger_request* @linger_alloc(%struct.ceph_osd_client* %32)
  store %struct.ceph_osd_linger_request* %33, %struct.ceph_osd_linger_request** %18, align 8
  %34 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %35 = icmp ne %struct.ceph_osd_linger_request* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %130

39:                                               ; preds = %31
  %40 = load %struct.page***, %struct.page**** %16, align 8
  %41 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %42 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %41, i32 0, i32 3
  store %struct.page*** %40, %struct.page**** %42, align 8
  %43 = load i64*, i64** %17, align 8
  %44 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %45 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %44, i32 0, i32 0
  store i64* %43, i64** %45, align 8
  %46 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %47 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load %struct.ceph_object_id*, %struct.ceph_object_id** %11, align 8
  %50 = call i32 @ceph_oid_copy(i32* %48, %struct.ceph_object_id* %49)
  %51 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %52 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %12, align 8
  %55 = call i32 @ceph_oloc_copy(i32* %53, %struct.ceph_object_locator* %54)
  %56 = load i32, i32* @CEPH_OSD_FLAG_READ, align 4
  %57 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %58 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %61 = call i32 @alloc_linger_request(%struct.ceph_osd_linger_request* %60)
  %62 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %63 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %65 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %39
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %20, align 4
  br label %126

71:                                               ; preds = %39
  %72 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %73 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @osd_req_op_notify_init(i32 %74, i32 0, i32 0, i32 1, i32 %75, i8* %76, i32 %77)
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %126

82:                                               ; preds = %71
  %83 = load i32, i32* @GFP_NOIO, align 4
  %84 = call %struct.page** @ceph_alloc_page_vector(i32 1, i32 %83)
  store %struct.page** %84, %struct.page*** %19, align 8
  %85 = load %struct.page**, %struct.page*** %19, align 8
  %86 = call i64 @IS_ERR(%struct.page** %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.page**, %struct.page*** %19, align 8
  %90 = call i32 @PTR_ERR(%struct.page** %89)
  store i32 %90, i32* %20, align 4
  br label %126

91:                                               ; preds = %82
  %92 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %93 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @notify, align 4
  %96 = load i32, i32* @response_data, align 4
  %97 = call i32 @osd_req_op_data(i32 %94, i32 0, i32 %95, i32 %96)
  %98 = load %struct.page**, %struct.page*** %19, align 8
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = call i32 @ceph_osd_data_pages_init(i32 %97, %struct.page** %98, i32 %99, i32 0, i32 0, i32 1)
  %101 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %102 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @GFP_NOIO, align 4
  %105 = call i32 @ceph_osdc_alloc_messages(i32 %103, i32 %104)
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %126

109:                                              ; preds = %91
  %110 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %111 = call i32 @linger_submit(%struct.ceph_osd_linger_request* %110)
  %112 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %113 = call i32 @linger_reg_commit_wait(%struct.ceph_osd_linger_request* %112)
  store i32 %113, i32* %20, align 4
  %114 = load i32, i32* %20, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %118 = call i32 @linger_notify_finish_wait(%struct.ceph_osd_linger_request* %117)
  store i32 %118, i32* %20, align 4
  br label %123

119:                                              ; preds = %109
  %120 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %121 = load i32, i32* %20, align 4
  %122 = call i32 @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.ceph_osd_linger_request* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %125 = call i32 @linger_cancel(%struct.ceph_osd_linger_request* %124)
  br label %126

126:                                              ; preds = %123, %108, %88, %81, %68
  %127 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %18, align 8
  %128 = call i32 @linger_put(%struct.ceph_osd_linger_request* %127)
  %129 = load i32, i32* %20, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %126, %36
  %131 = load i32, i32* %9, align 4
  ret i32 %131
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ceph_osd_linger_request* @linger_alloc(%struct.ceph_osd_client*) #1

declare dso_local i32 @ceph_oid_copy(i32*, %struct.ceph_object_id*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, %struct.ceph_object_locator*) #1

declare dso_local i32 @alloc_linger_request(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @osd_req_op_notify_init(i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local %struct.page** @ceph_alloc_page_vector(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i32 @ceph_osd_data_pages_init(i32, %struct.page**, i32, i32, i32, i32) #1

declare dso_local i32 @osd_req_op_data(i32, i32, i32, i32) #1

declare dso_local i32 @ceph_osdc_alloc_messages(i32, i32) #1

declare dso_local i32 @linger_submit(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @linger_reg_commit_wait(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @linger_notify_finish_wait(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @dout(i8*, %struct.ceph_osd_linger_request*, i32) #1

declare dso_local i32 @linger_cancel(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @linger_put(%struct.ceph_osd_linger_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_prepare_bpf_obj.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_prepare_bpf_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 }
%struct.bpf_map = type { i32 }
%struct.bpf_object_open_attr = type { i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"test_select_reuseport_kern.o\00", align 1
@BPF_PROG_TYPE_SK_REUSEPORT = common dso_local global i32 0, align 4
@obj = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"open test_select_reuseport_kern.o\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"obj:%p PTR_ERR(obj):%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"get first bpf_program\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"!prog\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"outer_map\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"find outer_map\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"!map\0A\00", align 1
@outer_map = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"reuse outer_map\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"err:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"load bpf_object\00", align 1
@select_by_skb_data_prog = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"get prog fd\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"select_by_skb_data_prog:%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"result_map\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"find result_map\00", align 1
@result_map = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"get result_map fd\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"result_map:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"tmp_index_ovr_map\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"find tmp_index_ovr_map\00", align 1
@tmp_index_ovr_map = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [25 x i8] c"get tmp_index_ovr_map fd\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"tmp_index_ovr_map:%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"linum_map\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"find linum_map\00", align 1
@linum_map = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"get linum_map fd\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"linum_map:%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"data_check_map\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"find data_check_map\00", align 1
@data_check_map = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [22 x i8] c"get data_check_map fd\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"data_check_map:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepare_bpf_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_bpf_obj() #0 {
  %1 = alloca %struct.bpf_program*, align 8
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_object_open_attr, align 8
  %5 = getelementptr inbounds %struct.bpf_object_open_attr, %struct.bpf_object_open_attr* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct.bpf_object_open_attr, %struct.bpf_object_open_attr* %4, i32 0, i32 1
  %7 = load i32, i32* @BPF_PROG_TYPE_SK_REUSEPORT, align 4
  store i32 %7, i32* %6, align 8
  %8 = call i32 @bpf_object__open_xattr(%struct.bpf_object_open_attr* %4)
  store i32 %8, i32* @obj, align 4
  %9 = load i32, i32* @obj, align 4
  %10 = call i32 @IS_ERR_OR_NULL(i32 %9)
  %11 = load i32, i32* @obj, align 4
  %12 = load i32, i32* @obj, align 4
  %13 = call i32 @PTR_ERR(i32 %12)
  %14 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load i32, i32* @obj, align 4
  %16 = call %struct.bpf_program* @bpf_program__next(i32* null, i32 %15)
  store %struct.bpf_program* %16, %struct.bpf_program** %1, align 8
  %17 = load %struct.bpf_program*, %struct.bpf_program** %1, align 8
  %18 = icmp ne %struct.bpf_program* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %22 = load %struct.bpf_program*, %struct.bpf_program** %1, align 8
  %23 = getelementptr inbounds %struct.bpf_object_open_attr, %struct.bpf_object_open_attr* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bpf_program__set_type(%struct.bpf_program* %22, i32 %24)
  %26 = load i32, i32* @obj, align 4
  %27 = call %struct.bpf_map* @bpf_object__find_map_by_name(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store %struct.bpf_map* %27, %struct.bpf_map** %2, align 8
  %28 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %29 = icmp ne %struct.bpf_map* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %33 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %34 = load i32, i32* @outer_map, align 4
  %35 = call i32 @bpf_map__reuse_fd(%struct.bpf_map* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @obj, align 4
  %40 = call i32 @bpf_object__load(i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %42)
  %44 = load %struct.bpf_program*, %struct.bpf_program** %1, align 8
  %45 = call i32 @bpf_program__fd(%struct.bpf_program* %44)
  store i32 %45, i32* @select_by_skb_data_prog, align 4
  %46 = load i32, i32* @select_by_skb_data_prog, align 4
  %47 = icmp eq i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @select_by_skb_data_prog, align 4
  %50 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @obj, align 4
  %52 = call %struct.bpf_map* @bpf_object__find_map_by_name(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  store %struct.bpf_map* %52, %struct.bpf_map** %2, align 8
  %53 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %54 = icmp ne %struct.bpf_map* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %58 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %59 = call i32 @bpf_map__fd(%struct.bpf_map* %58)
  store i32 %59, i32* @result_map, align 4
  %60 = load i32, i32* @result_map, align 4
  %61 = icmp eq i32 %60, -1
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @result_map, align 4
  %64 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @obj, align 4
  %66 = call %struct.bpf_map* @bpf_object__find_map_by_name(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  store %struct.bpf_map* %66, %struct.bpf_map** %2, align 8
  %67 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %68 = icmp ne %struct.bpf_map* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %72 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %73 = call i32 @bpf_map__fd(%struct.bpf_map* %72)
  store i32 %73, i32* @tmp_index_ovr_map, align 4
  %74 = load i32, i32* @tmp_index_ovr_map, align 4
  %75 = icmp eq i32 %74, -1
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* @tmp_index_ovr_map, align 4
  %78 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @obj, align 4
  %80 = call %struct.bpf_map* @bpf_object__find_map_by_name(i32 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  store %struct.bpf_map* %80, %struct.bpf_map** %2, align 8
  %81 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %82 = icmp ne %struct.bpf_map* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %86 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %87 = call i32 @bpf_map__fd(%struct.bpf_map* %86)
  store i32 %87, i32* @linum_map, align 4
  %88 = load i32, i32* @linum_map, align 4
  %89 = icmp eq i32 %88, -1
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* @linum_map, align 4
  %92 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @obj, align 4
  %94 = call %struct.bpf_map* @bpf_object__find_map_by_name(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  store %struct.bpf_map* %94, %struct.bpf_map** %2, align 8
  %95 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %96 = icmp ne %struct.bpf_map* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %100 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  %101 = call i32 @bpf_map__fd(%struct.bpf_map* %100)
  store i32 %101, i32* @data_check_map, align 4
  %102 = load i32, i32* @data_check_map, align 4
  %103 = icmp eq i32 %102, -1
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* @data_check_map, align 4
  %106 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i32 %105)
  ret void
}

declare dso_local i32 @bpf_object__open_xattr(%struct.bpf_object_open_attr*) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, ...) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.bpf_program* @bpf_program__next(i32*, i32) #1

declare dso_local i32 @bpf_program__set_type(%struct.bpf_program*, i32) #1

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(i32, i8*) #1

declare dso_local i32 @bpf_map__reuse_fd(%struct.bpf_map*, i32) #1

declare dso_local i32 @bpf_object__load(i32) #1

declare dso_local i32 @bpf_program__fd(%struct.bpf_program*) #1

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

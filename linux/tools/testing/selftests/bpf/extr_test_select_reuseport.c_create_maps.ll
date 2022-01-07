; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_create_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_create_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_create_map_attr = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"reuseport_array\00", align 1
@BPF_MAP_TYPE_REUSEPORT_SOCKARRAY = common dso_local global i32 0, align 4
@REUSEPORT_ARRAY_SIZE = common dso_local global i32 0, align 4
@reuseport_array = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"creating reuseport_array\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"reuseport_array:%d errno:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"outer_map\00", align 1
@BPF_MAP_TYPE_ARRAY_OF_MAPS = common dso_local global i32 0, align 4
@outer_map = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"creating outer_map\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"outer_map:%d errno:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_maps() #0 {
  %1 = alloca %struct.bpf_create_map_attr, align 8
  %2 = bitcast %struct.bpf_create_map_attr* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 32, i1 false)
  %3 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* @BPF_MAP_TYPE_REUSEPORT_SOCKARRAY, align 4
  %5 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 5
  store i32 %4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 1
  store i32 4, i32* %6, align 8
  %7 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 2
  store i32 4, i32* %7, align 4
  %8 = load i32, i32* @REUSEPORT_ARRAY_SIZE, align 4
  %9 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 3
  store i32 %8, i32* %9, align 8
  %10 = call i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %1)
  store i32 %10, i32* @reuseport_array, align 4
  %11 = load i32, i32* @reuseport_array, align 4
  %12 = icmp eq i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @reuseport_array, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @CHECK(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @BPF_MAP_TYPE_ARRAY_OF_MAPS, align 4
  %19 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 1
  store i32 4, i32* %20, align 8
  %21 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 2
  store i32 4, i32* %21, align 4
  %22 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 3
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @reuseport_array, align 4
  %24 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %1, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = call i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %1)
  store i32 %25, i32* @outer_map, align 4
  %26 = load i32, i32* @outer_map, align 4
  %27 = icmp eq i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @outer_map, align 4
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @CHECK(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %29, i32 %30)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr*) #2

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

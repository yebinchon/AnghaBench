; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_load_attr = type { i8*, i32, i32 }
%struct.bpf_program = type { i32 }
%struct.bpf_object = type { i32 }
%struct.bpf_map = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"test_sock_fields_kern.o\00", align 1
@BPF_F_TEST_RND_HI32 = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SKB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"setup_cgroup_environment()\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"err:%d errno:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@TEST_CGROUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"create_and_get_cgroup()\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"cgroup_fd:%d errno:%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"join_cgroup\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"bpf_prog_load_xattr()\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"err:%d\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"cgroup_skb/ingress\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"bpf_object__find_program_by_title(cgroup_skb/ingress)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@BPF_CGROUP_INET_EGRESS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"bpf_prog_attach(CPF_CGROUP_INET_EGRESS)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"err:%d errno%d\00", align 1
@BPF_CGROUP_INET_INGRESS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"bpf_prog_attach(CPF_CGROUP_INET_INGRESS)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"addr_map\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"cannot find addr_map\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@addr_map_fd = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"sock_result_map\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"cannot find sock_result_map\00", align 1
@sk_map_fd = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"tcp_sock_result_map\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"cannot find tcp_sock_result_map\00", align 1
@tp_map_fd = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"linum_map\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"cannot find linum_map\00", align 1
@linum_map_fd = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"sk_pkt_out_cnt\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"cannot find sk_pkt_out_cnt\00", align 1
@sk_pkt_out_cnt_fd = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [17 x i8] c"sk_pkt_out_cnt10\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"cannot find sk_pkt_out_cnt10\00", align 1
@sk_pkt_out_cnt10_fd = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_prog_load_attr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_program*, align 8
  %12 = alloca %struct.bpf_object*, align 8
  %13 = alloca %struct.bpf_map*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 1
  %16 = load i32, i32* @BPF_F_TEST_RND_HI32, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 2
  %18 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SKB, align 4
  store i32 %18, i32* %17, align 4
  %19 = call i32 (...) @setup_cgroup_environment()
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %22)
  %24 = call i32 @atexit(i32 (...)* @cleanup_cgroup_environment)
  %25 = load i32, i32* @TEST_CGROUP, align 4
  %26 = call i32 @create_and_get_cgroup(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, -1
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @TEST_CGROUP, align 4
  %34 = call i32 @join_cgroup(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  %39 = call i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %6, %struct.bpf_object** %12, i32* %8)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %44 = call %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store %struct.bpf_program* %44, %struct.bpf_program** %11, align 8
  %45 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %46 = icmp ne %struct.bpf_program* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %50 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %51 = call i32 @bpf_program__fd(%struct.bpf_program* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %55 = call i32 @bpf_prog_attach(i32 %52, i32 %53, i32 %54, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, -1
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @BPF_CGROUP_INET_INGRESS, align 4
  %65 = call i32 @bpf_prog_attach(i32 %62, i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, -1
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %75 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  store %struct.bpf_map* %75, %struct.bpf_map** %13, align 8
  %76 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %77 = icmp ne %struct.bpf_map* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %81 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %82 = call i8* @bpf_map__fd(%struct.bpf_map* %81)
  store i8* %82, i8** @addr_map_fd, align 8
  %83 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %84 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  store %struct.bpf_map* %84, %struct.bpf_map** %13, align 8
  %85 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %86 = icmp ne %struct.bpf_map* %85, null
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %90 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %91 = call i8* @bpf_map__fd(%struct.bpf_map* %90)
  store i8* %91, i8** @sk_map_fd, align 8
  %92 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %93 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  store %struct.bpf_map* %93, %struct.bpf_map** %13, align 8
  %94 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %95 = icmp ne %struct.bpf_map* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %99 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %100 = call i8* @bpf_map__fd(%struct.bpf_map* %99)
  store i8* %100, i8** @tp_map_fd, align 8
  %101 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %102 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  store %struct.bpf_map* %102, %struct.bpf_map** %13, align 8
  %103 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %104 = icmp ne %struct.bpf_map* %103, null
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %108 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %109 = call i8* @bpf_map__fd(%struct.bpf_map* %108)
  store i8* %109, i8** @linum_map_fd, align 8
  %110 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %111 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  store %struct.bpf_map* %111, %struct.bpf_map** %13, align 8
  %112 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %113 = icmp ne %struct.bpf_map* %112, null
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %117 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %118 = call i8* @bpf_map__fd(%struct.bpf_map* %117)
  store i8* %118, i8** @sk_pkt_out_cnt_fd, align 8
  %119 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %120 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  store %struct.bpf_map* %120, %struct.bpf_map** %13, align 8
  %121 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %122 = icmp ne %struct.bpf_map* %121, null
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %126 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %127 = call i8* @bpf_map__fd(%struct.bpf_map* %126)
  store i8* %127, i8** @sk_pkt_out_cnt10_fd, align 8
  %128 = call i32 (...) @test()
  %129 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %130 = call i32 @bpf_object__close(%struct.bpf_object* %129)
  %131 = call i32 (...) @cleanup_cgroup_environment()
  %132 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @setup_cgroup_environment(...) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, ...) #1

declare dso_local i32 @atexit(i32 (...)*) #1

declare dso_local i32 @cleanup_cgroup_environment(...) #1

declare dso_local i32 @create_and_get_cgroup(i32) #1

declare dso_local i32 @join_cgroup(i32) #1

declare dso_local i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #1

declare dso_local %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object*, i8*) #1

declare dso_local i32 @bpf_program__fd(%struct.bpf_program*) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object*, i8*) #1

declare dso_local i8* @bpf_map__fd(%struct.bpf_map*) #1

declare dso_local i32 @test(...) #1

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_inherit.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_inherit.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_load_attr = type { i8* }
%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"./sockopt_inherit.o\00", align 1
@__const.run_test.attr = private unnamed_addr constant %struct.bpf_prog_load_attr { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"cgroup/getsockopt\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cgroup/setsockopt\00", align 1
@server_thread = common dso_local global i32 0, align 4
@server_started_mtx = common dso_local global i32 0, align 4
@server_started = common dso_local global i32 0, align 4
@CUSTOM_INHERIT1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@CUSTOM_INHERIT2 = common dso_local global i32 0, align 4
@CUSTOM_LISTENER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_prog_load_attr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = bitcast %struct.bpf_prog_load_attr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.bpf_prog_load_attr* @__const.run_test.attr to i8*), i64 8, i1 false)
  store i32 -1, i32* %4, align 4
  %12 = call i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %3, %struct.bpf_object** %6, i32* %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call i64 @CHECK_FAIL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %88

17:                                               ; preds = %1
  %18 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @prog_attach(%struct.bpf_object* %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @CHECK_FAIL(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %85

25:                                               ; preds = %17
  %26 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @prog_attach(%struct.bpf_object* %26, i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @CHECK_FAIL(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %85

33:                                               ; preds = %25
  %34 = call i32 (...) @start_server()
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @CHECK_FAIL(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %85

41:                                               ; preds = %33
  %42 = load i32, i32* @server_thread, align 4
  %43 = bitcast i32* %4 to i8*
  %44 = call i32 @pthread_create(i32* %8, i32* null, i32 %42, i8* %43)
  %45 = call i64 @CHECK_FAIL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %82

48:                                               ; preds = %41
  %49 = call i32 @pthread_mutex_lock(i32* @server_started_mtx)
  %50 = call i32 @pthread_cond_wait(i32* @server_started, i32* @server_started_mtx)
  %51 = call i32 @pthread_mutex_unlock(i32* @server_started_mtx)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @connect_to_server(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i64 @CHECK_FAIL(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %82

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @CUSTOM_INHERIT1, align 4
  %63 = call i32 @verify_sockopt(i32 %61, i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %64 = call i64 @CHECK_FAIL(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @CUSTOM_INHERIT2, align 4
  %67 = call i32 @verify_sockopt(i32 %65, i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %68 = call i64 @CHECK_FAIL(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @CUSTOM_LISTENER, align 4
  %71 = call i32 @verify_sockopt(i32 %69, i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %72 = call i64 @CHECK_FAIL(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @pthread_join(i32 %73, i8** %7)
  %75 = load i8*, i8** %7, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @CHECK_FAIL(i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @close(i32 %80)
  br label %82

82:                                               ; preds = %60, %59, %47
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @close(i32 %83)
  br label %85

85:                                               ; preds = %82, %40, %32, %24
  %86 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %87 = call i32 @bpf_object__close(%struct.bpf_object* %86)
  br label %88

88:                                               ; preds = %85, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local i64 @CHECK_FAIL(i32) #2

declare dso_local i32 @prog_attach(%struct.bpf_object*, i32, i8*) #2

declare dso_local i32 @start_server(...) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @connect_to_server(i32) #2

declare dso_local i32 @verify_sockopt(i32, i32, i8*, i32) #2

declare dso_local i32 @pthread_join(i32, i8**) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_multi.c_test_sockopt_multi.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_multi.c_test_sockopt_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_load_attr = type { i8* }
%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"./sockopt_multi.o\00", align 1
@__const.test_sockopt_multi.attr = private unnamed_addr constant %struct.bpf_prog_load_attr { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"/parent\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/parent/child\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_sockopt_multi() #0 {
  %1 = alloca %struct.bpf_prog_load_attr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.bpf_prog_load_attr* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.bpf_prog_load_attr* @__const.test_sockopt_multi.attr to i8*), i64 8, i1 false)
  store i32 -1, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  store %struct.bpf_object* null, %struct.bpf_object** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %9 = call i32 @test__join_cgroup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @CHECK_FAIL(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %53

16:                                               ; preds = %0
  %17 = call i32 @test__join_cgroup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @CHECK_FAIL(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %53

24:                                               ; preds = %16
  %25 = call i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %1, %struct.bpf_object** %4, i32* %7)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @CHECK_FAIL(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %53

30:                                               ; preds = %24
  %31 = load i32, i32* @AF_INET, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = call i32 @socket(i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @CHECK_FAIL(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %53

40:                                               ; preds = %30
  %41 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @run_getsockopt_test(%struct.bpf_object* %41, i32 %42, i32 %43, i32 %44)
  %46 = call i64 @CHECK_FAIL(i32 %45)
  %47 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @run_setsockopt_test(%struct.bpf_object* %47, i32 %48, i32 %49, i32 %50)
  %52 = call i64 @CHECK_FAIL(i32 %51)
  br label %53

53:                                               ; preds = %40, %39, %29, %23, %15
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %57 = call i32 @bpf_object__close(%struct.bpf_object* %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @close(i32 %60)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test__join_cgroup(i8*) #2

declare dso_local i64 @CHECK_FAIL(i32) #2

declare dso_local i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @run_getsockopt_test(%struct.bpf_object*, i32, i32, i32) #2

declare dso_local i32 @run_setsockopt_test(%struct.bpf_object*, i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

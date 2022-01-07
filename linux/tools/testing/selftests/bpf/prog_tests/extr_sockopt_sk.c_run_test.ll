; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_sk.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_sk.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_load_attr = type { i8* }
%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"./sockopt_sk.o\00", align 1
@__const.run_test.attr = private unnamed_addr constant %struct.bpf_prog_load_attr { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"cgroup/getsockopt\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cgroup/setsockopt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_prog_load_attr, align 8
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = bitcast %struct.bpf_prog_load_attr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.bpf_prog_load_attr* @__const.run_test.attr to i8*), i64 8, i1 false)
  %8 = call i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %3, %struct.bpf_object** %4, i32* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @CHECK_FAIL(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @prog_attach(%struct.bpf_object* %14, i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @CHECK_FAIL(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %32

21:                                               ; preds = %13
  %22 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @prog_attach(%struct.bpf_object* %22, i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @CHECK_FAIL(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %32

29:                                               ; preds = %21
  %30 = call i32 (...) @getsetsockopt()
  %31 = call i64 @CHECK_FAIL(i32 %30)
  br label %32

32:                                               ; preds = %29, %28, %20
  %33 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %34 = call i32 @bpf_object__close(%struct.bpf_object* %33)
  br label %35

35:                                               ; preds = %32, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local i64 @CHECK_FAIL(i32) #2

declare dso_local i32 @prog_attach(%struct.bpf_object*, i32, i8*) #2

declare dso_local i32 @getsetsockopt(...) #2

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

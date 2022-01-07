; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_test_sk_storage_map_stress_free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_test_sk_storage_map_stress_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@stop_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@runtime_s = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@nr_sk_threads = common dso_local global i32 0, align 4
@nr_sk_per_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"setrlimit(RLIMIT_NOFILE)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"rlim_new:%lu errno:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"test_sk_storage_map_stress_free\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_sk_storage_map_stress_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sk_storage_map_stress_free() #0 {
  %1 = alloca %struct.rlimit, align 4
  %2 = alloca %struct.rlimit, align 4
  %3 = alloca i32, align 4
  %4 = bitcast %struct.rlimit* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = load i32, i32* @RLIMIT_NOFILE, align 4
  %6 = call i32 @getrlimit(i32 %5, %struct.rlimit* %1)
  %7 = load i32, i32* @SIGTERM, align 4
  %8 = load i32, i32* @stop_handler, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = load i32, i32* @SIGINT, align 4
  %11 = load i32, i32* @stop_handler, align 4
  %12 = call i32 @signal(i32 %10, i32 %11)
  %13 = load i64, i64* @runtime_s, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = load i32, i32* @SIGALRM, align 4
  %17 = load i32, i32* @stop_handler, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  %19 = load i64, i64* @runtime_s, align 8
  %20 = call i32 @alarm(i64 %19)
  br label %21

21:                                               ; preds = %15, %0
  %22 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @nr_sk_threads, align 4
  %25 = load i32, i32* @nr_sk_per_thread, align 4
  %26 = mul nsw i32 %24, %25
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %21
  %29 = load i32, i32* @nr_sk_threads, align 4
  %30 = load i32, i32* @nr_sk_per_thread, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %31, 128
  %33 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 128
  %37 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @RLIMIT_NOFILE, align 4
  %39 = call i32 @setrlimit(i32 %38, %struct.rlimit* %2)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 (i32, i8*, i8*, i32, ...) @CHECK(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %28, %21
  %46 = call i32 (...) @do_sk_storage_map_stress_free()
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @SIGTERM, align 4
  %48 = load i32, i32* @SIG_DFL, align 4
  %49 = call i32 @signal(i32 %47, i32 %48)
  %50 = load i32, i32* @SIGINT, align 4
  %51 = load i32, i32* @SIG_DFL, align 4
  %52 = call i32 @signal(i32 %50, i32 %51)
  %53 = load i64, i64* @runtime_s, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load i32, i32* @SIGALRM, align 4
  %57 = load i32, i32* @SIG_DFL, align 4
  %58 = call i32 @signal(i32 %56, i32 %57)
  %59 = call i32 @alarm(i64 0)
  br label %60

60:                                               ; preds = %55, %45
  %61 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @RLIMIT_NOFILE, align 4
  %66 = call i32 @setrlimit(i32 %65, %struct.rlimit* %1)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 (i32, i8*, i8*, i32, ...) @CHECK(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @alarm(i64) #2

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, ...) #2

declare dso_local i32 @do_sk_storage_map_stress_free(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

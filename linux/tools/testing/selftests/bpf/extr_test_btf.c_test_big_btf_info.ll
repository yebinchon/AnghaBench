; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_test_big_btf_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_test_big_btf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_get_info_test = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.anon = type { %struct.bpf_btf_info, i32 }
%struct.bpf_btf_info = type { i32, i32 }

@get_info_tests = common dso_local global %struct.btf_get_info_test* null, align 8
@hdr_tmpl = common dso_local global i32 0, align 4
@btf_log_buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"!user_btf\00", align 1
@BTF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"errno:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"!err\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"err:%d errno:%d info_len:%u sizeof(*info):%lu\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_big_btf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_big_btf_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_get_info_test*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon, align 4
  %9 = alloca %struct.bpf_btf_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** @get_info_tests, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %13, i64 %16
  store %struct.btf_get_info_test* %17, %struct.btf_get_info_test** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 -1, i32* %10, align 4
  %18 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %19 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %22 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.btf_get_info_test*, %struct.btf_get_info_test** %4, align 8
  %25 = getelementptr inbounds %struct.btf_get_info_test, %struct.btf_get_info_test* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @btf_raw_create(i32* @hdr_tmpl, i32 %20, i32 %23, i32 %26, i32* %7, i32* null)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %128

31:                                               ; preds = %1
  %32 = load i8*, i8** @btf_log_buf, align 8
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* %7, align 4
  %34 = call i32* @malloc(i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 (i32, i8*, ...) @CHECK(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 -1, i32* %11, align 4
  br label %101

42:                                               ; preds = %31
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** @btf_log_buf, align 8
  %46 = load i32, i32* @BTF_LOG_BUF_SIZE, align 4
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %48 = call i32 @bpf_load_btf(i32* %43, i32 %44, i8* %45, i32 %46, i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, -1
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @errno, align 4
  %53 = call i64 (i32, i8*, ...) @CHECK(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i32 -1, i32* %11, align 4
  br label %101

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  store %struct.bpf_btf_info* %57, %struct.bpf_btf_info** %9, align 8
  %58 = load %struct.bpf_btf_info*, %struct.bpf_btf_info** %9, align 8
  %59 = call i32 @memset(%struct.bpf_btf_info* %58, i32 0, i32 8)
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  store i32 -559038737, i32* %60, align 4
  store i32 12, i32* %12, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @ptr_to_u64(i32* %61)
  %63 = load %struct.bpf_btf_info*, %struct.bpf_btf_info** %9, align 8
  %64 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.bpf_btf_info*, %struct.bpf_btf_info** %9, align 8
  %67 = getelementptr inbounds %struct.bpf_btf_info, %struct.bpf_btf_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.bpf_btf_info*, %struct.bpf_btf_info** %9, align 8
  %70 = call i32 @bpf_obj_get_info_by_fd(i32 %68, %struct.bpf_btf_info* %69, i32* %12)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 (i32, i8*, ...) @CHECK(i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %56
  store i32 -1, i32* %11, align 4
  br label %101

78:                                               ; preds = %56
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.bpf_btf_info*, %struct.bpf_btf_info** %9, align 8
  %82 = call i32 @bpf_obj_get_info_by_fd(i32 %80, %struct.bpf_btf_info* %81, i32* %12)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %87, 8
  br label %89

89:                                               ; preds = %85, %78
  %90 = phi i1 [ true, %78 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @errno, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i64 (i32, i8*, ...) @CHECK(i32 %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93, i32 %94, i64 8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 -1, i32* %11, align 4
  br label %101

98:                                               ; preds = %89
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %97, %77, %55, %41
  %102 = load i8*, i8** @btf_log_buf, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109, %106
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** @btf_log_buf, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %112, %109, %101
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @free(i32* %117)
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @free(i32* %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, -1
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @close(i32 %124)
  br label %126

126:                                              ; preds = %123, %116
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %30
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32* @btf_raw_create(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @CHECK(i32, i8*, ...) #1

declare dso_local i32 @bpf_load_btf(i32*, i32, i8*, i32, i64) #1

declare dso_local i32 @memset(%struct.bpf_btf_info*, i32, i32) #1

declare dso_local i32 @ptr_to_u64(i32*) #1

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_btf_info*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_generate_filter.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_generate_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.bpf_prog = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sock_fprog_kern = type { i32, i8* }

@tests = common dso_local global %struct.TYPE_4__* null, align 8
@TEST_TYPE_MASK = common dso_local global i32 0, align 4
@FLAG_EXPECTED_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"UNEXPECTED_PASS\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"FAIL to prog_create err=%d len=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"UNEXPECTED_FAIL no memory left\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"FAIL to select_runtime err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_prog* (i32, i32*)* @generate_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_prog* @generate_filter(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sock_fprog_kern, align 8
  %10 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TEST_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @filter_length(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @filter_pointer(i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %119 [
    i32 129, label %24
    i32 128, label %69
  ]

24:                                               ; preds = %2
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %9, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %9, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = call i32 @bpf_prog_create(%struct.bpf_prog** %10, %struct.sock_fprog_kern* %9)
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FLAG_EXPECTED_FAIL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %24
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %42, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %52 = load i32*, i32** %5, align 8
  store i32 0, i32* %52, align 4
  store %struct.bpf_prog* null, %struct.bpf_prog** %3, align 8
  br label %122

53:                                               ; preds = %40
  %54 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  store %struct.bpf_prog* null, %struct.bpf_prog** %3, align 8
  br label %122

58:                                               ; preds = %24
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %66)
  store %struct.bpf_prog* null, %struct.bpf_prog** %3, align 8
  br label %122

68:                                               ; preds = %58
  br label %119

69:                                               ; preds = %2
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @bpf_prog_size(i32 %70)
  %72 = call %struct.bpf_prog* @bpf_prog_alloc(i32 %71, i32 0)
  store %struct.bpf_prog* %72, %struct.bpf_prog** %10, align 8
  %73 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %74 = icmp eq %struct.bpf_prog* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  store %struct.bpf_prog* null, %struct.bpf_prog** %3, align 8
  br label %122

80:                                               ; preds = %69
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %83 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @BPF_PROG_TYPE_SOCKET_FILTER, align 4
  %85 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %86 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %88 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %92 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i32 %89, i8* %90, i32 %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tests, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %105 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = call %struct.bpf_prog* @bpf_prog_select_runtime(%struct.bpf_prog* %108, i32* %109)
  store %struct.bpf_prog* %110, %struct.bpf_prog** %10, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %80
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  store %struct.bpf_prog* null, %struct.bpf_prog** %3, align 8
  br label %122

118:                                              ; preds = %80
  br label %119

119:                                              ; preds = %2, %118, %68
  %120 = load i32*, i32** %5, align 8
  store i32 0, i32* %120, align 4
  %121 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  store %struct.bpf_prog* %121, %struct.bpf_prog** %3, align 8
  br label %122

122:                                              ; preds = %119, %114, %75, %62, %53, %50
  %123 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  ret %struct.bpf_prog* %123
}

declare dso_local i32 @filter_length(i32) #1

declare dso_local i8* @filter_pointer(i32) #1

declare dso_local i32 @bpf_prog_create(%struct.bpf_prog**, %struct.sock_fprog_kern*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local %struct.bpf_prog* @bpf_prog_alloc(i32, i32) #1

declare dso_local i32 @bpf_prog_size(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_select_runtime(%struct.bpf_prog*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

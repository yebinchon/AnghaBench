; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_dev_cgroup.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_dev_cgroup.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@DEV_CGROUP_PROG = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to load DEV_CGROUP program\0A\00", align 1
@TEST_CGROUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to create test cgroup\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to join cgroup\0A\00", align 1
@BPF_CGROUP_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to attach DEV_CGROUP program\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to query attached programs\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"rm -f /tmp/test_dev_cgroup_null\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"mknod /tmp/test_dev_cgroup_null c 1 3\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"rm -f /tmp/test_dev_cgroup_zero\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"mknod /tmp/test_dev_cgroup_zero c 1 5\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"dd if=/dev/urandom of=/dev/zero count=64\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"dd if=/dev/urandom of=/dev/full count=64\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"dd if=/dev/random of=/dev/zero count=64\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"test_dev_cgroup:PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @DEV_CGROUP_PROG, align 4
  %13 = load i32, i32* @BPF_PROG_TYPE_CGROUP_DEVICE, align 4
  %14 = call i64 @bpf_prog_load(i32 %12, i32 %13, %struct.bpf_object** %6, i32* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %85

18:                                               ; preds = %2
  %19 = call i64 (...) @setup_cgroup_environment()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %83

23:                                               ; preds = %18
  %24 = load i32, i32* @TEST_CGROUP, align 4
  %25 = call i32 @create_and_get_cgroup(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %83

30:                                               ; preds = %23
  %31 = load i32, i32* @TEST_CGROUP, align 4
  %32 = call i64 @join_cgroup(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %83

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @BPF_CGROUP_DEVICE, align 4
  %40 = call i64 @bpf_prog_attach(i32 %37, i32 %38, i32 %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %83

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BPF_CGROUP_DEVICE, align 4
  %47 = call i64 @bpf_prog_query(i32 %45, i32 %46, i32 0, i32* null, i32* null, i32* %10)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %83

51:                                               ; preds = %44
  %52 = call i32 @system(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = call i32 @system(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %57 = call i32 @assert(i32 %56)
  %58 = call i32 @system(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = call i32 @system(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = call i32 @system(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = call i32 @system(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = call i32 @system(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = call i32 @system(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %79 = call i32 @assert(i32 %78)
  %80 = call i32 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %81 = call i32 @assert(i32 %80)
  store i32 0, i32* %7, align 4
  %82 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %83

83:                                               ; preds = %51, %49, %42, %34, %28, %21
  %84 = call i32 (...) @cleanup_cgroup_environment()
  br label %85

85:                                               ; preds = %83, %16
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i64 @bpf_prog_load(i32, i32, %struct.bpf_object**, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @setup_cgroup_environment(...) #1

declare dso_local i32 @create_and_get_cgroup(i32) #1

declare dso_local i64 @join_cgroup(i32) #1

declare dso_local i64 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i64 @bpf_prog_query(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @cleanup_cgroup_environment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_bp_account.c_bp_accounting.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_bp_account.c_bp_accounting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i64, i32 }

@the_var = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to create wp\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wp %d created\0A\00", align 1
@HW_BREAKPOINT_X = common dso_local global i32 0, align 4
@test_function = common dso_local global i64 0, align 8
@PERF_EVENT_IOC_MODIFY_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to modify wp\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"wp 0 modified to bp\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to create max wp\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"wp max created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bp_accounting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bp_accounting(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event_attr, align 8
  %6 = alloca %struct.perf_event_attr, align 8
  %7 = alloca %struct.perf_event_attr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %35, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = call i32 @wp_event(i8* bitcast (i32* @the_var to i8*), %struct.perf_event_attr* %5)
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %16, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %16, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %17

38:                                               ; preds = %17
  %39 = bitcast %struct.perf_event_attr* %6 to i8*
  %40 = bitcast %struct.perf_event_attr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load i32, i32* @HW_BREAKPOINT_X, align 4
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = load i64, i64* @test_function, align 8
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds i32, i32* %16, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = load i32, i32* @PERF_EVENT_IOC_MODIFY_ATTRIBUTES, align 4
  %48 = call i32 @ioctl(i32 %46, i32 %47, %struct.perf_event_attr* %6)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %38
  %57 = call i32 @wp_event(i8* bitcast (i32* @the_var to i8*), %struct.perf_event_attr* %7)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, -1
  %60 = zext i1 %59 to i32
  %61 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %56, %38
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %74, %63
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %16, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @close(i32 %72)
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %64

77:                                               ; preds = %64
  %78 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %78)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wp_event(i8*, %struct.perf_event_attr*) #2

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ioctl(i32, i32, %struct.perf_event_attr*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

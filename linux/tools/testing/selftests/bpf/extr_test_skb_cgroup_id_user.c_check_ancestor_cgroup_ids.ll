; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_skb_cgroup_id_user.c_check_ancestor_cgroup_ids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_skb_cgroup_id_user.c_check_ancestor_cgroup_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_CGROUP_LEVELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CGROUP_PATH = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to lookup key %d\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%llx (actual) != %llx (expected), level: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_ancestor_cgroup_ids(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @NUM_CGROUP_LEVELS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @NUM_CGROUP_LEVELS, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 1, i32* %16, align 16
  %17 = call i32 @get_cgroup_id(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load i8*, i8** @CGROUP_PATH, align 8
  %20 = call i32 @get_cgroup_id(i8* %19)
  %21 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds i32, i32* %15, i64 3
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @get_map_fd_by_prog_id(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %69

28:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %65, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NUM_CGROUP_LEVELS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %12, i64 %36
  %38 = call i64 @bpf_map_lookup_elem(i32 %34, i32* %6, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, i32, ...) @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %69

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %12, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %15, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %47, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %12, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %15, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, i32, ...) @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %61, i32 %62)
  br label %69

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %29

68:                                               ; preds = %29
  br label %70

69:                                               ; preds = %53, %40, %27
  store i32 -1, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32, i32* %8, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @close(i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %78)
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_cgroup_id(i8*) #2

declare dso_local i32 @get_map_fd_by_prog_id(i32) #2

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, i32*) #2

declare dso_local i32 @log_err(i8*, i32, ...) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

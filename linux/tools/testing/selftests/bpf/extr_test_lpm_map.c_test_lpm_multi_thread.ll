; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_test_lpm_multi_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_test_lpm_multi_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpm_mt_test_info = type { i32 }

@BPF_MAP_TYPE_LPM_TRIE = common dso_local global i32 0, align 4
@BPF_F_NO_PREALLOC = common dso_local global i32 0, align 4
@lpm_test_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_lpm_multi_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_lpm_multi_thread() #0 {
  %1 = alloca [4 x %struct.lpm_mt_test_info], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i64 4, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = add i64 4, %8
  store i64 %9, i64* %2, align 8
  %10 = load i32, i32* @BPF_MAP_TYPE_LPM_TRIE, align 4
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @BPF_F_NO_PREALLOC, align 4
  %14 = call i32 @bpf_create_map(i32 %10, i64 %11, i64 %12, i32 100, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = getelementptr inbounds [4 x %struct.lpm_mt_test_info], [4 x %struct.lpm_mt_test_info]* %1, i64 0, i64 0
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @setup_lpm_mt_test_info(%struct.lpm_mt_test_info* %15, i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %46, %0
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x %struct.lpm_mt_test_info], [4 x %struct.lpm_mt_test_info]* %1, i64 0, i64 %26
  %28 = getelementptr inbounds [4 x %struct.lpm_mt_test_info], [4 x %struct.lpm_mt_test_info]* %1, i64 0, i64 0
  %29 = call i32 @memcpy(%struct.lpm_mt_test_info* %27, %struct.lpm_mt_test_info* %28, i32 4)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x %struct.lpm_mt_test_info], [4 x %struct.lpm_mt_test_info]* %1, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %37
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x %struct.lpm_mt_test_info], [4 x %struct.lpm_mt_test_info]* %1, i64 0, i64 %40
  %42 = call i64 @pthread_create(i32* %38, i32* null, i32* @lpm_test_command, %struct.lpm_mt_test_info* %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %18

49:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @pthread_join(i32 %57, i8** %7)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x %struct.lpm_mt_test_info], [4 x %struct.lpm_mt_test_info]* %1, i64 0, i64 %63
  %65 = bitcast %struct.lpm_mt_test_info* %64 to i8*
  %66 = icmp eq i8* %61, %65
  br label %67

67:                                               ; preds = %60, %53
  %68 = phi i1 [ false, %53 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %50

74:                                               ; preds = %50
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @close(i32 %75)
  ret void
}

declare dso_local i32 @bpf_create_map(i32, i64, i64, i32, i32) #1

declare dso_local i32 @setup_lpm_mt_test_info(%struct.lpm_mt_test_info*, i32) #1

declare dso_local i32 @memcpy(%struct.lpm_mt_test_info*, %struct.lpm_mt_test_info*, i32) #1

declare dso_local i32 @assert(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32*, %struct.lpm_mt_test_info*) #1

declare dso_local i64 @pthread_join(i32, i8**) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

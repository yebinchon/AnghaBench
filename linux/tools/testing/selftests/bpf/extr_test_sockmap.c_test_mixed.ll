; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_mixed.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_mixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockmap_options = type { i32 }

@txmsg_drop = common dso_local global i32 0, align 4
@txmsg_redir_noisy = common dso_local global i32 0, align 4
@txmsg_noisy = common dso_local global i32 0, align 4
@txmsg_pass = common dso_local global i32 0, align 4
@txmsg_cork = common dso_local global i32 0, align 4
@txmsg_apply = common dso_local global i32 0, align 4
@txmsg_end = common dso_local global i64 0, align 8
@txmsg_start = common dso_local global i64 0, align 8
@txmsg_end_push = common dso_local global i64 0, align 8
@txmsg_start_push = common dso_local global i64 0, align 8
@txmsg_pop = common dso_local global i64 0, align 8
@txmsg_start_pop = common dso_local global i64 0, align 8
@txmsg_redir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_mixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mixed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockmap_options, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = bitcast %struct.sockmap_options* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  store i32 0, i32* @txmsg_drop, align 4
  store i32 0, i32* @txmsg_redir_noisy, align 4
  store i32 0, i32* @txmsg_noisy, align 4
  store i32 0, i32* @txmsg_pass, align 4
  store i32 0, i32* @txmsg_cork, align 4
  store i32 0, i32* @txmsg_apply, align 4
  store i64 0, i64* @txmsg_end, align 8
  store i64 0, i64* @txmsg_start, align 8
  store i64 0, i64* @txmsg_end_push, align 8
  store i64 0, i64* @txmsg_start_push, align 8
  store i64 0, i64* @txmsg_pop, align 8
  store i64 0, i64* @txmsg_start_pop, align 8
  store i32 1, i32* @txmsg_pass, align 4
  store i32 0, i32* @txmsg_redir, align 4
  store i32 1, i32* @txmsg_apply, align 4
  store i32 0, i32* @txmsg_cork, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @test_send(%struct.sockmap_options* %3, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  store i32 1, i32* @txmsg_pass, align 4
  store i32 0, i32* @txmsg_redir, align 4
  store i32 0, i32* @txmsg_apply, align 4
  store i32 1, i32* @txmsg_cork, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @test_send(%struct.sockmap_options* %3, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %84

17:                                               ; preds = %11
  store i32 1, i32* @txmsg_pass, align 4
  store i32 0, i32* @txmsg_redir, align 4
  store i32 1, i32* @txmsg_apply, align 4
  store i32 1, i32* @txmsg_cork, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @test_send(%struct.sockmap_options* %3, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %84

23:                                               ; preds = %17
  store i32 1, i32* @txmsg_pass, align 4
  store i32 0, i32* @txmsg_redir, align 4
  store i32 1024, i32* @txmsg_apply, align 4
  store i32 0, i32* @txmsg_cork, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @test_send(%struct.sockmap_options* %3, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %84

29:                                               ; preds = %23
  store i32 1, i32* @txmsg_pass, align 4
  store i32 0, i32* @txmsg_redir, align 4
  store i32 0, i32* @txmsg_apply, align 4
  store i32 1024, i32* @txmsg_cork, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @test_send(%struct.sockmap_options* %3, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %84

35:                                               ; preds = %29
  store i32 1, i32* @txmsg_pass, align 4
  store i32 0, i32* @txmsg_redir, align 4
  store i32 1024, i32* @txmsg_apply, align 4
  store i32 1024, i32* @txmsg_cork, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @test_send(%struct.sockmap_options* %3, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %84

41:                                               ; preds = %35
  store i32 1, i32* @txmsg_pass, align 4
  store i32 0, i32* @txmsg_redir, align 4
  store i32 4096, i32* @txmsg_cork, align 4
  store i32 4096, i32* @txmsg_apply, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @test_send(%struct.sockmap_options* %3, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %84

47:                                               ; preds = %41
  store i32 0, i32* @txmsg_pass, align 4
  store i32 1, i32* @txmsg_redir, align 4
  store i32 1, i32* @txmsg_apply, align 4
  store i32 0, i32* @txmsg_cork, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @test_send(%struct.sockmap_options* %3, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %84

53:                                               ; preds = %47
  store i32 0, i32* @txmsg_pass, align 4
  store i32 1, i32* @txmsg_redir, align 4
  store i32 0, i32* @txmsg_apply, align 4
  store i32 1, i32* @txmsg_cork, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @test_send(%struct.sockmap_options* %3, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %84

59:                                               ; preds = %53
  store i32 0, i32* @txmsg_pass, align 4
  store i32 1, i32* @txmsg_redir, align 4
  store i32 1024, i32* @txmsg_apply, align 4
  store i32 0, i32* @txmsg_cork, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @test_send(%struct.sockmap_options* %3, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %84

65:                                               ; preds = %59
  store i32 0, i32* @txmsg_pass, align 4
  store i32 1, i32* @txmsg_redir, align 4
  store i32 0, i32* @txmsg_apply, align 4
  store i32 1024, i32* @txmsg_cork, align 4
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @test_send(%struct.sockmap_options* %3, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %84

71:                                               ; preds = %65
  store i32 0, i32* @txmsg_pass, align 4
  store i32 1, i32* @txmsg_redir, align 4
  store i32 1024, i32* @txmsg_apply, align 4
  store i32 1024, i32* @txmsg_cork, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @test_send(%struct.sockmap_options* %3, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %84

77:                                               ; preds = %71
  store i32 0, i32* @txmsg_pass, align 4
  store i32 1, i32* @txmsg_redir, align 4
  store i32 4096, i32* @txmsg_cork, align 4
  store i32 4096, i32* @txmsg_apply, align 4
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @test_send(%struct.sockmap_options* %3, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %84

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %82, %76, %70, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @test_send(%struct.sockmap_options*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

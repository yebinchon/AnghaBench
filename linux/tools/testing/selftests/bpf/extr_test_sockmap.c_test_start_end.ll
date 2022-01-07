; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_start_end.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_start_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockmap_options = type { i32, i32, i32, i32 }

@txmsg_start = common dso_local global i32 0, align 4
@txmsg_end = common dso_local global i32 0, align 4
@txmsg_start_push = common dso_local global i32 0, align 4
@txmsg_end_push = common dso_local global i32 0, align 4
@txmsg_start_pop = common dso_local global i32 0, align 4
@txmsg_pop = common dso_local global i32 0, align 4
@txmsg_cork = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_start_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_start_end(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockmap_options, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = bitcast %struct.sockmap_options* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 16, i1 false)
  store i32 1, i32* @txmsg_start, align 4
  store i32 2, i32* @txmsg_end, align 4
  store i32 1, i32* @txmsg_start_push, align 4
  store i32 2, i32* @txmsg_end_push, align 4
  store i32 1, i32* @txmsg_start_pop, align 4
  store i32 1, i32* @txmsg_pop, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @test_txmsg(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %119

12:                                               ; preds = %1
  store i32 1, i32* @txmsg_start, align 4
  store i32 2, i32* @txmsg_end, align 4
  store i32 1, i32* @txmsg_start_push, align 4
  store i32 3, i32* @txmsg_end_push, align 4
  store i32 1, i32* @txmsg_start_pop, align 4
  store i32 1, i32* @txmsg_pop, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @test_txmsg(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %119

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %3, i32 0, i32 0
  store i32 16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %3, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %3, i32 0, i32 2
  store i32 100, i32* %21, align 4
  store i32 1600, i32* @txmsg_cork, align 4
  store i32 0, i32* @txmsg_start_pop, align 4
  store i32 0, i32* @txmsg_pop, align 4
  store i32 99, i32* %5, align 4
  br label %22

22:                                               ; preds = %34, %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 1600
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  store i32 0, i32* @txmsg_start, align 4
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* @txmsg_end, align 4
  store i32 0, i32* @txmsg_start_push, align 4
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* @txmsg_end_push, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @test_exec(i32 %28, %struct.sockmap_options* %3)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %119

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 500
  store i32 %36, i32* %5, align 4
  br label %22

37:                                               ; preds = %22
  store i32 99, i32* %5, align 4
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp sle i32 %39, 1600
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  store i32 10, i32* @txmsg_start_pop, align 4
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* @txmsg_pop, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @test_exec(i32 %43, %struct.sockmap_options* %3)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %119

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 500
  store i32 %51, i32* %5, align 4
  br label %38

52:                                               ; preds = %38
  store i32 0, i32* @txmsg_start_pop, align 4
  store i32 0, i32* @txmsg_pop, align 4
  store i32 199, i32* %5, align 4
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i32, i32* %5, align 4
  %55 = icmp sle i32 %54, 1600
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  store i32 100, i32* @txmsg_start, align 4
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* @txmsg_end, align 4
  store i32 100, i32* @txmsg_start_push, align 4
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* @txmsg_end_push, align 4
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @test_exec(i32 %59, %struct.sockmap_options* %3)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %119

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 500
  store i32 %67, i32* %5, align 4
  br label %53

68:                                               ; preds = %53
  store i32 1500, i32* @txmsg_start, align 4
  store i32 1600, i32* @txmsg_end, align 4
  store i32 1500, i32* @txmsg_start_push, align 4
  store i32 1600, i32* @txmsg_end_push, align 4
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @test_exec(i32 %69, %struct.sockmap_options* %3)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %119

74:                                               ; preds = %68
  store i32 1500, i32* @txmsg_start_pop, align 4
  store i32 1600, i32* @txmsg_pop, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @test_exec(i32 %75, %struct.sockmap_options* %3)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %119

80:                                               ; preds = %74
  store i32 0, i32* @txmsg_start_pop, align 4
  store i32 0, i32* @txmsg_pop, align 4
  store i32 1111, i32* @txmsg_start, align 4
  store i32 1112, i32* @txmsg_end, align 4
  store i32 1111, i32* @txmsg_start_push, align 4
  store i32 1112, i32* @txmsg_end_push, align 4
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @test_exec(i32 %81, %struct.sockmap_options* %3)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %119

86:                                               ; preds = %80
  store i32 1111, i32* @txmsg_start_pop, align 4
  store i32 1112, i32* @txmsg_pop, align 4
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @test_exec(i32 %87, %struct.sockmap_options* %3)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %119

92:                                               ; preds = %86
  store i32 1111, i32* @txmsg_start, align 4
  store i32 0, i32* @txmsg_end, align 4
  store i32 1111, i32* @txmsg_start_push, align 4
  store i32 0, i32* @txmsg_end_push, align 4
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @test_exec(i32 %93, %struct.sockmap_options* %3)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %119

98:                                               ; preds = %92
  store i32 0, i32* @txmsg_start, align 4
  store i32 1601, i32* @txmsg_end, align 4
  store i32 0, i32* @txmsg_start_push, align 4
  store i32 1601, i32* @txmsg_end_push, align 4
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @test_exec(i32 %99, %struct.sockmap_options* %3)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %119

104:                                              ; preds = %98
  store i32 1601, i32* @txmsg_start, align 4
  store i32 1600, i32* @txmsg_end, align 4
  store i32 1601, i32* @txmsg_start_push, align 4
  store i32 1600, i32* @txmsg_end_push, align 4
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @test_exec(i32 %105, %struct.sockmap_options* %3)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %119

110:                                              ; preds = %104
  store i32 1601, i32* @txmsg_start_pop, align 4
  store i32 1, i32* @txmsg_pop, align 4
  %111 = load i32, i32* %2, align 4
  %112 = call i32 @test_exec(i32 %111, %struct.sockmap_options* %3)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %119

116:                                              ; preds = %110
  store i32 1599, i32* @txmsg_start_pop, align 4
  store i32 10, i32* @txmsg_pop, align 4
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @test_exec(i32 %117, %struct.sockmap_options* %3)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %115, %109, %103, %97, %91, %85, %79, %73, %63, %47, %32, %17, %11
  store i32 0, i32* @txmsg_start, align 4
  store i32 0, i32* @txmsg_end, align 4
  %120 = call i32 (...) @sched_yield()
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @test_txmsg(i32) #2

declare dso_local i32 @test_exec(i32, %struct.sockmap_options*) #2

declare dso_local i32 @sched_yield(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

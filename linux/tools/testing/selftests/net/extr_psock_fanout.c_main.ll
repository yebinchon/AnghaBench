; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.expect_hash = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 15, i32 5], [2 x i32] [i32 20, i32 5]], align 16
@__const.main.expect_hash_rb = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 15, i32 5], [2 x i32] [i32 20, i32 15]], align 16
@__const.main.expect_lb = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 10, i32 10], [2 x i32] [i32 18, i32 17]], align 16
@__const.main.expect_rb = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 15, i32 5], [2 x i32] [i32 20, i32 15]], align 16
@__const.main.expect_cpu0 = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 20, i32 0], [2 x i32] [i32 20, i32 0]], align 16
@__const.main.expect_cpu1 = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 0, i32 20], [2 x i32] [i32 0, i32 20]], align 16
@__const.main.expect_bpf = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 15, i32 5], [2 x i32] [i32 15, i32 20]], align 16
@__const.main.expect_uniqueid = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 20, i32 20], [2 x i32] [i32 20, i32 20]], align 16
@PACKET_FANOUT_HASH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"info: trying alternate ports (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"too many collisions\0A\00", align 1
@PACKET_FANOUT_FLAG_ROLLOVER = common dso_local global i32 0, align 4
@PACKET_FANOUT_LB = common dso_local global i32 0, align 4
@PACKET_FANOUT_ROLLOVER = common dso_local global i32 0, align 4
@PACKET_FANOUT_CBPF = common dso_local global i32 0, align 4
@PACKET_FANOUT_EBPF = common dso_local global i32 0, align 4
@PACKET_FANOUT_CPU = common dso_local global i32 0, align 4
@PACKET_FANOUT_FLAG_UNIQUEID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"OK. All tests passed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x [2 x i32]], align 16
  %7 = alloca [2 x [2 x i32]], align 16
  %8 = alloca [2 x [2 x i32]], align 16
  %9 = alloca [2 x [2 x i32]], align 16
  %10 = alloca [2 x [2 x i32]], align 16
  %11 = alloca [2 x [2 x i32]], align 16
  %12 = alloca [2 x [2 x i32]], align 16
  %13 = alloca [2 x [2 x i32]], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = bitcast [2 x [2 x i32]]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.expect_hash to i8*), i64 16, i1 false)
  %18 = bitcast [2 x [2 x i32]]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.expect_hash_rb to i8*), i64 16, i1 false)
  %19 = bitcast [2 x [2 x i32]]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.expect_lb to i8*), i64 16, i1 false)
  %20 = bitcast [2 x [2 x i32]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.expect_rb to i8*), i64 16, i1 false)
  %21 = bitcast [2 x [2 x i32]]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.expect_cpu0 to i8*), i64 16, i1 false)
  %22 = bitcast [2 x [2 x i32]]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.expect_cpu1 to i8*), i64 16, i1 false)
  %23 = bitcast [2 x [2 x i32]]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.expect_bpf to i8*), i64 16, i1 false)
  %24 = bitcast [2 x [2 x i32]]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.main.expect_uniqueid to i8*), i64 16, i1 false)
  store i32 2, i32* %14, align 4
  store i32 20, i32* %15, align 4
  %25 = call i32 (...) @test_control_single()
  %26 = call i32 (...) @test_control_group()
  %27 = call i32 (...) @test_unique_fanout_group_ids()
  %28 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %29 = load i32, i32* %14, align 4
  %30 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %32 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %6, i64 0, i64 1
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %34 = call i32 @test_datapath(i32 %28, i32 %29, i32* %31, i32* %33)
  store i32 %34, i32* %16, align 4
  br label %35

35:                                               ; preds = %56, %2
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %6, i64 0, i64 0
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %45, i64 0, i64 0
  %47 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %6, i64 0, i64 1
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 0
  %49 = call i32 @test_datapath(i32 %42, i32 %44, i32* %46, i32* %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %142

56:                                               ; preds = %38
  br label %35

57:                                               ; preds = %35
  %58 = load i32, i32* @PACKET_FANOUT_HASH, align 4
  %59 = load i32, i32* @PACKET_FANOUT_FLAG_ROLLOVER, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %14, align 4
  %62 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %7, i64 0, i64 0
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %62, i64 0, i64 0
  %64 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %7, i64 0, i64 1
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 0
  %66 = call i32 @test_datapath(i32 %60, i32 %61, i32* %63, i32* %65)
  %67 = load i32, i32* %16, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* @PACKET_FANOUT_LB, align 4
  %70 = load i32, i32* %14, align 4
  %71 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 0
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 0
  %73 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0, i64 1
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %73, i64 0, i64 0
  %75 = call i32 @test_datapath(i32 %69, i32 %70, i32* %72, i32* %74)
  %76 = load i32, i32* %16, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* @PACKET_FANOUT_ROLLOVER, align 4
  %79 = load i32, i32* %14, align 4
  %80 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %9, i64 0, i64 0
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %80, i64 0, i64 0
  %82 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %9, i64 0, i64 1
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 0, i64 0
  %84 = call i32 @test_datapath(i32 %78, i32 %79, i32* %81, i32* %83)
  %85 = load i32, i32* %16, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* @PACKET_FANOUT_CBPF, align 4
  %88 = load i32, i32* %14, align 4
  %89 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 0, i64 0
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %89, i64 0, i64 0
  %91 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 0, i64 1
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 0
  %93 = call i32 @test_datapath(i32 %87, i32 %88, i32* %90, i32* %92)
  %94 = load i32, i32* %16, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* @PACKET_FANOUT_EBPF, align 4
  %97 = load i32, i32* %14, align 4
  %98 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 0, i64 0
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 0, i64 0
  %100 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 0, i64 1
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %100, i64 0, i64 0
  %102 = call i32 @test_datapath(i32 %96, i32 %97, i32* %99, i32* %101)
  %103 = load i32, i32* %16, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %16, align 4
  %105 = call i32 @set_cpuaffinity(i32 0)
  %106 = load i32, i32* @PACKET_FANOUT_CPU, align 4
  %107 = load i32, i32* %14, align 4
  %108 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %10, i64 0, i64 0
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %108, i64 0, i64 0
  %110 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %10, i64 0, i64 1
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %110, i64 0, i64 0
  %112 = call i32 @test_datapath(i32 %106, i32 %107, i32* %109, i32* %111)
  %113 = load i32, i32* %16, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %16, align 4
  %115 = call i32 @set_cpuaffinity(i32 1)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %57
  %118 = load i32, i32* @PACKET_FANOUT_CPU, align 4
  %119 = load i32, i32* %14, align 4
  %120 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %11, i64 0, i64 0
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %120, i64 0, i64 0
  %122 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %11, i64 0, i64 1
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %122, i64 0, i64 0
  %124 = call i32 @test_datapath(i32 %118, i32 %119, i32* %121, i32* %123)
  %125 = load i32, i32* %16, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %16, align 4
  br label %127

127:                                              ; preds = %117, %57
  %128 = load i32, i32* @PACKET_FANOUT_FLAG_UNIQUEID, align 4
  %129 = load i32, i32* %14, align 4
  %130 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 0
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 0, i64 0
  %132 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 1
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %132, i64 0, i64 0
  %134 = call i32 @test_datapath(i32 %128, i32 %129, i32* %131, i32* %133)
  %135 = load i32, i32* %16, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  store i32 1, i32* %3, align 4
  br label %142

140:                                              ; preds = %127
  %141 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %139, %53
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_control_single(...) #2

declare dso_local i32 @test_control_group(...) #2

declare dso_local i32 @test_unique_fanout_group_ids(...) #2

declare dso_local i32 @test_datapath(i32, i32, i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @set_cpuaffinity(i32) #2

declare dso_local i32 @printf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

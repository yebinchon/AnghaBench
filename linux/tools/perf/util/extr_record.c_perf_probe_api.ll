; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_record.c_perf_probe_api.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_record.c_perf_probe_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"cycles:u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"instructions:u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cpu-clock:u\00", align 1
@__const.perf_probe_api.try = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @perf_probe_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_probe_api(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8*], align 16
  %5 = alloca %struct.perf_cpu_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = bitcast [4 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i8*]* @__const.perf_probe_api.try to i8*), i64 32, i1 false)
  store i32 0, i32* %8, align 4
  %10 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32* null)
  store %struct.perf_cpu_map* %10, %struct.perf_cpu_map** %5, align 8
  %11 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %12 = icmp ne %struct.perf_cpu_map* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %16 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %21 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %20)
  br label %22

22:                                               ; preds = %46, %14
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @perf_do_probe_api(i32 %23, i32 %24, i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %49

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ false, %35 ], [ %45, %40 ]
  br i1 %47, label %22, label %48

48:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %33, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i32*) #2

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #2

declare dso_local i32 @perf_do_probe_api(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

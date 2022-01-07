; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_setup_lpm_mt_test_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_setup_lpm_mt_test_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpm_mt_test_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"192.168.0.0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"192.168.128.0\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"192.168.1.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpm_mt_test_info*, i32)* @setup_lpm_mt_test_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_lpm_mt_test_info(%struct.lpm_mt_test_info* %0, i32 %1) #0 {
  %3 = alloca %struct.lpm_mt_test_info*, align 8
  %4 = alloca i32, align 4
  store %struct.lpm_mt_test_info* %0, %struct.lpm_mt_test_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %6 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %5, i32 0, i32 0
  store i32 2000, i32* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %9 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %11 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 16, i32* %14, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %17 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @inet_pton(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %23 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 24, i32* %26, align 4
  %27 = load i32, i32* @AF_INET, align 4
  %28 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %29 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @inet_pton(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %32)
  %34 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %35 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 24, i32* %38, align 4
  %39 = load i32, i32* @AF_INET, align 4
  %40 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %41 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @inet_pton(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  %46 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %47 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 24, i32* %50, align 4
  %51 = load i32, i32* @AF_INET, align 4
  %52 = load %struct.lpm_mt_test_info*, %struct.lpm_mt_test_info** %3, align 8
  %53 = getelementptr inbounds %struct.lpm_mt_test_info, %struct.lpm_mt_test_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = call i32 @inet_pton(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %56)
  ret void
}

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

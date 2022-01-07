; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_mem.c_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_mem.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_mem_data_src = type { i32 }
%struct.mem_info = type { %union.perf_mem_data_src }

@.str = private unnamed_addr constant [14 x i8] c"unexpected %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check(i32 %0, i8* %1) #0 {
  %3 = alloca %union.perf_mem_data_src, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8], align 16
  %7 = alloca %struct.mem_info, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %union.perf_mem_data_src, %union.perf_mem_data_src* %3, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %4, align 8
  %10 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %7, i32 0, i32 0
  %11 = bitcast %union.perf_mem_data_src* %10 to i8*
  %12 = bitcast %union.perf_mem_data_src* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %14 = call i32 @perf_mem__snp_scnprintf(i8* %13, i32 100, %struct.mem_info* %7)
  store i32 %14, i32* %8, align 4
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 100, %20
  %22 = trunc i64 %21 to i32
  %23 = call i64 @perf_mem__lvl_scnprintf(i8* %18, i32 %22, %struct.mem_info* %7)
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %30 = call i32 @scnprintf(i8* %28, i32 100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %34 = call i32 @strcmp(i8* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT_VAL(i8* %31, i32 %37)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @perf_mem__snp_scnprintf(i8*, i32, %struct.mem_info*) #2

declare dso_local i64 @perf_mem__lvl_scnprintf(i8*, i32, %struct.mem_info*) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

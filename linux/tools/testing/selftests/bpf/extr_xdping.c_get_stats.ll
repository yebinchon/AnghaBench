; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_xdping.c_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_xdping.c_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinginfo = type { i64*, i32 }
%struct.in_addr = type { i32 }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\0AXDP RTT data:\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"bpf_map_lookup elem: \00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"64 bytes from %s: icmp_seq=%d ttl=64 time=%#.5f ms\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Expected %d samples, got %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_stats(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinginfo, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.pinginfo* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @bpf_map_lookup_elem(i32 %22, i32* %7, %struct.pinginfo* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %71

27:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %8, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %59

40:                                               ; preds = %32
  %41 = load i32, i32* @AF_INET, align 4
  %42 = trunc i64 %16 to i32
  %43 = call i8* @inet_ntop(i32 %41, %struct.in_addr* %11, i8* %18, i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %44, %45
  %47 = add i64 %46, 1
  %48 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %8, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %43, i64 %47, double %54)
  br label %56

56:                                               ; preds = %40
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %12, align 8
  br label %28

59:                                               ; preds = %39, %28
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @stderr, align 4
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %65, i64 %66)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @bpf_map_delete_elem(i32 %69, i32* %7)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %71

71:                                               ; preds = %68, %63, %25
  %72 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, %struct.pinginfo*) #3

declare dso_local i32 @perror(i8*) #3

declare dso_local i8* @inet_ntop(i32, %struct.in_addr*, i8*, i32) #3

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #3

declare dso_local i32 @bpf_map_delete_elem(i32, i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

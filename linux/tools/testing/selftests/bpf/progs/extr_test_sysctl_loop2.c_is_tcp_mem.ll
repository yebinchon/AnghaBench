; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sysctl_loop2.c_is_tcp_mem.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sysctl_loop2.c_is_tcp_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sysctl = type { i32 }

@__const.is_tcp_mem.tcp_mem_name = private unnamed_addr constant [79 x i8] c"net/ipv4/tcp_mem/very_very_very_very_long_pointless_string_to_stress_byte_loop\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_sysctl*)* @is_tcp_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_tcp_mem(%struct.bpf_sysctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sysctl*, align 8
  %4 = alloca [79 x i8], align 16
  %5 = alloca i8, align 1
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.bpf_sysctl* %0, %struct.bpf_sysctl** %3, align 8
  %8 = bitcast [79 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([79 x i8], [79 x i8]* @__const.is_tcp_mem.tcp_mem_name, i32 0, i32 0), i64 79, i1 true)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 64)
  %11 = load %struct.bpf_sysctl*, %struct.bpf_sysctl** %3, align 8
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %13 = call i32 @bpf_sysctl_get_name(%struct.bpf_sysctl* %11, i8* %12, i32 64, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 78
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %44

21:                                               ; preds = %16
  store i8 0, i8* %5, align 1
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i64
  %25 = icmp ult i64 %24, 79
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [79 x i8], [79 x i8]* %4, i64 0, i64 %33
  %35 = load volatile i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %44

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  %41 = load i8, i8* %5, align 1
  %42 = add i8 %41, 1
  store i8 %42, i8* %5, align 1
  br label %22, !llvm.loop !2

43:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @bpf_sysctl_get_name(%struct.bpf_sysctl*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}

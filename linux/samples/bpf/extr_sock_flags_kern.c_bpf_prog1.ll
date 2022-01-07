; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_sock_flags_kern.c_bpf_prog1.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_sock_flags_kern.c_bpf_prog1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock = type { i32, i32, i32 }

@__const.bpf_prog1.fmt = private unnamed_addr constant [39 x i8] c"socket: family %d type %d protocol %d\0A\00", align 16
@__const.bpf_prog1.fmt2 = private unnamed_addr constant [23 x i8] c"socket: uid %u gid %u\0A\00", align 16
@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog1(%struct.bpf_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock*, align 8
  %4 = alloca [39 x i8], align 16
  %5 = alloca [23 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_sock* %0, %struct.bpf_sock** %3, align 8
  %9 = bitcast [39 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([39 x i8], [39 x i8]* @__const.bpf_prog1.fmt, i32 0, i32 0), i64 39, i1 false)
  %10 = bitcast [23 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.bpf_prog1.fmt2, i32 0, i32 0), i64 23, i1 false)
  %11 = call i32 (...) @bpf_get_current_uid_gid()
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 32
  store i32 %14, i32* %8, align 4
  %15 = getelementptr inbounds [39 x i8], [39 x i8]* %4, i64 0, i64 0
  %16 = load %struct.bpf_sock*, %struct.bpf_sock** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bpf_sock*, %struct.bpf_sock** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bpf_sock*, %struct.bpf_sock** %3, align 8
  %23 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, i32, i32, ...) @bpf_trace_printk(i8* %15, i32 39, i32 %18, i32 %21, i32 %24)
  %26 = getelementptr inbounds [23 x i8], [23 x i8]* %5, i64 0, i64 0
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i8*, i32, i32, i32, ...) @bpf_trace_printk(i8* %26, i32 23, i32 %27, i32 %28)
  %30 = load %struct.bpf_sock*, %struct.bpf_sock** %3, align 8
  %31 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PF_INET6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %1
  %36 = load %struct.bpf_sock*, %struct.bpf_sock** %3, align 8
  %37 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SOCK_RAW, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.bpf_sock*, %struct.bpf_sock** %3, align 8
  %43 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %41, %35, %1
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bpf_get_current_uid_gid(...) #2

declare dso_local i32 @bpf_trace_printk(i8*, i32, i32, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

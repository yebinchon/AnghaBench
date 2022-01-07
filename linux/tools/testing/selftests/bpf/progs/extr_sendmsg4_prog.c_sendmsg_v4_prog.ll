; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sendmsg4_prog.c_sendmsg_v4_prog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sendmsg4_prog.c_sendmsg_v4_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_addr = type { i64, i32, i32, i64 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@SRC1_IP4 = common dso_local global i32 0, align 4
@SRC2_IP4 = common dso_local global i32 0, align 4
@SRC_REWRITE_IP4 = common dso_local global i32 0, align 4
@DST_IP4 = common dso_local global i32 0, align 4
@DST_PORT = common dso_local global i32 0, align 4
@DST_REWRITE_IP4 = common dso_local global i32 0, align 4
@DST_REWRITE_PORT4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendmsg_v4_prog(%struct.bpf_sock_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_addr*, align 8
  store %struct.bpf_sock_addr* %0, %struct.bpf_sock_addr** %3, align 8
  %4 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %5 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SOCK_DGRAM, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %12 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SRC1_IP4, align 4
  %15 = call i32 @bpf_htonl(i32 %14)
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SRC2_IP4, align 4
  %22 = call i32 @bpf_htonl(i32 %21)
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17, %10
  %25 = load i32, i32* @SRC_REWRITE_IP4, align 4
  %26 = call i32 @bpf_htonl(i32 %25)
  %27 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %28 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %30

29:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %57

30:                                               ; preds = %24
  %31 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %32 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 24
  %35 = load i32, i32* @DST_IP4, align 4
  %36 = call i32 @bpf_htonl(i32 %35)
  %37 = ashr i32 %36, 24
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %30
  %40 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %41 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @DST_PORT, align 4
  %44 = call i64 @bpf_htons(i32 %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i32, i32* @DST_REWRITE_IP4, align 4
  %48 = call i32 @bpf_htonl(i32 %47)
  %49 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %50 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @DST_REWRITE_PORT4, align 4
  %52 = call i64 @bpf_htons(i32 %51)
  %53 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  br label %56

55:                                               ; preds = %39, %30
  store i32 0, i32* %2, align 4
  br label %57

56:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %29, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @bpf_htonl(i32) #1

declare dso_local i64 @bpf_htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

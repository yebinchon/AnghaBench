; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sendmsg6_prog.c_sendmsg_v6_prog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sendmsg6_prog.c_sendmsg_v6_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_addr = type { i64, i64*, i64*, i32 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@SRC_REWRITE_IP6_0 = common dso_local global i32 0, align 4
@SRC_REWRITE_IP6_1 = common dso_local global i32 0, align 4
@SRC_REWRITE_IP6_2 = common dso_local global i32 0, align 4
@SRC_REWRITE_IP6_3 = common dso_local global i32 0, align 4
@DST_REWRITE_IP6_0 = common dso_local global i32 0, align 4
@DST_REWRITE_IP6_1 = common dso_local global i32 0, align 4
@DST_REWRITE_IP6_2 = common dso_local global i32 0, align 4
@DST_REWRITE_IP6_3 = common dso_local global i32 0, align 4
@DST_REWRITE_PORT6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendmsg_v6_prog(%struct.bpf_sock_addr* %0) #0 {
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
  br label %91

10:                                               ; preds = %1
  %11 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %12 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 3
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @bpf_htonl(i32 1)
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 3
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @bpf_htonl(i32 0)
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %18, %10
  %27 = load i32, i32* @SRC_REWRITE_IP6_0, align 4
  %28 = call i64 @bpf_htonl(i32 %27)
  %29 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %30 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %28, i64* %32, align 8
  %33 = load i32, i32* @SRC_REWRITE_IP6_1, align 4
  %34 = call i64 @bpf_htonl(i32 %33)
  %35 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %36 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  store i64 %34, i64* %38, align 8
  %39 = load i32, i32* @SRC_REWRITE_IP6_2, align 4
  %40 = call i64 @bpf_htonl(i32 %39)
  %41 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %42 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  store i64 %40, i64* %44, align 8
  %45 = load i32, i32* @SRC_REWRITE_IP6_3, align 4
  %46 = call i64 @bpf_htonl(i32 %45)
  %47 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %48 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 3
  store i64 %46, i64* %50, align 8
  br label %52

51:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %91

52:                                               ; preds = %26
  %53 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @bpf_htonl(i32 -87117812)
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %52
  %61 = load i32, i32* @DST_REWRITE_IP6_0, align 4
  %62 = call i64 @bpf_htonl(i32 %61)
  %63 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %64 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 %62, i64* %66, align 8
  %67 = load i32, i32* @DST_REWRITE_IP6_1, align 4
  %68 = call i64 @bpf_htonl(i32 %67)
  %69 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %70 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  store i64 %68, i64* %72, align 8
  %73 = load i32, i32* @DST_REWRITE_IP6_2, align 4
  %74 = call i64 @bpf_htonl(i32 %73)
  %75 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %76 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  store i64 %74, i64* %78, align 8
  %79 = load i32, i32* @DST_REWRITE_IP6_3, align 4
  %80 = call i64 @bpf_htonl(i32 %79)
  %81 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %82 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 3
  store i64 %80, i64* %84, align 8
  %85 = load i32, i32* @DST_REWRITE_PORT6, align 4
  %86 = call i32 @bpf_htons(i32 %85)
  %87 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %88 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  br label %90

89:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %91

90:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %89, %51, %9
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @bpf_htonl(i32) #1

declare dso_local i32 @bpf_htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_balancer_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_balancer_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.eth_hdr = type { i32 }

@XDP_DROP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_md*)* @balancer_ingress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @balancer_ingress(%struct.xdp_md* %0) #0 section "xdp-test" {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.eth_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xdp_md* %0, %struct.xdp_md** %3, align 8
  %9 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %10 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %4, align 8
  %13 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %14 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.eth_hdr*
  store %struct.eth_hdr* %18, %struct.eth_hdr** %6, align 8
  store i32 4, i32* %8, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ugt i8* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @XDP_DROP, align 4
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %1
  %28 = load %struct.eth_hdr*, %struct.eth_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bpf_ntohs(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ETH_P_IP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %40 = call i32 @process_packet(i8* %36, i32 %37, i8* %38, i32 0, %struct.xdp_md* %39)
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ETH_P_IPV6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %50 = call i32 @process_packet(i8* %46, i32 %47, i8* %48, i32 1, %struct.xdp_md* %49)
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @XDP_DROP, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %45, %35, %25
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @bpf_ntohs(i32) #1

declare dso_local i32 @process_packet(i8*, i32, i8*, i32, %struct.xdp_md*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

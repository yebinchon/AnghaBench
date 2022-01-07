; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_xdping_kern.c_xdping_server.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_xdping_kern.c_xdping_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.ethhdr = type { i32 }
%struct.icmphdr = type { i64, i32 }
%struct.iphdr = type { i32, i32 }

@ICMP_ECHO = common dso_local global i32 0, align 4
@XDP_TX = common dso_local global i32 0, align 4
@ICMP_ECHOREPLY = common dso_local global i32 0, align 4
@ICMP_ECHO_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdping_server(%struct.xdp_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca %struct.icmphdr*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xdp_md* %0, %struct.xdp_md** %3, align 8
  %11 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %12 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %16 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.ethhdr*
  store %struct.ethhdr* %20, %struct.ethhdr** %6, align 8
  %21 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %22 = load i32, i32* @ICMP_ECHO, align 4
  %23 = call i32 @icmp_check(%struct.xdp_md* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @XDP_TX, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %2, align 4
  br label %61

29:                                               ; preds = %1
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr i8, i8* %30, i64 4
  %32 = bitcast i8* %31 to %struct.iphdr*
  store %struct.iphdr* %32, %struct.iphdr** %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr i8, i8* %33, i64 4
  %35 = getelementptr i8, i8* %34, i64 8
  %36 = bitcast i8* %35 to %struct.icmphdr*
  store %struct.icmphdr* %36, %struct.icmphdr** %7, align 8
  %37 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @swap_src_dst_mac(i8* %40)
  %42 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ICMP_ECHOREPLY, align 4
  %51 = load %struct.icmphdr*, %struct.icmphdr** %7, align 8
  %52 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.icmphdr*, %struct.icmphdr** %7, align 8
  %54 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.icmphdr*, %struct.icmphdr** %7, align 8
  %56 = load i32, i32* @ICMP_ECHO_LEN, align 4
  %57 = call i64 @ipv4_csum(%struct.icmphdr* %55, i32 %56)
  %58 = load %struct.icmphdr*, %struct.icmphdr** %7, align 8
  %59 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @XDP_TX, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %29, %27
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @icmp_check(%struct.xdp_md*, i32) #1

declare dso_local i32 @swap_src_dst_mac(i8*) #1

declare dso_local i64 @ipv4_csum(%struct.icmphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

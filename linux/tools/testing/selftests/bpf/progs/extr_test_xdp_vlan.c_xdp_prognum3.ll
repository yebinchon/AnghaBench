; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_vlan.c_xdp_prognum3.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_vlan.c_xdp_prognum3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.ethhdr = type { i32 }
%struct.parse_pkt = type { i64, i32 }

@XDP_ABORTED = common dso_local global i32 0, align 4
@XDP_PASS = common dso_local global i32 0, align 4
@VLAN_HDR_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_prognum3(%struct.xdp_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca %struct.parse_pkt, align 8
  store %struct.xdp_md* %0, %struct.xdp_md** %3, align 8
  %8 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %9 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %4, align 8
  %12 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %13 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.ethhdr*
  store %struct.ethhdr* %17, %struct.ethhdr** %6, align 8
  %18 = bitcast %struct.parse_pkt* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @parse_eth_frame(%struct.ethhdr* %19, i8* %20, %struct.parse_pkt* %7)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @XDP_ABORTED, align 4
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.parse_pkt, %struct.parse_pkt* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @XDP_PASS, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @shift_mac_4bytes_32bit(i8* %32)
  %34 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %35 = load i32, i32* @VLAN_HDR_SZ, align 4
  %36 = call i32 @bpf_xdp_adjust_head(%struct.xdp_md* %34, i32 %35)
  %37 = load i32, i32* @XDP_PASS, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %29, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_eth_frame(%struct.ethhdr*, i8*, %struct.parse_pkt*) #2

declare dso_local i32 @shift_mac_4bytes_32bit(i8*) #2

declare dso_local i32 @bpf_xdp_adjust_head(%struct.xdp_md*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

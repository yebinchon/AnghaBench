; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_vlan.c_xdp_prognum1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_vlan.c_xdp_prognum1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.parse_pkt = type { i64, i32, i32 }
%struct._vlan_hdr = type { i32 }

@XDP_ABORTED = common dso_local global i32 0, align 4
@TESTVLAN = common dso_local global i64 0, align 8
@TO_VLAN = common dso_local global i32 0, align 4
@XDP_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_prognum1(%struct.xdp_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.parse_pkt, align 8
  %7 = alloca %struct._vlan_hdr*, align 8
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
  %16 = bitcast %struct.parse_pkt* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @parse_eth_frame(i8* %17, i8* %18, %struct.parse_pkt* %6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @XDP_ABORTED, align 4
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.parse_pkt, %struct.parse_pkt* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TESTVLAN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds %struct.parse_pkt, %struct.parse_pkt* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %29, i64 %32
  %34 = bitcast i8* %33 to %struct._vlan_hdr*
  store %struct._vlan_hdr* %34, %struct._vlan_hdr** %7, align 8
  %35 = load %struct._vlan_hdr*, %struct._vlan_hdr** %7, align 8
  %36 = getelementptr inbounds %struct._vlan_hdr, %struct._vlan_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bpf_ntohs(i32 %37)
  %39 = and i32 %38, 61440
  %40 = load i32, i32* @TO_VLAN, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @bpf_htons(i32 %41)
  %43 = load %struct._vlan_hdr*, %struct._vlan_hdr** %7, align 8
  %44 = getelementptr inbounds %struct._vlan_hdr, %struct._vlan_hdr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %28, %23
  %46 = load i32, i32* @XDP_PASS, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %21
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_eth_frame(i8*, i8*, %struct.parse_pkt*) #2

declare dso_local i32 @bpf_htons(i32) #2

declare dso_local i32 @bpf_ntohs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

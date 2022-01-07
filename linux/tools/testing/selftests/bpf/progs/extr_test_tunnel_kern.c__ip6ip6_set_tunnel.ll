; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tunnel_kern.c__ip6ip6_set_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tunnel_kern.c__ip6ip6_set_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64, i64 }
%struct.bpf_tunnel_key = type { i32, i8** }
%struct.ipv6hdr = type { i32 }
%struct.tcphdr = type { i32 }

@TC_ACT_SHOT = common dso_local global i32 0, align 4
@BPF_F_TUNINFO_IPV6 = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ip6ip6_set_tunnel(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca %struct.bpf_tunnel_key, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %10 = bitcast %struct.bpf_tunnel_key* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %16, %struct.ipv6hdr** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr i8, i8* %17, i64 4
  %19 = bitcast i8* %18 to %struct.tcphdr*
  store %struct.tcphdr* %19, %struct.tcphdr** %7, align 8
  %20 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr i8, i8* %24, i64 4
  %26 = getelementptr i8, i8* %25, i64 4
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = call i32 @ERROR(i32 1)
  %31 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %31, i32* %2, align 4
  br label %100

32:                                               ; preds = %1
  %33 = call i8* @bpf_htonl(i32 604101376)
  %34 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %4, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %33, i8** %36, align 8
  %37 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %4, i32 0, i32 0
  store i32 64, i32* %37, align 8
  %38 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %39 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 58
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = call i8* @bpf_htonl(i32 1)
  %44 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %4, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  store i8* %43, i8** %46, align 8
  br label %88

47:                                               ; preds = %32
  %48 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %49 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 6
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %54 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ERROR(i32 %55)
  %57 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %57, i32* %2, align 4
  br label %100

58:                                               ; preds = %47
  %59 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %60 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bpf_htons(i32 5200)
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = call i8* @bpf_htonl(i32 1)
  %66 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %4, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  store i8* %65, i8** %68, align 8
  br label %87

69:                                               ; preds = %58
  %70 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %71 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bpf_htons(i32 5201)
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = call i8* @bpf_htonl(i32 2)
  %77 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %4, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 3
  store i8* %76, i8** %79, align 8
  br label %86

80:                                               ; preds = %69
  %81 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %82 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ERROR(i32 %83)
  %85 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %85, i32* %2, align 4
  br label %100

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %64
  br label %88

88:                                               ; preds = %87, %42
  %89 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %90 = load i32, i32* @BPF_F_TUNINFO_IPV6, align 4
  %91 = call i32 @bpf_skb_set_tunnel_key(%struct.__sk_buff* %89, %struct.bpf_tunnel_key* %4, i32 16, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @ERROR(i32 %95)
  %97 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %97, i32* %2, align 4
  br label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %94, %80, %52, %29
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ERROR(i32) #2

declare dso_local i8* @bpf_htonl(i32) #2

declare dso_local i32 @bpf_htons(i32) #2

declare dso_local i32 @bpf_skb_set_tunnel_key(%struct.__sk_buff*, %struct.bpf_tunnel_key*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

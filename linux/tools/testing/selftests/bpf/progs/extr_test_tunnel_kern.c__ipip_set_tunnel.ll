; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tunnel_kern.c__ipip_set_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tunnel_kern.c__ipip_set_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64, i64 }
%struct.bpf_tunnel_key = type { i32, i32 }
%struct.iphdr = type { i64, i32 }
%struct.tcphdr = type { i64 }

@TC_ACT_SHOT = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TC_ACT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ipip_set_tunnel(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca %struct.bpf_tunnel_key, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %10 = bitcast %struct.bpf_tunnel_key* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.iphdr*
  store %struct.iphdr* %16, %struct.iphdr** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr i8, i8* %17, i64 16
  %19 = bitcast i8* %18 to %struct.tcphdr*
  store %struct.tcphdr* %19, %struct.tcphdr** %7, align 8
  %20 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr i8, i8* %24, i64 16
  %26 = getelementptr i8, i8* %25, i64 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = call i32 @ERROR(i32 1)
  %31 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %4, i32 0, i32 0
  store i32 64, i32* %33, align 4
  %34 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPPROTO_ICMP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %4, i32 0, i32 1
  store i32 -1408237212, i32* %40, align 4
  br label %74

41:                                               ; preds = %32
  %42 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPPROTO_TCP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 5
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %41
  %53 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %53, i32* %2, align 4
  br label %85

54:                                               ; preds = %47
  %55 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %56 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @bpf_htons(i32 5200)
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %4, i32 0, i32 1
  store i32 -1408237212, i32* %61, align 4
  br label %73

62:                                               ; preds = %54
  %63 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %64 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @bpf_htons(i32 5201)
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %4, i32 0, i32 1
  store i32 -1408237211, i32* %69, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %71, i32* %2, align 4
  br label %85

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73, %39
  %75 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %76 = call i32 @bpf_skb_set_tunnel_key(%struct.__sk_buff* %75, %struct.bpf_tunnel_key* %4, i32 8, i32 0)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ERROR(i32 %80)
  %82 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %79, %70, %52, %29
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ERROR(i32) #2

declare dso_local i64 @bpf_htons(i32) #2

declare dso_local i32 @bpf_skb_set_tunnel_key(%struct.__sk_buff*, %struct.bpf_tunnel_key*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

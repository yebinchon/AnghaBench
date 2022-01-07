; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_do_generic_redirect_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_do_generic_redirect_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xdp_buff = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.bpf_map = type { i64 }
%struct.bpf_redirect_info = type { i32, i32*, i64 }
%struct.bpf_dtab_netdev = type { i32 }
%struct.xdp_sock = type { i32 }

@bpf_redirect_info = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_DEVMAP = common dso_local global i64 0, align 8
@BPF_MAP_TYPE_DEVMAP_HASH = common dso_local global i64 0, align 8
@BPF_MAP_TYPE_XSKMAP = common dso_local global i64 0, align 8
@EBADRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.xdp_buff*, %struct.bpf_prog*, %struct.bpf_map*)* @xdp_do_generic_redirect_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_do_generic_redirect_map(%struct.net_device* %0, %struct.sk_buff* %1, %struct.xdp_buff* %2, %struct.bpf_prog* %3, %struct.bpf_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.xdp_buff*, align 8
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca %struct.bpf_map*, align 8
  %12 = alloca %struct.bpf_redirect_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bpf_dtab_netdev*, align 8
  %17 = alloca %struct.xdp_sock*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %9, align 8
  store %struct.bpf_prog* %3, %struct.bpf_prog** %10, align 8
  store %struct.bpf_map* %4, %struct.bpf_map** %11, align 8
  %18 = call %struct.bpf_redirect_info* @this_cpu_ptr(i32* @bpf_redirect_info)
  store %struct.bpf_redirect_info* %18, %struct.bpf_redirect_info** %12, align 8
  %19 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %12, align 8
  %20 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %13, align 8
  %22 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %12, align 8
  %23 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  store i8* %25, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %26 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %12, align 8
  %27 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %12, align 8
  %29 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %12, align 8
  %31 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @WRITE_ONCE(i32 %32, i32* null)
  %34 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  %35 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BPF_MAP_TYPE_DEVMAP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %5
  %40 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  %41 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BPF_MAP_TYPE_DEVMAP_HASH, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39, %5
  %46 = load i8*, i8** %14, align 8
  %47 = bitcast i8* %46 to %struct.bpf_dtab_netdev*
  store %struct.bpf_dtab_netdev* %47, %struct.bpf_dtab_netdev** %16, align 8
  %48 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %16, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %51 = call i32 @dev_map_generic_redirect(%struct.bpf_dtab_netdev* %48, %struct.sk_buff* %49, %struct.bpf_prog* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %86

56:                                               ; preds = %45
  br label %79

57:                                               ; preds = %39
  %58 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  %59 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BPF_MAP_TYPE_XSKMAP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i8*, i8** %14, align 8
  %65 = bitcast i8* %64 to %struct.xdp_sock*
  store %struct.xdp_sock* %65, %struct.xdp_sock** %17, align 8
  %66 = load %struct.xdp_sock*, %struct.xdp_sock** %17, align 8
  %67 = load %struct.xdp_buff*, %struct.xdp_buff** %9, align 8
  %68 = call i32 @xsk_generic_rcv(%struct.xdp_sock* %66, %struct.xdp_buff* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %86

72:                                               ; preds = %63
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @consume_skb(%struct.sk_buff* %73)
  br label %78

75:                                               ; preds = %57
  %76 = load i32, i32* @EBADRQC, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %15, align 4
  br label %86

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.net_device*, %struct.net_device** %7, align 8
  %81 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @_trace_xdp_redirect_map(%struct.net_device* %80, %struct.bpf_prog* %81, i8* %82, %struct.bpf_map* %83, i64 %84)
  store i32 0, i32* %6, align 4
  br label %95

86:                                               ; preds = %75, %71, %55
  %87 = load %struct.net_device*, %struct.net_device** %7, align 8
  %88 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @_trace_xdp_redirect_map_err(%struct.net_device* %87, %struct.bpf_prog* %88, i8* %89, %struct.bpf_map* %90, i64 %91, i32 %92)
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %86, %79
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.bpf_redirect_info* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32*) #1

declare dso_local i32 @dev_map_generic_redirect(%struct.bpf_dtab_netdev*, %struct.sk_buff*, %struct.bpf_prog*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xsk_generic_rcv(%struct.xdp_sock*, %struct.xdp_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @_trace_xdp_redirect_map(%struct.net_device*, %struct.bpf_prog*, i8*, %struct.bpf_map*, i64) #1

declare dso_local i32 @_trace_xdp_redirect_map_err(%struct.net_device*, %struct.bpf_prog*, i8*, %struct.bpf_map*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

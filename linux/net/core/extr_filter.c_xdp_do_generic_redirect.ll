; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_do_generic_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_do_generic_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.xdp_buff = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.bpf_redirect_info = type { i64, i32 }
%struct.bpf_map = type { i32 }

@bpf_redirect_info = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_do_generic_redirect(%struct.net_device* %0, %struct.sk_buff* %1, %struct.xdp_buff* %2, %struct.bpf_prog* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.xdp_buff*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.bpf_redirect_info*, align 8
  %11 = alloca %struct.bpf_map*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %8, align 8
  store %struct.bpf_prog* %3, %struct.bpf_prog** %9, align 8
  %15 = call %struct.bpf_redirect_info* @this_cpu_ptr(i32* @bpf_redirect_info)
  store %struct.bpf_redirect_info* %15, %struct.bpf_redirect_info** %10, align 8
  %16 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %10, align 8
  %17 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.bpf_map* @READ_ONCE(i32 %18)
  store %struct.bpf_map* %19, %struct.bpf_map** %11, align 8
  %20 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %10, align 8
  %21 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  %24 = icmp ne %struct.bpf_map* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %30 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  %31 = call i32 @xdp_do_generic_redirect_map(%struct.net_device* %26, %struct.sk_buff* %27, %struct.xdp_buff* %28, %struct.bpf_prog* %29, %struct.bpf_map* %30)
  store i32 %31, i32* %5, align 4
  br label %76

32:                                               ; preds = %4
  %33 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %10, align 8
  %34 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i32 @dev_net(%struct.net_device* %35)
  %37 = load i64, i64* %12, align 8
  %38 = call %struct.net_device* @dev_get_by_index_rcu(i32 %36, i64 %37)
  store %struct.net_device* %38, %struct.net_device** %13, align 8
  %39 = load %struct.net_device*, %struct.net_device** %13, align 8
  %40 = icmp ne %struct.net_device* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  br label %69

48:                                               ; preds = %32
  %49 = load %struct.net_device*, %struct.net_device** %13, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @xdp_ok_fwd_dev(%struct.net_device* %49, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %69

58:                                               ; preds = %48
  %59 = load %struct.net_device*, %struct.net_device** %13, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  store %struct.net_device* %59, %struct.net_device** %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @_trace_xdp_redirect(%struct.net_device* %62, %struct.bpf_prog* %63, i64 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %68 = call i32 @generic_xdp_tx(%struct.sk_buff* %66, %struct.bpf_prog* %67)
  store i32 0, i32* %5, align 4
  br label %76

69:                                               ; preds = %57, %45
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @_trace_xdp_redirect_err(%struct.net_device* %70, %struct.bpf_prog* %71, i64 %72, i32 %73)
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %58, %25
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.bpf_redirect_info* @this_cpu_ptr(i32*) #1

declare dso_local %struct.bpf_map* @READ_ONCE(i32) #1

declare dso_local i32 @xdp_do_generic_redirect_map(%struct.net_device*, %struct.sk_buff*, %struct.xdp_buff*, %struct.bpf_prog*, %struct.bpf_map*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(i32, i64) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xdp_ok_fwd_dev(%struct.net_device*, i32) #1

declare dso_local i32 @_trace_xdp_redirect(%struct.net_device*, %struct.bpf_prog*, i64) #1

declare dso_local i32 @generic_xdp_tx(%struct.sk_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @_trace_xdp_redirect_err(%struct.net_device*, %struct.bpf_prog*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

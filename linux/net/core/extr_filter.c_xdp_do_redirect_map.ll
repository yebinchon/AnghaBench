; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_do_redirect_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_do_redirect_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_buff = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.bpf_map = type { i32 }
%struct.bpf_redirect_info = type { %struct.bpf_map*, i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.xdp_buff*, %struct.bpf_prog*, %struct.bpf_map*, %struct.bpf_redirect_info*)* @xdp_do_redirect_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_do_redirect_map(%struct.net_device* %0, %struct.xdp_buff* %1, %struct.bpf_prog* %2, %struct.bpf_map* %3, %struct.bpf_redirect_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.xdp_buff*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.bpf_map*, align 8
  %11 = alloca %struct.bpf_redirect_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %8, align 8
  store %struct.bpf_prog* %2, %struct.bpf_prog** %9, align 8
  store %struct.bpf_map* %3, %struct.bpf_map** %10, align 8
  store %struct.bpf_redirect_info* %4, %struct.bpf_redirect_info** %11, align 8
  %15 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %11, align 8
  %16 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %11, align 8
  %19 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to i8*
  store i8* %21, i8** %13, align 8
  %22 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %11, align 8
  %23 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %11, align 8
  %25 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %11, align 8
  %27 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @WRITE_ONCE(i32 %28, i32* null)
  %30 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %11, align 8
  %31 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %30, i32 0, i32 0
  %32 = load %struct.bpf_map*, %struct.bpf_map** %31, align 8
  %33 = icmp ne %struct.bpf_map* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %5
  %35 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %11, align 8
  %36 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %35, i32 0, i32 0
  %37 = load %struct.bpf_map*, %struct.bpf_map** %36, align 8
  %38 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %39 = icmp ne %struct.bpf_map* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 (...) @xdp_do_flush_map()
  br label %45

45:                                               ; preds = %43, %34, %5
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %49 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @__bpf_tx_xdp_map(%struct.net_device* %46, i8* %47, %struct.bpf_map* %48, %struct.xdp_buff* %49, i64 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %66

56:                                               ; preds = %45
  %57 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %58 = load %struct.bpf_redirect_info*, %struct.bpf_redirect_info** %11, align 8
  %59 = getelementptr inbounds %struct.bpf_redirect_info, %struct.bpf_redirect_info* %58, i32 0, i32 0
  store %struct.bpf_map* %57, %struct.bpf_map** %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @_trace_xdp_redirect_map(%struct.net_device* %60, %struct.bpf_prog* %61, i8* %62, %struct.bpf_map* %63, i64 %64)
  store i32 0, i32* %6, align 4
  br label %75

66:                                               ; preds = %55
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  %68 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @_trace_xdp_redirect_map_err(%struct.net_device* %67, %struct.bpf_prog* %68, i8* %69, %struct.bpf_map* %70, i64 %71, i32 %72)
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %66, %56
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @WRITE_ONCE(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xdp_do_flush_map(...) #1

declare dso_local i32 @__bpf_tx_xdp_map(%struct.net_device*, i8*, %struct.bpf_map*, %struct.xdp_buff*, i64) #1

declare dso_local i32 @_trace_xdp_redirect_map(%struct.net_device*, %struct.bpf_prog*, i8*, %struct.bpf_map*, i64) #1

declare dso_local i32 @_trace_xdp_redirect_map_err(%struct.net_device*, %struct.bpf_prog*, i8*, %struct.bpf_map*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

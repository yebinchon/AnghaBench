; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c_cpu_map_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cpumap.c_cpu_map_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_cpu_map_entry = type { i32 }
%struct.xdp_frame = type { i32, i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bpf_cpu_map_entry*, %struct.xdp_frame*, %struct.sk_buff*)* @cpu_map_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cpu_map_build_skb(%struct.bpf_cpu_map_entry* %0, %struct.xdp_frame* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.bpf_cpu_map_entry*, align 8
  %6 = alloca %struct.xdp_frame*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.bpf_cpu_map_entry* %0, %struct.bpf_cpu_map_entry** %5, align 8
  store %struct.xdp_frame* %1, %struct.xdp_frame** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %12 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = add i64 32, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %18 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %19, %20
  %22 = call i32 @SKB_DATA_ALIGN(i32 %21)
  %23 = call i32 @SKB_DATA_ALIGN(i32 4)
  %24 = add i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %26 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sub i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %10, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.sk_buff* @build_skb_around(%struct.sk_buff* %32, i8* %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %75

43:                                               ; preds = %3
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @skb_reserve(%struct.sk_buff* %44, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %49 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__skb_put(%struct.sk_buff* %47, i32 %50)
  %52 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %53 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %59 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @skb_metadata_set(%struct.sk_buff* %57, i64 %60)
  br label %62

62:                                               ; preds = %56, %43
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %65 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @eth_type_trans(%struct.sk_buff* %63, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %71 = call i32 @xdp_release_frame(%struct.xdp_frame* %70)
  %72 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %73 = call i32 @xdp_scrub_frame(%struct.xdp_frame* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %74, %struct.sk_buff** %4, align 8
  br label %75

75:                                               ; preds = %62, %42
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %76
}

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local %struct.sk_buff* @build_skb_around(%struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_metadata_set(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @xdp_release_frame(%struct.xdp_frame*) #1

declare dso_local i32 @xdp_scrub_frame(%struct.xdp_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

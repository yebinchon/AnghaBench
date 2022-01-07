; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_bpf_has_valid_srh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_bpf_has_valid_srh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.seg6_bpf_srh_state = type { i32, i32, %struct.ipv6_sr_hdr* }
%struct.ipv6_sr_hdr = type { i32 }

@seg6_bpf_srh_states = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seg6_bpf_has_valid_srh(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.seg6_bpf_srh_state*, align 8
  %5 = alloca %struct.ipv6_sr_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = call %struct.seg6_bpf_srh_state* @this_cpu_ptr(i32* @seg6_bpf_srh_states)
  store %struct.seg6_bpf_srh_state* %6, %struct.seg6_bpf_srh_state** %4, align 8
  %7 = load %struct.seg6_bpf_srh_state*, %struct.seg6_bpf_srh_state** %4, align 8
  %8 = getelementptr inbounds %struct.seg6_bpf_srh_state, %struct.seg6_bpf_srh_state* %7, i32 0, i32 2
  %9 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %8, align 8
  store %struct.ipv6_sr_hdr* %9, %struct.ipv6_sr_hdr** %5, align 8
  %10 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %5, align 8
  %11 = icmp eq %struct.ipv6_sr_hdr* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.seg6_bpf_srh_state*, %struct.seg6_bpf_srh_state** %4, align 8
  %18 = getelementptr inbounds %struct.seg6_bpf_srh_state, %struct.seg6_bpf_srh_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %16
  %26 = load %struct.seg6_bpf_srh_state*, %struct.seg6_bpf_srh_state** %4, align 8
  %27 = getelementptr inbounds %struct.seg6_bpf_srh_state, %struct.seg6_bpf_srh_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 7
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %52

32:                                               ; preds = %25
  %33 = load %struct.seg6_bpf_srh_state*, %struct.seg6_bpf_srh_state** %4, align 8
  %34 = getelementptr inbounds %struct.seg6_bpf_srh_state, %struct.seg6_bpf_srh_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 3
  %37 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %5, align 8
  %40 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = shl i32 %43, 3
  %45 = call i32 @seg6_validate_srh(%struct.ipv6_sr_hdr* %39, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %52

48:                                               ; preds = %32
  %49 = load %struct.seg6_bpf_srh_state*, %struct.seg6_bpf_srh_state** %4, align 8
  %50 = getelementptr inbounds %struct.seg6_bpf_srh_state, %struct.seg6_bpf_srh_state* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %16
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %47, %31, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.seg6_bpf_srh_state* @this_cpu_ptr(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @seg6_validate_srh(%struct.ipv6_sr_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

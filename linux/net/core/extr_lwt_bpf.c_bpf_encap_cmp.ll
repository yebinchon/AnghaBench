; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_encap_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_encap_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_state = type { i32 }
%struct.bpf_lwt = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)* @bpf_encap_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_encap_cmp(%struct.lwtunnel_state* %0, %struct.lwtunnel_state* %1) #0 {
  %3 = alloca %struct.lwtunnel_state*, align 8
  %4 = alloca %struct.lwtunnel_state*, align 8
  %5 = alloca %struct.bpf_lwt*, align 8
  %6 = alloca %struct.bpf_lwt*, align 8
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %3, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %4, align 8
  %7 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %3, align 8
  %8 = call %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.lwtunnel_state* %7)
  store %struct.bpf_lwt* %8, %struct.bpf_lwt** %5, align 8
  %9 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %10 = call %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.lwtunnel_state* %9)
  store %struct.bpf_lwt* %10, %struct.bpf_lwt** %6, align 8
  %11 = load %struct.bpf_lwt*, %struct.bpf_lwt** %5, align 8
  %12 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %11, i32 0, i32 2
  %13 = load %struct.bpf_lwt*, %struct.bpf_lwt** %6, align 8
  %14 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %13, i32 0, i32 2
  %15 = call i64 @bpf_lwt_prog_cmp(i32* %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load %struct.bpf_lwt*, %struct.bpf_lwt** %5, align 8
  %19 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %18, i32 0, i32 1
  %20 = load %struct.bpf_lwt*, %struct.bpf_lwt** %6, align 8
  %21 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %20, i32 0, i32 1
  %22 = call i64 @bpf_lwt_prog_cmp(i32* %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.bpf_lwt*, %struct.bpf_lwt** %5, align 8
  %26 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %25, i32 0, i32 0
  %27 = load %struct.bpf_lwt*, %struct.bpf_lwt** %6, align 8
  %28 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %27, i32 0, i32 0
  %29 = call i64 @bpf_lwt_prog_cmp(i32* %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %24, %17, %2
  %32 = phi i1 [ true, %17 ], [ true, %2 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.lwtunnel_state*) #1

declare dso_local i64 @bpf_lwt_prog_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

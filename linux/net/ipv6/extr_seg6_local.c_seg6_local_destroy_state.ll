; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_destroy_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_destroy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_state = type { i32 }
%struct.seg6_local_lwt = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SEG6_LOCAL_BPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwtunnel_state*)* @seg6_local_destroy_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seg6_local_destroy_state(%struct.lwtunnel_state* %0) #0 {
  %2 = alloca %struct.lwtunnel_state*, align 8
  %3 = alloca %struct.seg6_local_lwt*, align 8
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %2, align 8
  %4 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %2, align 8
  %5 = call %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state* %4)
  store %struct.seg6_local_lwt* %5, %struct.seg6_local_lwt** %3, align 8
  %6 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %3, align 8
  %7 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @kfree(i32 %8)
  %10 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %3, align 8
  %11 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SEG6_LOCAL_BPF, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %3, align 8
  %21 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %3, align 8
  %26 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bpf_prog_put(i32 %28)
  br label %30

30:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @bpf_prog_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

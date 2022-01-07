; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_attachment_flags_ok.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_attachment_flags_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_attachment_info = type { i32, i64 }
%struct.netdev_bpf = type { i32, i32 }

@XDP_FLAGS_MODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"program loaded with different flags\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_attachment_flags_ok(%struct.xdp_attachment_info* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdp_attachment_info*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  store %struct.xdp_attachment_info* %0, %struct.xdp_attachment_info** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %6 = load %struct.xdp_attachment_info*, %struct.xdp_attachment_info** %4, align 8
  %7 = getelementptr inbounds %struct.xdp_attachment_info, %struct.xdp_attachment_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %12 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xdp_attachment_info*, %struct.xdp_attachment_info** %4, align 8
  %15 = getelementptr inbounds %struct.xdp_attachment_info, %struct.xdp_attachment_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = xor i32 %13, %16
  %18 = load i32, i32* @XDP_FLAGS_MODES, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %23 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @NL_SET_ERR_MSG(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %27

26:                                               ; preds = %10, %2
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @NL_SET_ERR_MSG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

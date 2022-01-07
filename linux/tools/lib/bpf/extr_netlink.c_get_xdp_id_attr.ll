; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_netlink.c_get_xdp_id_attr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_netlink.c_get_xdp_id_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XDP_ATTACHED_MULTI = common dso_local global i8 0, align 1
@IFLA_XDP_PROG_ID = common dso_local global i8 0, align 1
@XDP_FLAGS_DRV_MODE = common dso_local global i32 0, align 4
@IFLA_XDP_DRV_PROG_ID = common dso_local global i8 0, align 1
@XDP_FLAGS_HW_MODE = common dso_local global i32 0, align 4
@IFLA_XDP_HW_PROG_ID = common dso_local global i8 0, align 1
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@IFLA_XDP_SKB_PROG_ID = common dso_local global i8 0, align 1
@IFLA_XDP_UNSPEC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8, i32)* @get_xdp_id_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_xdp_id_attr(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @XDP_ATTACHED_MULTI, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8, i8* @IFLA_XDP_PROG_ID, align 1
  store i8 %12, i8* %3, align 1
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i8, i8* @IFLA_XDP_DRV_PROG_ID, align 1
  store i8 %19, i8* %3, align 1
  br label %36

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @XDP_FLAGS_HW_MODE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i8, i8* @IFLA_XDP_HW_PROG_ID, align 1
  store i8 %26, i8* %3, align 1
  br label %36

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i8, i8* @IFLA_XDP_SKB_PROG_ID, align 1
  store i8 %33, i8* %3, align 1
  br label %36

34:                                               ; preds = %27
  %35 = load i8, i8* @IFLA_XDP_UNSPEC, align 1
  store i8 %35, i8* %3, align 1
  br label %36

36:                                               ; preds = %34, %32, %25, %18, %11
  %37 = load i8, i8* %3, align 1
  ret i8 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

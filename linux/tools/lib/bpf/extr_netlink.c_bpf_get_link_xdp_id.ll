; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_netlink.c_bpf_get_link_xdp_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_netlink.c_bpf_get_link_xdp_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_id_md = type { i32, i32, i32 }

@XDP_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@XDP_FLAGS_DRV_MODE = common dso_local global i32 0, align 4
@XDP_FLAGS_HW_MODE = common dso_local global i32 0, align 4
@get_xdp_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_get_link_xdp_id(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_id_md, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.xdp_id_md* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @XDP_FLAGS_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %67

22:                                               ; preds = %3
  %23 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %24 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @XDP_FLAGS_HW_MODE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %67

42:                                               ; preds = %34, %22
  %43 = call i32 @libbpf_netlink_open(i32* %11)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %67

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = getelementptr inbounds %struct.xdp_id_md, %struct.xdp_id_md* %8, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds %struct.xdp_id_md, %struct.xdp_id_md* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @get_xdp_id, align 4
  %56 = call i32 @libbpf_nl_get_link(i32 %53, i32 %54, i32 %55, %struct.xdp_id_md* %8)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.xdp_id_md, %struct.xdp_id_md* %8, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %48
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %46, %39, %19
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @libbpf_netlink_open(i32*) #2

declare dso_local i32 @libbpf_nl_get_link(i32, i32, i32, %struct.xdp_id_md*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

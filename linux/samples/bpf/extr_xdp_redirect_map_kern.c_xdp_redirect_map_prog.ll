; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_map_kern.c_xdp_redirect_map_prog.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_map_kern.c_xdp_redirect_map_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.ethhdr = type { i32 }

@XDP_DROP = common dso_local global i32 0, align 4
@rxcnt = common dso_local global i32 0, align 4
@tx_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_redirect_map_prog(%struct.xdp_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xdp_md* %0, %struct.xdp_md** %3, align 8
  %14 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %15 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %19 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.ethhdr*
  store %struct.ethhdr* %23, %struct.ethhdr** %6, align 8
  %24 = load i32, i32* @XDP_DROP, align 4
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ugt i8* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %34 = call i64* @bpf_map_lookup_elem(i32* @rxcnt, i32* %12)
  store i64* %34, i64** %11, align 8
  %35 = load i64*, i64** %11, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64*, i64** %11, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @swap_src_dst_mac(i8* %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @bpf_redirect_map(i32* @tx_port, i32 %44, i32 0)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64* @bpf_map_lookup_elem(i32*, i32*) #1

declare dso_local i32 @swap_src_dst_mac(i8*) #1

declare dso_local i32 @bpf_redirect_map(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_kern.c_xdp_redirect_prog.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_kern.c_xdp_redirect_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.ethhdr = type { i32 }

@XDP_DROP = common dso_local global i32 0, align 4
@tx_port = common dso_local global i32 0, align 4
@rxcnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_redirect_prog(%struct.xdp_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xdp_md* %0, %struct.xdp_md** %3, align 8
  %13 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %14 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %4, align 8
  %17 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %18 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.ethhdr*
  store %struct.ethhdr* %22, %struct.ethhdr** %6, align 8
  %23 = load i32, i32* @XDP_DROP, align 4
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 4, i32* %12, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ugt i8* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %1
  %33 = call i8* @bpf_map_lookup_elem(i32* @tx_port, i32* %9)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %32
  %40 = call i8* @bpf_map_lookup_elem(i32* @rxcnt, i32* %11)
  %41 = bitcast i8* %40 to i64*
  store i64* %41, i64** %10, align 8
  %42 = load i64*, i64** %10, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @swap_src_dst_mac(i8* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bpf_redirect(i32 %52, i32 0)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %37, %30
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @bpf_map_lookup_elem(i32*, i32*) #1

declare dso_local i32 @swap_src_dst_mac(i8*) #1

declare dso_local i32 @bpf_redirect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

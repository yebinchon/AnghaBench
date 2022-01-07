; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_decap_v6.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_decap_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.eth_hdr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_md*, i8**, i8**, i32)* @decap_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decap_v6(%struct.xdp_md* %0, i8** %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdp_md*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eth_hdr*, align 8
  %11 = alloca %struct.eth_hdr*, align 8
  store %struct.xdp_md* %0, %struct.xdp_md** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.eth_hdr*
  store %struct.eth_hdr* %14, %struct.eth_hdr** %11, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i64 4
  %18 = bitcast i8* %17 to %struct.eth_hdr*
  store %struct.eth_hdr* %18, %struct.eth_hdr** %10, align 8
  %19 = load %struct.eth_hdr*, %struct.eth_hdr** %10, align 8
  %20 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.eth_hdr*, %struct.eth_hdr** %11, align 8
  %23 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32 %21, i32 %24, i32 6)
  %26 = load %struct.eth_hdr*, %struct.eth_hdr** %10, align 8
  %27 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.eth_hdr*, %struct.eth_hdr** %11, align 8
  %30 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %31, i32 6)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load %struct.eth_hdr*, %struct.eth_hdr** %10, align 8
  %37 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %36, i32 0, i32 0
  store i32 8, i32* %37, align 4
  br label %41

38:                                               ; preds = %4
  %39 = load %struct.eth_hdr*, %struct.eth_hdr** %10, align 8
  %40 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %39, i32 0, i32 0
  store i32 56710, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.xdp_md*, %struct.xdp_md** %6, align 8
  %43 = call i64 @bpf_xdp_adjust_head(%struct.xdp_md* %42, i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %57

46:                                               ; preds = %41
  %47 = load %struct.xdp_md*, %struct.xdp_md** %6, align 8
  %48 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  %52 = load %struct.xdp_md*, %struct.xdp_md** %6, align 8
  %53 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8**, i8*** %8, align 8
  store i8* %55, i8** %56, align 8
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %46, %45
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @bpf_xdp_adjust_head(%struct.xdp_md*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_build_udp_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_build_udp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udphdr = type { i64, i8*, i8*, i8* }

@cfg_src_port = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @build_udp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_udp_header(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.udphdr*
  store %struct.udphdr* %12, %struct.udphdr** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 32, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @cfg_src_port, align 4
  %18 = call i8* @htons(i32 %17)
  %19 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %20 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @htons(i32 %21)
  %23 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %24 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @htons(i32 %25)
  %27 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %28 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %30 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @AF_INET, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %4
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr i8, i8* %35, i64 -4
  %37 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, 1
  %40 = call i64 @build_udp_v4_csum(i8* %36, %struct.udphdr* %37, i32 %39)
  %41 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %42 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %52

43:                                               ; preds = %4
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr i8, i8* %44, i64 -4
  %46 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = ashr i32 %47, 1
  %49 = call i64 @build_udp_v6_csum(i8* %45, %struct.udphdr* %46, i32 %48)
  %50 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %51 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %34
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @build_udp_v4_csum(i8*, %struct.udphdr*, i32) #1

declare dso_local i64 @build_udp_v6_csum(i8*, %struct.udphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_build_ipv4_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_build_ipv4_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i32, i8*)* @build_ipv4_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_ipv4_header(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.iphdr*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.iphdr*
  store %struct.iphdr* %15, %struct.iphdr** %13, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 0
  store i32 5, i32* %17, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 1
  store i32 4, i32* %19, align 4
  %20 = load i8*, i8** %12, align 8
  %21 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 9
  store i8* %20, i8** %22, align 8
  %23 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 2
  store i32 8, i32* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 64, %26
  %28 = trunc i64 %27 to i32
  %29 = call i8* @htons(i32 %28)
  %30 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = call i8* @htons(i32 1337)
  %33 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 7
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %45 = bitcast %struct.iphdr* %44 to i8*
  %46 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 1
  %50 = call i32 @build_ip_csum(i8* %45, i32 %49, i32 0)
  %51 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @build_ip_csum(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

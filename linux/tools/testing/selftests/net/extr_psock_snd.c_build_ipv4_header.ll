; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_build_ipv4_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_build_ipv4_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i32, i32, i32, i8*, i8*, i32, i8*, i8* }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @build_ipv4_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_ipv4_header(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.iphdr*
  store %struct.iphdr* %7, %struct.iphdr** %5, align 8
  %8 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %9 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %8, i32 0, i32 0
  store i32 5, i32* %9, align 8
  %10 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %11 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %10, i32 0, i32 1
  store i32 4, i32* %11, align 4
  %12 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %13 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %12, i32 0, i32 2
  store i32 8, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 60, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* @htons(i32 %17)
  %19 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 8
  store i8* %18, i8** %20, align 8
  %21 = call i8* @htons(i32 1337)
  %22 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @IPPROTO_UDP, align 4
  %25 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = call i8* @htonl(i32 -1408172030)
  %28 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = call i8* @htonl(i32 -1408172031)
  %31 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %34 = bitcast %struct.iphdr* %33 to i8*
  %35 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 1
  %39 = call i32 @build_ip_csum(i8* %34, i32 %38, i32 0)
  %40 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 2
  ret i32 %45
}

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @build_ip_csum(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

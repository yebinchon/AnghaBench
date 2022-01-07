; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_send_icmp6_reply.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_send_icmp6_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmp6hdr = type { i32, i32 }
%struct.ipv6hdr = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@XDP_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @send_icmp6_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_icmp6_reply(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.icmp6hdr*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr i8, i8* %10, i64 4
  %12 = getelementptr i8, i8* %11, i64 24
  %13 = getelementptr i8, i8* %12, i64 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ugt i8* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @XDP_DROP, align 4
  store i32 %17, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %23, i64 %25
  %27 = bitcast i8* %26 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %27, %struct.ipv6hdr** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 24
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %36, %struct.icmp6hdr** %6, align 8
  %37 = load %struct.icmp6hdr*, %struct.icmp6hdr** %6, align 8
  %38 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %37, i32 0, i32 0
  store i32 129, i32* %38, align 4
  %39 = load %struct.icmp6hdr*, %struct.icmp6hdr** %6, align 8
  %40 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %44 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %46 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %47 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @memcpy(i32* %45, i32* %50, i32 16)
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %58 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @memcpy(i32* %56, i32* %61, i32 16)
  %63 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %64 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %69 = call i32 @memcpy(i32* %67, i32* %68, i32 16)
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @swap_mac_and_send(i8* %70, i8* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %18, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @swap_mac_and_send(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

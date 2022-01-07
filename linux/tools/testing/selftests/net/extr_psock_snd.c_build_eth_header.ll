; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_build_eth_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_build_eth_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethhdr = type { i8* }

@cfg_use_vlan = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @build_eth_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_eth_header(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ethhdr*
  store %struct.ethhdr* %7, %struct.ethhdr** %4, align 8
  %8 = load i64, i64* @cfg_use_vlan, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @ETH_HLEN, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to i8**
  store i8** %15, i8*** %5, align 8
  %16 = load i32, i32* @ETH_P_8021Q, align 4
  %17 = call i8* @htons(i32 %16)
  %18 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %19 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @ETH_P_IP, align 4
  %21 = call i8* @htons(i32 %20)
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @ETH_HLEN, align 4
  %25 = add nsw i32 %24, 4
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @ETH_P_IP, align 4
  %28 = call i8* @htons(i32 %27)
  %29 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %30 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @ETH_HLEN, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_create_payload.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_create_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethhdr = type { i8* }
%struct.iphdr = type { i32, i32, i32, i32, i8*, i8*, i8*, i64 }

@DATA_LEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i64 0, align 8
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@DATA_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*)* @create_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_payload(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca %struct.iphdr*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ethhdr*
  store %struct.ethhdr* %9, %struct.ethhdr** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr i8, i8* %10, i64 8
  %12 = bitcast i8* %11 to %struct.iphdr*
  store %struct.iphdr* %12, %struct.iphdr** %7, align 8
  %13 = load i32, i32* @DATA_LEN, align 4
  %14 = add nsw i32 %13, 42
  %15 = sext i32 %14 to i64
  %16 = load i64*, i64** %4, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i32 @memset(i8* %17, i32 255, i32 %19)
  %21 = load i64, i64* @ETH_P_IP, align 8
  %22 = call i8* @htons(i64 %21)
  %23 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %24 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %37, %2
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 48
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = call i64 (...) @rand()
  %31 = load i8*, i8** %3, align 8
  %32 = bitcast i8* %31 to i64*
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 8
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  store i64 %30, i64* %36, align 8
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 0
  store i32 5, i32* %42, align 8
  %43 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 1
  store i32 4, i32* %44, align 4
  %45 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 2
  store i32 17, i32* %46, align 8
  %47 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 3
  store i32 64, i32* %50, align 4
  %51 = load i64*, i64** %4, align 8
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, 8
  %54 = call i8* @htons(i64 %53)
  %55 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @INADDR_LOOPBACK, align 4
  %58 = call i8* @htonl(i32 %57)
  %59 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %60 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @INADDR_LOOPBACK, align 4
  %62 = call i8* @htonl(i32 %61)
  %63 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %64 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr i8, i8* %65, i64 8
  %67 = getelementptr i8, i8* %66, i64 48
  %68 = load i32, i32* @DATA_CHAR, align 4
  %69 = load i32, i32* @DATA_LEN, align 4
  %70 = call i32 @memset(i8* %67, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @rand(...) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_addr2str.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_addr2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_media_addr = type { i32 }
%struct.udp_media_addr = type { i32, i32, i32, i32 }

@ETH_P_IP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%pI4:%u\00", align 1
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%pI6:%u\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid UDP media address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_media_addr*, i8*, i32)* @tipc_udp_addr2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_udp_addr2str(%struct.tipc_media_addr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tipc_media_addr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.udp_media_addr*, align 8
  store %struct.tipc_media_addr* %0, %struct.tipc_media_addr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %4, align 8
  %9 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.udp_media_addr*
  store %struct.udp_media_addr* %10, %struct.udp_media_addr** %7, align 8
  %11 = load %struct.udp_media_addr*, %struct.udp_media_addr** %7, align 8
  %12 = getelementptr inbounds %struct.udp_media_addr, %struct.udp_media_addr* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohs(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @ETH_P_IP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.udp_media_addr*, %struct.udp_media_addr** %7, align 8
  %22 = getelementptr inbounds %struct.udp_media_addr, %struct.udp_media_addr* %21, i32 0, i32 3
  %23 = load %struct.udp_media_addr*, %struct.udp_media_addr** %7, align 8
  %24 = getelementptr inbounds %struct.udp_media_addr, %struct.udp_media_addr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %22, i32 %26)
  br label %49

28:                                               ; preds = %3
  %29 = load %struct.udp_media_addr*, %struct.udp_media_addr** %7, align 8
  %30 = getelementptr inbounds %struct.udp_media_addr, %struct.udp_media_addr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohs(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @ETH_P_IPV6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.udp_media_addr*, %struct.udp_media_addr** %7, align 8
  %40 = getelementptr inbounds %struct.udp_media_addr, %struct.udp_media_addr* %39, i32 0, i32 1
  %41 = load %struct.udp_media_addr*, %struct.udp_media_addr** %7, align 8
  %42 = getelementptr inbounds %struct.udp_media_addr, %struct.udp_media_addr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohs(i32 %43)
  %45 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %40, i32 %44)
  br label %48

46:                                               ; preds = %28
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %36
  br label %49

49:                                               ; preds = %48, %18
  ret i32 0
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

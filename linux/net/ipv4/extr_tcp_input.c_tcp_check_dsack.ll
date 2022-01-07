; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_check_dsack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_check_dsack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sack_block_wire = type { i32, i32 }
%struct.tcp_sock = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@LINUX_MIB_TCPDSACKRECV = common dso_local global i32 0, align 4
@LINUX_MIB_TCPDSACKOFORECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.tcp_sack_block_wire*, i32, i64)* @tcp_check_dsack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_check_dsack(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcp_sack_block_wire* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcp_sack_block_wire*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tcp_sock*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.tcp_sack_block_wire* %2, %struct.tcp_sack_block_wire** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %17)
  store %struct.tcp_sock* %18, %struct.tcp_sock** %11, align 8
  %19 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %8, align 8
  %20 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %19, i64 0
  %21 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %20, i32 0, i32 0
  %22 = call i64 @get_unaligned_be32(i32* %21)
  store i64 %22, i64* %12, align 8
  %23 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %8, align 8
  %24 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %23, i64 0
  %25 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %24, i32 0, i32 1
  %26 = call i64 @get_unaligned_be32(i32* %25)
  store i64 %26, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @before(i64 %27, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %36 = call i32 @tcp_dsack_seen(%struct.tcp_sock* %35)
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = call i32 @sock_net(%struct.sock* %37)
  %39 = load i32, i32* @LINUX_MIB_TCPDSACKRECV, align 4
  %40 = call i32 @NET_INC_STATS(i32 %38, i32 %39)
  br label %71

41:                                               ; preds = %5
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %8, align 8
  %46 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %45, i64 1
  %47 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %46, i32 0, i32 1
  %48 = call i64 @get_unaligned_be32(i32* %47)
  store i64 %48, i64* %15, align 8
  %49 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %8, align 8
  %50 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %49, i64 1
  %51 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %50, i32 0, i32 0
  %52 = call i64 @get_unaligned_be32(i32* %51)
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i64 @after(i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %44
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i64 @before(i64 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  store i32 1, i32* %14, align 4
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %64 = call i32 @tcp_dsack_seen(%struct.tcp_sock* %63)
  %65 = load %struct.sock*, %struct.sock** %6, align 8
  %66 = call i32 @sock_net(%struct.sock* %65)
  %67 = load i32, i32* @LINUX_MIB_TCPDSACKOFORECV, align 4
  %68 = call i32 @NET_INC_STATS(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %57, %44
  br label %70

70:                                               ; preds = %69, %41
  br label %71

71:                                               ; preds = %70, %34
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %71
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %74
  %80 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i64 @after(i64 %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %84
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @after(i64 %90, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %98 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %96, %89, %84, %79, %74, %71
  %102 = load i32, i32* %14, align 4
  ret i32 %102
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_dsack_seen(%struct.tcp_sock*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

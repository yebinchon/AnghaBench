; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_out.c_nr_transmit_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_out.c_nr_transmit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nr_sock = type { i32, i32 }

@NR_NETWORK_LEN = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@AX25_CBIT = common dso_local global i8 0, align 1
@AX25_EBIT = common dso_local global i8 0, align 1
@AX25_SSSID_SPARE = common dso_local global i8 0, align 1
@sysctl_netrom_network_ttl_initialiser = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_transmit_buffer(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nr_sock*, align 8
  %6 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.nr_sock* @nr_sk(%struct.sock* %7)
  store %struct.nr_sock* %8, %struct.nr_sock** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NR_NETWORK_LEN, align 4
  %11 = call i8* @skb_push(%struct.sk_buff* %9, i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %14 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %13, i32 0, i32 1
  %15 = load i32, i32* @AX25_ADDR_LEN, align 4
  %16 = call i32 @memcpy(i8* %12, i32* %14, i32 %15)
  %17 = load i8, i8* @AX25_CBIT, align 1
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, -1
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 6
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, %19
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %21, align 1
  %26 = load i8, i8* @AX25_EBIT, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, -1
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 6
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, %28
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %30, align 1
  %35 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %36
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 1
  %43 = load i32, i32* @AX25_ADDR_LEN, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %49 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %48, i32 0, i32 0
  %50 = load i32, i32* @AX25_ADDR_LEN, align 4
  %51 = call i32 @memcpy(i8* %47, i32* %49, i32 %50)
  %52 = load i8, i8* @AX25_CBIT, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, %54
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  %61 = load i8, i8* @AX25_EBIT, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 6
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %66, %62
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1
  %69 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 6
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %70
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %72, align 1
  %77 = load i32, i32* @AX25_ADDR_LEN, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %6, align 8
  %81 = load i32, i32* @sysctl_netrom_network_ttl_initialiser, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  store i8 %82, i8* %83, align 1
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @nr_route_frame(%struct.sk_buff* %85, i32* null)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %2
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = load i32, i32* @ENETUNREACH, align 4
  %93 = call i32 @nr_disconnect(%struct.sock* %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %2
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @nr_route_frame(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nr_disconnect(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

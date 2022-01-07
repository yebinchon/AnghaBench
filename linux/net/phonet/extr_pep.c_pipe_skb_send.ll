; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_skb_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_skb_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pep_sock = type { i32, i32, i32, i64 }
%struct.pnpipehdr = type { i32, i32, i64, i64 }

@ENOBUFS = common dso_local global i32 0, align 4
@PNS_PIPE_ALIGNED_DATA = common dso_local global i32 0, align 4
@PNS_PIPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pipe_skb_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_skb_send(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pep_sock*, align 8
  %7 = alloca %struct.pnpipehdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.pep_sock* @pep_sk(%struct.sock* %9)
  store %struct.pep_sock* %10, %struct.pep_sock** %6, align 8
  %11 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %12 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @pn_flow_safe(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %18 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %17, i32 0, i32 0
  %19 = call i32 @atomic_add_unless(i32* %18, i32 -1, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  %24 = load i32, i32* @ENOBUFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %16, %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %29 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 3, %30
  %32 = call i32 @skb_push(%struct.sk_buff* %27, i64 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @skb_reset_transport_header(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %35)
  store %struct.pnpipehdr* %36, %struct.pnpipehdr** %7, align 8
  %37 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %38 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %40 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load i32, i32* @PNS_PIPE_ALIGNED_DATA, align 4
  %45 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %46 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %48 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  br label %53

49:                                               ; preds = %26
  %50 = load i32, i32* @PNS_PIPE_DATA, align 4
  %51 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %52 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %55 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %58 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @pn_skb_send(%struct.sock* %59, %struct.sk_buff* %60, i32* null)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %53
  %65 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %66 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @pn_flow_safe(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %72 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %71, i32 0, i32 0
  %73 = call i32 @atomic_inc(i32* %72)
  br label %74

74:                                               ; preds = %70, %64, %53
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %21
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i64 @pn_flow_safe(i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_send(%struct.sock*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_ctrlreq_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_ctrlreq_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.pnpipehdr = type { i32*, i32, i32, i32, i32, i32 }
%struct.sockaddr_pn = type { i32 }

@PAD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PNS_PEP_CTRL_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, i32)* @pep_ctrlreq_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_ctrlreq_error(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pnpipehdr*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.pnpipehdr*, align 8
  %13 = alloca %struct.sockaddr_pn, align 4
  %14 = alloca [4 x i32], align 16
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i8* @pnp_hdr(%struct.sk_buff* %15)
  %17 = bitcast i8* %16 to %struct.pnpipehdr*
  store %struct.pnpipehdr* %17, %struct.pnpipehdr** %10, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %19 = load %struct.pnpipehdr*, %struct.pnpipehdr** %10, align 8
  %20 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds i32, i32* %18, i64 1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @PAD, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @PAD, align 4
  store i32 %27, i32* %26, align 4
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.sk_buff* @pep_alloc_skb(%struct.sock* %28, i32* %29, i32 4, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %66

37:                                               ; preds = %4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = call i8* @pnp_hdr(%struct.sk_buff* %38)
  %40 = bitcast i8* %39 to %struct.pnpipehdr*
  store %struct.pnpipehdr* %40, %struct.pnpipehdr** %12, align 8
  %41 = load %struct.pnpipehdr*, %struct.pnpipehdr** %10, align 8
  %42 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %45 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @PNS_PEP_CTRL_RESP, align 4
  %47 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %48 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.pnpipehdr*, %struct.pnpipehdr** %10, align 8
  %50 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %53 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pnpipehdr*, %struct.pnpipehdr** %10, align 8
  %55 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pnpipehdr*, %struct.pnpipehdr** %12, align 8
  %60 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i32 @pn_skb_get_src_sockaddr(%struct.sk_buff* %61, %struct.sockaddr_pn* %13)
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = call i32 @pn_skb_send(%struct.sock* %63, %struct.sk_buff* %64, %struct.sockaddr_pn* %13)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %37, %34
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i8* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @pep_alloc_skb(%struct.sock*, i32*, i32, i32) #1

declare dso_local i32 @pn_skb_get_src_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local i32 @pn_skb_send(%struct.sock*, %struct.sk_buff*, %struct.sockaddr_pn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

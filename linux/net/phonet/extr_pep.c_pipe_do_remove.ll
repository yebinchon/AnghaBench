; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_do_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_do_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.pep_sock = type { i32 }
%struct.pnpipehdr = type { i32, i32, i32, i64 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PNS_PIPE_REMOVE_REQ = common dso_local global i32 0, align 4
@PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @pipe_do_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_do_remove(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.pep_sock*, align 8
  %5 = alloca %struct.pnpipehdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.pep_sock* @pep_sk(%struct.sock* %7)
  store %struct.pep_sock* %8, %struct.pep_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sk_buff* @pep_alloc_skb(%struct.sock* %9, i32* null, i32 0, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %18)
  store %struct.pnpipehdr* %19, %struct.pnpipehdr** %5, align 8
  %20 = load %struct.pnpipehdr*, %struct.pnpipehdr** %5, align 8
  %21 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @PNS_PIPE_REMOVE_REQ, align 4
  %23 = load %struct.pnpipehdr*, %struct.pnpipehdr** %5, align 8
  %24 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pep_sock*, %struct.pep_sock** %4, align 8
  %26 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pnpipehdr*, %struct.pnpipehdr** %5, align 8
  %29 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @PAD, align 4
  %31 = load %struct.pnpipehdr*, %struct.pnpipehdr** %5, align 8
  %32 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @pn_skb_send(%struct.sock* %33, %struct.sk_buff* %34, i32* null)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %17, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @pep_alloc_skb(%struct.sock*, i32*, i32, i32) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_send(%struct.sock*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

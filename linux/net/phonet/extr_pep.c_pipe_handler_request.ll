; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_handler_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_handler_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.pep_sock = type { i32 }
%struct.pnpipehdr = type { i8*, i32, i8*, i8* }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8*, i8*, i8*, i32)* @pipe_handler_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_handler_request(%struct.sock* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pep_sock*, align 8
  %13 = alloca %struct.pnpipehdr*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.pep_sock* @pep_sk(%struct.sock* %15)
  store %struct.pep_sock* %16, %struct.pep_sock** %12, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sk_buff* @pep_alloc_skb(%struct.sock* %17, i8* %18, i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %14, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %47

27:                                               ; preds = %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %29 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %28)
  store %struct.pnpipehdr* %29, %struct.pnpipehdr** %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.pnpipehdr*, %struct.pnpipehdr** %13, align 8
  %32 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.pnpipehdr*, %struct.pnpipehdr** %13, align 8
  %35 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.pep_sock*, %struct.pep_sock** %12, align 8
  %37 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pnpipehdr*, %struct.pnpipehdr** %13, align 8
  %40 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.pnpipehdr*, %struct.pnpipehdr** %13, align 8
  %43 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.sock*, %struct.sock** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %46 = call i32 @pn_skb_send(%struct.sock* %44, %struct.sk_buff* %45, i32* null)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %27, %24
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @pep_alloc_skb(%struct.sock*, i8*, i32, i32) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_send(%struct.sock*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

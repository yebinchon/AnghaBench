; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_swap_src_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_swap_src_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.af_iucv_trans_hdr = type { i8*, i8*, i8*, i8* }

@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @afiucv_swap_src_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afiucv_swap_src_dest(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.af_iucv_trans_hdr*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.af_iucv_trans_hdr* @iucv_trans_hdr(%struct.sk_buff* %6)
  store %struct.af_iucv_trans_hdr* %7, %struct.af_iucv_trans_hdr** %3, align 8
  %8 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %9 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @ASCEBC(i8* %10, i32 8)
  %12 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %13 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @ASCEBC(i8* %14, i32 8)
  %16 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %17 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @ASCEBC(i8* %18, i32 8)
  %20 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %21 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @ASCEBC(i8* %22, i32 8)
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %25 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %26 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @memcpy(i8* %24, i8* %27, i32 8)
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %30 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %31 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @memcpy(i8* %29, i8* %32, i32 8)
  %34 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %35 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %38 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @memcpy(i8* %36, i8* %39, i32 8)
  %41 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %42 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %45 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @memcpy(i8* %43, i8* %46, i32 8)
  %48 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %49 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %52 = call i32 @memcpy(i8* %50, i8* %51, i32 8)
  %53 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %3, align 8
  %54 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %57 = call i32 @memcpy(i8* %55, i8* %56, i32 8)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %59 = load i32, i32* @ETH_HLEN, align 4
  %60 = call i32 @skb_push(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ETH_HLEN, align 4
  %65 = call i32 @memset(i32 %63, i32 0, i32 %64)
  ret void
}

declare dso_local %struct.af_iucv_trans_hdr* @iucv_trans_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

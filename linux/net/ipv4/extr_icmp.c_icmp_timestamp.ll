; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.icmp_bxm = type { i32, i64, i64, %struct.sk_buff*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@ICMP_TIMESTAMPREPLY = common dso_local global i32 0, align 4
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @icmp_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp_timestamp(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.icmp_bxm, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = call i32 (...) @inet_current_timestamp()
  %12 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %11, i32* %15, align 4
  %16 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %20, i32* %24, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i32 @skb_copy_bits(%struct.sk_buff* %25, i32 0, i32* %29, i32 4)
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff* %34)
  %36 = bitcast %struct.TYPE_6__* %33 to i8*
  %37 = bitcast %struct.TYPE_6__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = load i32, i32* @ICMP_TIMESTAMPREPLY, align 4
  %39 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 3
  store %struct.sk_buff* %45, %struct.sk_buff** %46, align 8
  %47 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 0
  store i32 16, i32* %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i32 @icmp_reply(%struct.icmp_bxm* %4, %struct.sk_buff* %50)
  store i32 1, i32* %2, align 4
  br label %60

52:                                               ; preds = %9
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call %struct.TYPE_5__* @skb_dst(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_net(i32 %56)
  %58 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %59 = call i32 @__ICMP_INC_STATS(i32 %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @inet_current_timestamp(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icmp_reply(%struct.icmp_bxm*, %struct.sk_buff*) #1

declare dso_local i32 @__ICMP_INC_STATS(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.TYPE_5__* @skb_dst(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPMSS.c_tcpmss_reverse_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPMSS.c_tcpmss_reverse_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.flowi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flowi6, %struct.flowi6 }
%struct.flowi6 = type { i32 }
%struct.rtable = type { i32 }
%struct.flowi4 = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dst_entry = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32)* @tcpmss_reverse_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpmss_reverse_mtu(%struct.net* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flowi, align 4
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.flowi4*, align 8
  %11 = alloca %struct.flowi6*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.rtable* null, %struct.rtable** %8, align 8
  store i32 -1, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PF_INET, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.flowi, %struct.flowi* %7, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = bitcast %struct.flowi6* %17 to %struct.flowi4*
  store %struct.flowi4* %18, %struct.flowi4** %10, align 8
  %19 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %20 = bitcast %struct.flowi4* %19 to %struct.flowi6*
  %21 = call i32 @memset(%struct.flowi6* %20, i32 0, i32 4)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %27 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %39

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.flowi, %struct.flowi* %7, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.flowi6* %30, %struct.flowi6** %11, align 8
  %31 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %32 = call i32 @memset(%struct.flowi6* %31, i32 0, i32 4)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %38 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %28, %15
  %40 = load %struct.net*, %struct.net** %4, align 8
  %41 = bitcast %struct.rtable** %8 to %struct.dst_entry**
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @nf_route(%struct.net* %40, %struct.dst_entry** %41, %struct.flowi* %7, i32 0, i32 %42)
  %44 = load %struct.rtable*, %struct.rtable** %8, align 8
  %45 = icmp ne %struct.rtable* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.rtable*, %struct.rtable** %8, align 8
  %48 = getelementptr inbounds %struct.rtable, %struct.rtable* %47, i32 0, i32 0
  %49 = call i32 @dst_mtu(i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.rtable*, %struct.rtable** %8, align 8
  %51 = getelementptr inbounds %struct.rtable, %struct.rtable* %50, i32 0, i32 0
  %52 = call i32 @dst_release(i32* %51)
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nf_route(%struct.net*, %struct.dst_entry**, %struct.flowi*, i32, i32) #1

declare dso_local i32 @dst_mtu(i32*) #1

declare dso_local i32 @dst_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

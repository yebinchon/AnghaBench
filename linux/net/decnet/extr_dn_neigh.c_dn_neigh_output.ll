; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_neigh.c_dn_neigh_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_neigh.c_dn_neigh_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.dst_entry = type { i32 }
%struct.dn_route = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*, %struct.sk_buff*)* @dn_neigh_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_neigh_output(%struct.neighbour* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.dn_route*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %12)
  store %struct.dst_entry* %13, %struct.dst_entry** %5, align 8
  %14 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %15 = bitcast %struct.dst_entry* %14 to %struct.dn_route*
  store %struct.dn_route* %15, %struct.dn_route** %6, align 8
  %16 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %17 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %16, i32 0, i32 2
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load %struct.dn_route*, %struct.dn_route** %6, align 8
  %24 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dn_dn2eth(i8* %22, i32 %25)
  br label %27

27:                                               ; preds = %44, %2
  %28 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 1
  %30 = call i32 @read_seqbegin(i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %38 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_hard_header(%struct.sk_buff* %31, %struct.net_device* %32, i32 %36, i32 %39, i8* %22, i32 %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %27
  %45 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %46 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %45, i32 0, i32 1
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @read_seqretry(i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %27, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @dev_queue_xmit(%struct.sk_buff* %54)
  store i32 %55, i32* %11, align 4
  br label %61

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %11, align 4
  %63 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %63)
  ret i32 %62
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dn_dn2eth(i8*, i32) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

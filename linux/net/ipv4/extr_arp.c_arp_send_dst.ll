; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_send_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_send_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dst_entry = type { i32 }
%struct.sk_buff = type { i32 }

@IFF_NOARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.net_device*, i32, i8*, i8*, i8*, %struct.dst_entry*)* @arp_send_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arp_send_dst(i32 %0, i32 %1, i32 %2, %struct.net_device* %3, i32 %4, i8* %5, i8* %6, i8* %7, %struct.dst_entry* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.dst_entry*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.net_device* %3, %struct.net_device** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store %struct.dst_entry* %8, %struct.dst_entry** %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %13, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_NOARP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %9
  br label %47

27:                                               ; preds = %9
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.net_device*, %struct.net_device** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i8*, i8** %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = call %struct.sk_buff* @arp_create(i32 %28, i32 %29, i32 %30, %struct.net_device* %31, i32 %32, i8* %33, i8* %34, i8* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %19, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %47

40:                                               ; preds = %27
  %41 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %42 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  %43 = call i32 @dst_clone(%struct.dst_entry* %42)
  %44 = call i32 @skb_dst_set(%struct.sk_buff* %41, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %46 = call i32 @arp_xmit(%struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %40, %39, %26
  ret void
}

declare dso_local %struct.sk_buff* @arp_create(i32, i32, i32, %struct.net_device*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.dst_entry*) #1

declare dso_local i32 @arp_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

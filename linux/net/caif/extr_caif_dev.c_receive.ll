; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.cfpkt = type { i32 }
%struct.caif_device_entry = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.cfpkt*)* }

@CAIF_DIR_IN = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.cfpkt*, align 8
  %11 = alloca %struct.caif_device_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %13 = load i32, i32* @CAIF_DIR_IN, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.cfpkt* @cfpkt_fromnative(i32 %13, %struct.sk_buff* %14)
  store %struct.cfpkt* %15, %struct.cfpkt** %10, align 8
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.caif_device_entry* @caif_get(%struct.net_device* %17)
  store %struct.caif_device_entry* %18, %struct.caif_device_entry** %11, align 8
  %19 = load %struct.caif_device_entry*, %struct.caif_device_entry** %11, align 8
  %20 = icmp ne %struct.caif_device_entry* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %4
  %22 = load %struct.caif_device_entry*, %struct.caif_device_entry** %11, align 8
  %23 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.caif_device_entry*, %struct.caif_device_entry** %11, align 8
  %29 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_4__*, %struct.cfpkt*)*, i32 (%struct.TYPE_4__*, %struct.cfpkt*)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_4__*, %struct.cfpkt*)* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.caif_device_entry*, %struct.caif_device_entry** %11, align 8
  %37 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netif_oper_up(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35, %27, %21, %4
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  %45 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %45, i32* %5, align 4
  br label %78

46:                                               ; preds = %35
  %47 = load %struct.caif_device_entry*, %struct.caif_device_entry** %11, align 8
  %48 = call i32 @caifd_hold(%struct.caif_device_entry* %47)
  %49 = call i32 (...) @rcu_read_unlock()
  %50 = load %struct.caif_device_entry*, %struct.caif_device_entry** %11, align 8
  %51 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_4__*, %struct.cfpkt*)*, i32 (%struct.TYPE_4__*, %struct.cfpkt*)** %54, align 8
  %56 = load %struct.caif_device_entry*, %struct.caif_device_entry** %11, align 8
  %57 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %61 = call i32 %55(%struct.TYPE_4__* %59, %struct.cfpkt* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @EILSEQ, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %46
  %67 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %68 = call i32 @cfpkt_destroy(%struct.cfpkt* %67)
  br label %69

69:                                               ; preds = %66, %46
  %70 = load %struct.caif_device_entry*, %struct.caif_device_entry** %11, align 8
  %71 = call i32 @caifd_put(%struct.caif_device_entry* %70)
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %41
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.cfpkt* @cfpkt_fromnative(i32, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.caif_device_entry* @caif_get(%struct.net_device*) #1

declare dso_local i32 @netif_oper_up(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @caifd_hold(%struct.caif_device_entry*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i32 @caifd_put(%struct.caif_device_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

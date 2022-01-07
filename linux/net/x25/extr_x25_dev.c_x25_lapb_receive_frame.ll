; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_dev.c_x25_lapb_receive_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_dev.c_x25_lapb_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.x25_neigh = type { i32 }

@init_net = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown neighbour - %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_lapb_receive_frame(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.x25_neigh*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call i32 @dev_net(%struct.net_device* %12)
  %14 = call i32 @net_eq(i32 %13, i32* @init_net)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %68

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %68

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @kfree_skb(%struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call %struct.x25_neigh* @x25_get_neigh(%struct.net_device* %28)
  store %struct.x25_neigh* %29, %struct.x25_neigh** %11, align 8
  %30 = load %struct.x25_neigh*, %struct.x25_neigh** %11, align 8
  %31 = icmp ne %struct.x25_neigh* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %68

37:                                               ; preds = %24
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @pskb_may_pull(%struct.sk_buff* %38, i32 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %72

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %65 [
    i32 129, label %48
    i32 130, label %59
    i32 128, label %62
  ]

48:                                               ; preds = %42
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @skb_pull(%struct.sk_buff* %49, i32 1)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load %struct.x25_neigh*, %struct.x25_neigh** %11, align 8
  %53 = call i32 @x25_receive_data(%struct.sk_buff* %51, %struct.x25_neigh* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.x25_neigh*, %struct.x25_neigh** %11, align 8
  %57 = call i32 @x25_neigh_put(%struct.x25_neigh* %56)
  br label %71

58:                                               ; preds = %48
  br label %65

59:                                               ; preds = %42
  %60 = load %struct.x25_neigh*, %struct.x25_neigh** %11, align 8
  %61 = call i32 @x25_link_established(%struct.x25_neigh* %60)
  br label %65

62:                                               ; preds = %42
  %63 = load %struct.x25_neigh*, %struct.x25_neigh** %11, align 8
  %64 = call i32 @x25_link_terminated(%struct.x25_neigh* %63)
  br label %65

65:                                               ; preds = %42, %62, %59, %58
  %66 = load %struct.x25_neigh*, %struct.x25_neigh** %11, align 8
  %67 = call i32 @x25_neigh_put(%struct.x25_neigh* %66)
  br label %68

68:                                               ; preds = %65, %32, %23, %16
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %68, %55
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %41
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.x25_neigh* @x25_get_neigh(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_receive_data(%struct.sk_buff*, %struct.x25_neigh*) #1

declare dso_local i32 @x25_neigh_put(%struct.x25_neigh*) #1

declare dso_local i32 @x25_link_established(%struct.x25_neigh*) #1

declare dso_local i32 @x25_link_terminated(%struct.x25_neigh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

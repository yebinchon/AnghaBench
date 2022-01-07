; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_alloc_command.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_alloc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ncsi_cmd_arg = type { i32, i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { %struct.ncsi_dev }
%struct.ncsi_dev = type { %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_NCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ncsi_request* (%struct.ncsi_cmd_arg*)* @ncsi_alloc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ncsi_request* @ncsi_alloc_command(%struct.ncsi_cmd_arg* %0) #0 {
  %2 = alloca %struct.ncsi_request*, align 8
  %3 = alloca %struct.ncsi_cmd_arg*, align 8
  %4 = alloca %struct.ncsi_dev_priv*, align 8
  %5 = alloca %struct.ncsi_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ncsi_request*, align 8
  store %struct.ncsi_cmd_arg* %0, %struct.ncsi_cmd_arg** %3, align 8
  %12 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %13 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %12, i32 0, i32 2
  %14 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %13, align 8
  store %struct.ncsi_dev_priv* %14, %struct.ncsi_dev_priv** %4, align 8
  %15 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %15, i32 0, i32 0
  store %struct.ncsi_dev* %16, %struct.ncsi_dev** %5, align 8
  %17 = load %struct.ncsi_dev*, %struct.ncsi_dev** %5, align 8
  %18 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %29 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %30 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.ncsi_request* @ncsi_alloc_request(%struct.ncsi_dev_priv* %28, i32 %31)
  store %struct.ncsi_request* %32, %struct.ncsi_request** %11, align 8
  %33 = load %struct.ncsi_request*, %struct.ncsi_request** %11, align 8
  %34 = icmp ne %struct.ncsi_request* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  store %struct.ncsi_request* null, %struct.ncsi_request** %2, align 8
  br label %80

36:                                               ; preds = %1
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %42 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 26
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 26
  store i32 %47, i32* %9, align 4
  br label %54

48:                                               ; preds = %36
  %49 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %3, align 8
  %50 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call %struct.sk_buff* @alloc_skb(i32 %55, i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %10, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load %struct.ncsi_request*, %struct.ncsi_request** %11, align 8
  %62 = call i32 @ncsi_free_request(%struct.ncsi_request* %61)
  store %struct.ncsi_request* null, %struct.ncsi_request** %2, align 8
  br label %80

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = load %struct.ncsi_request*, %struct.ncsi_request** %11, align 8
  %66 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %65, i32 0, i32 0
  store %struct.sk_buff* %64, %struct.sk_buff** %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @skb_reserve(%struct.sk_buff* %67, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = call i32 @skb_reset_network_header(%struct.sk_buff* %70)
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  store %struct.net_device* %72, %struct.net_device** %74, align 8
  %75 = load i32, i32* @ETH_P_NCSI, align 4
  %76 = call i32 @htons(i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ncsi_request*, %struct.ncsi_request** %11, align 8
  store %struct.ncsi_request* %79, %struct.ncsi_request** %2, align 8
  br label %80

80:                                               ; preds = %63, %60, %35
  %81 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  ret %struct.ncsi_request* %81
}

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local %struct.ncsi_request* @ncsi_alloc_request(%struct.ncsi_dev_priv*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @ncsi_free_request(%struct.ncsi_request*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

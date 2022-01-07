; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_msg_to_mpoad.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_msg_to_mpoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { i32 }
%struct.mpoa_client = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 (%struct.sock*)*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"mesg %d to a non-existent mpoad\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msg_to_mpoad(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.k_message*, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.k_message* %0, %struct.k_message** %4, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %5, align 8
  %8 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %9 = icmp eq %struct.mpoa_client* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %12 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.k_message*, %struct.k_message** %4, align 8
  %17 = getelementptr inbounds %struct.k_message, %struct.k_message* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %56

22:                                               ; preds = %10
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @skb_put(%struct.sk_buff* %31, i32 4)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load %struct.k_message*, %struct.k_message** %4, align 8
  %35 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %33, %struct.k_message* %34, i32 4)
  %36 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %37 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @atm_force_charge(i32 %38, i32 %41)
  %43 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %44 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.sock* @sk_atm(i32 %45)
  store %struct.sock* %46, %struct.sock** %7, align 8
  %47 = load %struct.sock*, %struct.sock** %7, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @skb_queue_tail(i32* %48, %struct.sk_buff* %49)
  %51 = load %struct.sock*, %struct.sock** %7, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %52, align 8
  %54 = load %struct.sock*, %struct.sock** %7, align 8
  %55 = call i32 %53(%struct.sock* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %30, %27, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.k_message*, i32) #1

declare dso_local i32 @atm_force_charge(i32, i32) #1

declare dso_local %struct.sock* @sk_atm(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

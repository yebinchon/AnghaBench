; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_skb_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_skb_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_psock = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_msg = type { %struct.sk_buff*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@__GFP_NOWARN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_MSG_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_psock*, %struct.sk_buff*)* @sk_psock_skb_ingress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_psock_skb_ingress(%struct.sk_psock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_psock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_msg*, align 8
  store %struct.sk_psock* %0, %struct.sk_psock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %11 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @__GFP_NOWARN, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.sk_msg* @kzalloc(i32 32, i32 %15)
  store %struct.sk_msg* %16, %struct.sk_msg** %9, align 8
  %17 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %18 = icmp ne %struct.sk_msg* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %97

26:                                               ; preds = %2
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sk_rmem_schedule(%struct.sock* %27, %struct.sk_buff* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %36 = call i32 @kfree(%struct.sk_msg* %35)
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %97

39:                                               ; preds = %26
  %40 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %41 = call i32 @sk_msg_init(%struct.sk_msg* %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %44 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @skb_to_sgvec(%struct.sk_buff* %42, i32 %46, i32 0, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %58 = call i32 @kfree(%struct.sk_msg* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %97

60:                                               ; preds = %39
  %61 = load %struct.sock*, %struct.sock** %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sk_mem_charge(%struct.sock* %61, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  %69 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %70 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %74 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MAX_MSG_FRAGS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %82

80:                                               ; preds = %60
  %81 = load i32, i32* %8, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi i32 [ 0, %79 ], [ %81, %80 ]
  %84 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %85 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %89 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %88, i32 0, i32 0
  store %struct.sk_buff* %87, %struct.sk_buff** %89, align 8
  %90 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %91 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %92 = call i32 @sk_psock_queue_msg(%struct.sk_psock* %90, %struct.sk_msg* %91)
  %93 = load %struct.sock*, %struct.sock** %6, align 8
  %94 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %95 = call i32 @sk_psock_data_ready(%struct.sock* %93, %struct.sk_psock* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %82, %56, %34, %23
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.sk_msg* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sk_rmem_schedule(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(%struct.sk_msg*) #1

declare dso_local i32 @sk_msg_init(%struct.sk_msg*) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i32) #1

declare dso_local i32 @sk_psock_queue_msg(%struct.sk_psock*, %struct.sk_msg*) #1

declare dso_local i32 @sk_psock_data_ready(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"session %p data %p size %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't allocate memory for new frame\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*, %struct.socket*, %struct.sk_buff_head*, i8, i8*, i32)* @hidp_send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_send_message(%struct.hidp_session* %0, %struct.socket* %1, %struct.sk_buff_head* %2, i8 zeroext %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hidp_session*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sk_buff_head*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.sock*, align 8
  %16 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %8, align 8
  store %struct.socket* %1, %struct.socket** %9, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %10, align 8
  store i8 %3, i8* %11, align 1
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.socket*, %struct.socket** %9, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %15, align 8
  %20 = load %struct.hidp_session*, %struct.hidp_session** %8, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %20, i8* %21, i32 %22)
  %24 = load %struct.hidp_session*, %struct.hidp_session** %8, align 8
  %25 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %24, i32 0, i32 0
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %66

31:                                               ; preds = %6
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sk_buff* @alloc_skb(i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %14, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %66

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %44 = load i8, i8* %11, align 1
  %45 = call i32 @skb_put_u8(%struct.sk_buff* %43, i8 zeroext %44)
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @skb_put_data(%struct.sk_buff* %52, i8* %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %16, align 4
  br label %58

57:                                               ; preds = %48, %42
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %61 = call i32 @skb_queue_tail(%struct.sk_buff_head* %59, %struct.sk_buff* %60)
  %62 = load %struct.sock*, %struct.sock** %15, align 8
  %63 = call i32 @sk_sleep(%struct.sock* %62)
  %64 = call i32 @wake_up_interruptible(i32 %63)
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %58, %38, %28
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, i8*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i8 zeroext) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

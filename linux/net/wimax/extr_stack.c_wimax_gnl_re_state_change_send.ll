; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_stack.c_wimax_gnl_re_state_change_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_stack.c_wimax_gnl_re_state_change_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"(wimax_dev %p report_skb %p)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@wimax_gnl_family = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"(wimax_dev %p report_skb %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wimax_dev*, %struct.sk_buff*, i8*)* @wimax_gnl_re_state_change_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wimax_gnl_re_state_change_send(%struct.wimax_dev* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.wimax_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %10 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %9)
  store %struct.device* %10, %struct.device** %8, align 8
  %11 = load %struct.device*, %struct.device** %8, align 8
  %12 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @d_fnstart(i32 3, %struct.device* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %12, %struct.sk_buff* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp eq %struct.sk_buff* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @genlmsg_end(%struct.sk_buff* %21, i8* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @genlmsg_multicast(i32* @wimax_gnl_family, %struct.sk_buff* %24, i32 0, i32 0, i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @d_fnend(i32 3, %struct.device* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.wimax_dev* %29, %struct.sk_buff* %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.sk_buff*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

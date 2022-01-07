; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_op-msg.c_wimax_msg_data_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_op-msg.c_wimax_msg_data_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@WIMAX_GNL_MSG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot find attribute WIMAX_GNL_MSG_DATA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wimax_msg_data_len(%struct.sk_buff* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %12, %struct.nlmsghdr** %6, align 8
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %14 = load i32, i32* @WIMAX_GNL_MSG_DATA, align 4
  %15 = call %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr* %13, i32 4, i32 %14)
  store %struct.nlattr* %15, %struct.nlattr** %7, align 8
  %16 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %17 = icmp eq %struct.nlattr* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %22 = call i64 @nla_len(%struct.nlattr* %21)
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %25 = call i8* @nla_data(%struct.nlattr* %24)
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %20, %18
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

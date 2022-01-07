; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@netlbl_unlabel_gnl_family = common dso_local global i32 0, align 4
@NLBL_UNLABEL_C_LIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLBL_UNLABEL_A_ACPTFLG = common dso_local global i32 0, align 4
@netlabel_unlabel_acceptflg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_unlabel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_unlabel_list(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sk_buff* @nlmsg_new(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = icmp eq %struct.sk_buff* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = load i32, i32* @NLBL_UNLABEL_C_LIST, align 4
  %21 = call i8* @genlmsg_put_reply(%struct.sk_buff* %18, %struct.genl_info* %19, i32* @netlbl_unlabel_gnl_family, i32 0, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %42

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* @NLBL_UNLABEL_A_ACPTFLG, align 4
  %30 = load i32, i32* @netlabel_unlabel_acceptflg, align 4
  %31 = call i32 @nla_put_u8(%struct.sk_buff* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @genlmsg_end(%struct.sk_buff* %36, i8* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = call i32 @genlmsg_reply(%struct.sk_buff* %39, %struct.genl_info* %40)
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %34, %24, %16
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_alloc_large_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_alloc_large_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@netlink_skb_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32, i32)* @netlink_alloc_large_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netlink_alloc_large_skb(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sk_buff* @alloc_skb(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %3, align 8
  br label %43

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SKB_DATA_ALIGN(i32 %19)
  %21 = call i32 @SKB_DATA_ALIGN(i32 4)
  %22 = add i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @vmalloc(i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %43

28:                                               ; preds = %18
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.sk_buff* @__build_skb(i8* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @vfree(i8* %35)
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @netlink_skb_destructor, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %3, align 8
  br label %43

43:                                               ; preds = %41, %27, %14
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %44
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local %struct.sk_buff* @__build_skb(i8*, i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

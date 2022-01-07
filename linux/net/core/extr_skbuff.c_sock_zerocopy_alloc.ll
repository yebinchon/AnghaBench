; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_sock_zerocopy_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_sock_zerocopy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubuf_info = type { i32, i64, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sock_zerocopy_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubuf_info* @sock_zerocopy_alloc(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.ubuf_info*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ubuf_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @in_task()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sk_buff* @sock_omalloc(%struct.sock* %13, i32 0, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.ubuf_info* null, %struct.ubuf_info** %3, align 8
  br label %60

19:                                               ; preds = %2
  %20 = call i32 @BUILD_BUG_ON(i32 1)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.ubuf_info*
  store %struct.ubuf_info* %25, %struct.ubuf_info** %6, align 8
  %26 = load %struct.ubuf_info*, %struct.ubuf_info** %6, align 8
  %27 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.ubuf_info*, %struct.ubuf_info** %6, align 8
  %30 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %29, i32 0, i32 6
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @mm_account_pinned_pages(%struct.TYPE_2__* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  store %struct.ubuf_info* null, %struct.ubuf_info** %3, align 8
  br label %60

37:                                               ; preds = %19
  %38 = load i32, i32* @sock_zerocopy_callback, align 4
  %39 = load %struct.ubuf_info*, %struct.ubuf_info** %6, align 8
  %40 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = call i64 @atomic_inc_return(i32* %42)
  %44 = sub nsw i64 %43, 1
  %45 = load %struct.ubuf_info*, %struct.ubuf_info** %6, align 8
  %46 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %45, i32 0, i32 4
  store i64 %44, i64* %46, align 8
  %47 = load %struct.ubuf_info*, %struct.ubuf_info** %6, align 8
  %48 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.ubuf_info*, %struct.ubuf_info** %6, align 8
  %51 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ubuf_info*, %struct.ubuf_info** %6, align 8
  %53 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  %54 = load %struct.ubuf_info*, %struct.ubuf_info** %6, align 8
  %55 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %54, i32 0, i32 3
  %56 = call i32 @refcount_set(i32* %55, i32 1)
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = call i32 @sock_hold(%struct.sock* %57)
  %59 = load %struct.ubuf_info*, %struct.ubuf_info** %6, align 8
  store %struct.ubuf_info* %59, %struct.ubuf_info** %3, align 8
  br label %60

60:                                               ; preds = %37, %34, %18
  %61 = load %struct.ubuf_info*, %struct.ubuf_info** %3, align 8
  ret %struct.ubuf_info* %61
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_task(...) #1

declare dso_local %struct.sk_buff* @sock_omalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @mm_account_pinned_pages(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

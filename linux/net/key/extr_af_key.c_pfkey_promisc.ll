; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sadb_msg = type { i32, i32, i64 }
%struct.pfkey_sock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BROADCAST_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_promisc(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.pfkey_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sadb_msg*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %14)
  store %struct.pfkey_sock* %15, %struct.pfkey_sock** %10, align 8
  %16 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %17 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %20 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %37

24:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %72

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %36 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i64 @skb_cloned(%struct.sk_buff* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %45, i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %7, align 8
  br label %52

48:                                               ; preds = %40, %37
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.sadb_msg*
  store %struct.sadb_msg* %62, %struct.sadb_msg** %13, align 8
  %63 = load %struct.sadb_msg*, %struct.sadb_msg** %13, align 8
  %64 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %55, %52
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = load i32, i32* @BROADCAST_ALL, align 4
  %69 = load %struct.sock*, %struct.sock** %6, align 8
  %70 = call i32 @sock_net(%struct.sock* %69)
  %71 = call i32 @pfkey_broadcast(%struct.sk_buff* %66, i32 %67, i32 %68, i32* null, i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %65, %30
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

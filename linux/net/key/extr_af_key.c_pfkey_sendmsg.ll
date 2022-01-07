; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @pfkey_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sadb_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  store %struct.sadb_msg* null, %struct.sadb_msg** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.net* @sock_net(%struct.sock* %15)
  store %struct.net* %16, %struct.net** %11, align 8
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MSG_OOB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %76

26:                                               ; preds = %3
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 32
  %35 = icmp ugt i32 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %76

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.sk_buff* @alloc_skb(i64 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = icmp eq %struct.sk_buff* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %76

46:                                               ; preds = %37
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @skb_put(%struct.sk_buff* %49, i64 %50)
  %52 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @memcpy_from_msg(i32 %51, %struct.msghdr* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %76

57:                                               ; preds = %46
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = call %struct.sadb_msg* @pfkey_get_base_msg(%struct.sk_buff* %58, i32* %10)
  store %struct.sadb_msg* %59, %struct.sadb_msg** %9, align 8
  %60 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %61 = icmp ne %struct.sadb_msg* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %76

63:                                               ; preds = %57
  %64 = load %struct.net*, %struct.net** %11, align 8
  %65 = getelementptr inbounds %struct.net, %struct.net* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.sock*, %struct.sock** %7, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %71 = call i32 @pfkey_process(%struct.sock* %68, %struct.sk_buff* %69, %struct.sadb_msg* %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.net*, %struct.net** %11, align 8
  %73 = getelementptr inbounds %struct.net, %struct.net* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %76

76:                                               ; preds = %63, %62, %56, %45, %36, %25
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %81 = icmp ne %struct.sadb_msg* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.sock*, %struct.sock** %7, align 8
  %86 = call i64 @pfkey_error(%struct.sadb_msg* %83, i32 %84, %struct.sock* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %88, %82, %79, %76
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = sext i32 %92 to i64
  br label %98

96:                                               ; preds = %89
  %97 = load i64, i64* %6, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i64 [ %95, %94 ], [ %97, %96 ]
  %100 = trunc i64 %99 to i32
  ret i32 %100
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @memcpy_from_msg(i32, %struct.msghdr*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.sadb_msg* @pfkey_get_base_msg(%struct.sk_buff*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pfkey_process(%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @pfkey_error(%struct.sadb_msg*, i32, %struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

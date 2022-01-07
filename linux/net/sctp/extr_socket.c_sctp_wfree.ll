; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_wfree.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_wfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sctp_chunk = type { %struct.sctp_shared_key*, %struct.sctp_association* }
%struct.sctp_shared_key = type { i32, i32, i32, i64 }
%struct.sctp_association = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, %struct.sctp_ulpevent*)* }
%struct.sctp_ulpevent = type { i32 }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.sctp_chunk* }

@SCTP_AUTH_FREE_KEY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @sctp_wfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_wfree(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sctp_chunk*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sctp_shared_key*, align 8
  %7 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  store %struct.sctp_chunk* %11, %struct.sctp_chunk** %3, align 8
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %12, i32 0, i32 1
  %14 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  store %struct.sctp_association* %14, %struct.sctp_association** %4, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %5, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @sk_mem_uncharge(%struct.sock* %19, i64 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 16
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 16
  %38 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 8
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = call i32 @refcount_sub_and_test(i32 16, i32* %45)
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %49 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %48, i32 0, i32 0
  %50 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %49, align 8
  %51 = icmp ne %struct.sctp_shared_key* %50, null
  br i1 %51, label %52, label %97

52:                                               ; preds = %1
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %54 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %53, i32 0, i32 0
  %55 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %54, align 8
  store %struct.sctp_shared_key* %55, %struct.sctp_shared_key** %6, align 8
  %56 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %57 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %92

60:                                               ; preds = %52
  %61 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %62 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %61, i32 0, i32 2
  %63 = call i32 @list_empty(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %60
  %66 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %67 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %66, i32 0, i32 1
  %68 = call i32 @refcount_read(i32* %67)
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %72 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %73 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SCTP_AUTH_FREE_KEY, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association* %71, i32 %74, i32 %75, i32 %76)
  store %struct.sctp_ulpevent* %77, %struct.sctp_ulpevent** %7, align 8
  %78 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  %79 = icmp ne %struct.sctp_ulpevent* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %70
  %81 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %82 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32 (i32*, %struct.sctp_ulpevent*)*, i32 (i32*, %struct.sctp_ulpevent*)** %85, align 8
  %87 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %88 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %87, i32 0, i32 0
  %89 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  %90 = call i32 %86(i32* %88, %struct.sctp_ulpevent* %89)
  br label %91

91:                                               ; preds = %80, %70
  br label %92

92:                                               ; preds = %91, %65, %60, %52
  %93 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %94 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %93, i32 0, i32 0
  %95 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %94, align 8
  %96 = call i32 @sctp_auth_shkey_release(%struct.sctp_shared_key* %95)
  br label %97

97:                                               ; preds = %92, %1
  %98 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %99 = call i32 @sock_wfree(%struct.sk_buff* %98)
  %100 = load %struct.sock*, %struct.sock** %5, align 8
  %101 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %102 = call i32 @sctp_wake_up_waiters(%struct.sock* %100, %struct.sctp_association* %101)
  %103 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %104 = call i32 @sctp_association_put(%struct.sctp_association* %103)
  ret void
}

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_sub_and_test(i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local i32 @sctp_auth_shkey_release(%struct.sctp_shared_key*) #1

declare dso_local i32 @sock_wfree(%struct.sk_buff*) #1

declare dso_local i32 @sctp_wake_up_waiters(%struct.sock*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_association_put(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

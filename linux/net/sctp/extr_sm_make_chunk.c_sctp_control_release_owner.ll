; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_control_release_owner.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_control_release_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sctp_chunk = type { %struct.sctp_shared_key*, %struct.sctp_association* }
%struct.sctp_shared_key = type { i32, i32, i32, i64 }
%struct.sctp_association = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, %struct.sctp_ulpevent*)* }
%struct.sctp_ulpevent = type { i32 }
%struct.TYPE_6__ = type { %struct.sctp_chunk* }

@SCTP_AUTH_FREE_KEY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @sctp_control_release_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_control_release_owner(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sctp_chunk*, align 8
  %4 = alloca %struct.sctp_shared_key*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  store %struct.sctp_chunk* %10, %struct.sctp_chunk** %3, align 8
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 0
  %13 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %12, align 8
  %14 = icmp ne %struct.sctp_shared_key* %13, null
  br i1 %14, label %15, label %63

15:                                               ; preds = %1
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %16, i32 0, i32 0
  %18 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %17, align 8
  store %struct.sctp_shared_key* %18, %struct.sctp_shared_key** %4, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 1
  %21 = load %struct.sctp_association*, %struct.sctp_association** %20, align 8
  store %struct.sctp_association* %21, %struct.sctp_association** %5, align 8
  %22 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %15
  %27 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %27, i32 0, i32 2
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %26
  %32 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %4, align 8
  %33 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %32, i32 0, i32 1
  %34 = call i32 @refcount_read(i32* %33)
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %38 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SCTP_AUTH_FREE_KEY, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association* %37, i32 %40, i32 %41, i32 %42)
  store %struct.sctp_ulpevent* %43, %struct.sctp_ulpevent** %6, align 8
  %44 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  %45 = icmp ne %struct.sctp_ulpevent* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %48 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (i32*, %struct.sctp_ulpevent*)*, i32 (i32*, %struct.sctp_ulpevent*)** %51, align 8
  %53 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %54 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %53, i32 0, i32 0
  %55 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  %56 = call i32 %52(i32* %54, %struct.sctp_ulpevent* %55)
  br label %57

57:                                               ; preds = %46, %36
  br label %58

58:                                               ; preds = %57, %31, %26, %15
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %60 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %59, i32 0, i32 0
  %61 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %60, align 8
  %62 = call i32 @sctp_auth_shkey_release(%struct.sctp_shared_key* %61)
  br label %63

63:                                               ; preds = %58, %1
  ret void
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local i32 @sctp_auth_shkey_release(%struct.sctp_shared_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

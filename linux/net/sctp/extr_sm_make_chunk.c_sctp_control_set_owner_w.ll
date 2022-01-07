; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_control_set_owner_w.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_control_set_owner_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, i64, %struct.sk_buff*, %struct.sctp_association* }
%struct.sk_buff = type { i32, i32* }
%struct.sctp_association = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { %struct.sctp_chunk* }

@sctp_control_release_owner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_chunk*)* @sctp_control_set_owner_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_control_set_owner_w(%struct.sctp_chunk* %0) #0 {
  %2 = alloca %struct.sctp_chunk*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %2, align 8
  %5 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %5, i32 0, i32 3
  %7 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  store %struct.sctp_association* %7, %struct.sctp_association** %3, align 8
  %8 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %9 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %8, i32 0, i32 2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %22 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sctp_auth_shkey_hold(i32 %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %27 = icmp ne %struct.sctp_association* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i32* [ %32, %28 ], [ null, %33 ]
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.sctp_chunk* %38, %struct.sctp_chunk** %41, align 8
  %42 = load i32, i32* @sctp_control_release_owner, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  ret void
}

declare dso_local i32 @sctp_auth_shkey_hold(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

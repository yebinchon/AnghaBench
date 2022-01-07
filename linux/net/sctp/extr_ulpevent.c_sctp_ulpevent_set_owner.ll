; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_set_owner.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { %struct.sctp_association*, i32, %struct.sctp_chunk* }
%struct.sctp_chunk = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sctp_association = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpevent*, %struct.sctp_association*)* @sctp_ulpevent_set_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca %struct.sctp_ulpevent*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_ulpevent* %0, %struct.sctp_ulpevent** %3, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %4, align 8
  %7 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %7, i32 0, i32 2
  %9 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  store %struct.sctp_chunk* %9, %struct.sctp_chunk** %5, align 8
  %10 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %11 = call i32 @sctp_association_hold(%struct.sctp_association* %10)
  %12 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %13 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %15 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %16 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %15, i32 0, i32 0
  store %struct.sctp_association* %14, %struct.sctp_association** %16, align 8
  %17 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %21 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %20, i32 0, i32 0
  %22 = load %struct.sctp_association*, %struct.sctp_association** %21, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 1
  %24 = call i32 @atomic_add(i32 %19, i32* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @sctp_skb_set_owner_r(%struct.sk_buff* %25, i64 %29)
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %32 = icmp ne %struct.sctp_chunk* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %2
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %35 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %40 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %47 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %51 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %45, %38, %33, %2
  ret void
}

declare dso_local i32 @sctp_association_hold(%struct.sctp_association*) #1

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @sctp_skb_set_owner_r(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

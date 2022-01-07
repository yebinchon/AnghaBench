; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c___sctp_ulpevent_read_nxtinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c___sctp_ulpevent_read_nxtinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32, i32, i32, i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sctp_nxtinfo = type { i32, i32, i32, i32, i32 }

@SCTP_NOTIFICATION = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_NXTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpevent*, %struct.msghdr*, %struct.sk_buff*)* @__sctp_ulpevent_read_nxtinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sctp_ulpevent_read_nxtinfo(%struct.sctp_ulpevent* %0, %struct.msghdr* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sctp_nxtinfo, align 4
  store %struct.sctp_ulpevent* %0, %struct.sctp_ulpevent** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = call i32 @memset(%struct.sctp_nxtinfo* %7, i32 0, i32 20)
  %9 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.sctp_nxtinfo, %struct.sctp_nxtinfo* %7, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.sctp_nxtinfo, %struct.sctp_nxtinfo* %7, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %18 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.sctp_nxtinfo, %struct.sctp_nxtinfo* %7, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %22 = call i64 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @SCTP_NOTIFICATION, align 4
  %26 = getelementptr inbounds %struct.sctp_nxtinfo, %struct.sctp_nxtinfo* %7, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.sctp_nxtinfo, %struct.sctp_nxtinfo* %7, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %35 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sctp_assoc2id(i32 %36)
  %38 = getelementptr inbounds %struct.sctp_nxtinfo, %struct.sctp_nxtinfo* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %40 = load i32, i32* @IPPROTO_SCTP, align 4
  %41 = load i32, i32* @SCTP_NXTINFO, align 4
  %42 = call i32 @put_cmsg(%struct.msghdr* %39, i32 %40, i32 %41, i32 20, %struct.sctp_nxtinfo* %7)
  ret void
}

declare dso_local i32 @memset(%struct.sctp_nxtinfo*, i32, i32) #1

declare dso_local i64 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_assoc2id(i32) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, %struct.sctp_nxtinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

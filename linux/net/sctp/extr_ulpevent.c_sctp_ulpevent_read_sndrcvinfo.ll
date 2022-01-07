; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_read_sndrcvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_read_sndrcvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.sctp_sndrcvinfo = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_SNDRCV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ulpevent_read_sndrcvinfo(%struct.sctp_ulpevent* %0, %struct.msghdr* %1) #0 {
  %3 = alloca %struct.sctp_ulpevent*, align 8
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca %struct.sctp_sndrcvinfo, align 8
  store %struct.sctp_ulpevent* %0, %struct.sctp_ulpevent** %3, align 8
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  %6 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %7 = call i64 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %52

10:                                               ; preds = %2
  %11 = call i32 @memset(%struct.sctp_sndrcvinfo* %5, i32 0, i32 40)
  %12 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %5, i32 0, i32 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %5, i32 0, i32 7
  store i32 %18, i32* %19, align 8
  %20 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %21 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %5, i32 0, i32 6
  store i32 %22, i32* %23, align 4
  %24 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %5, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %5, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  %32 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %33 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %5, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %37 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @sctp_assoc2id(%struct.TYPE_2__* %38)
  %40 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %5, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %42 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %5, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %49 = load i32, i32* @IPPROTO_SCTP, align 4
  %50 = load i32, i32* @SCTP_SNDRCV, align 4
  %51 = call i32 @put_cmsg(%struct.msghdr* %48, i32 %49, i32 %50, i32 40, %struct.sctp_sndrcvinfo* %5)
  br label %52

52:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent*) #1

declare dso_local i32 @memset(%struct.sctp_sndrcvinfo*, i32, i32) #1

declare dso_local i32 @sctp_assoc2id(%struct.TYPE_2__*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, %struct.sctp_sndrcvinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

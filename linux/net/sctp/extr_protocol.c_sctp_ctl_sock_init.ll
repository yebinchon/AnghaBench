; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_ctl_sock_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_ctl_sock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to create the SCTP control socket\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @sctp_ctl_sock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_ctl_sock_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load i64, i64* @PF_INET, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* @PF_INET6, align 8
  %8 = call i64 @sctp_get_pf_specific(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @PF_INET6, align 8
  store i64 %11, i64* %5, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @SOCK_SEQPACKET, align 4
  %18 = load i32, i32* @IPPROTO_SCTP, align 4
  %19 = load %struct.net*, %struct.net** %3, align 8
  %20 = call i32 @inet_ctl_sock_create(i32* %15, i64 %16, i32 %17, i32 %18, %struct.net* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %12
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @PF_INET6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.net*, %struct.net** %3, align 8
  %29 = getelementptr inbounds %struct.net, %struct.net* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* @AF_INET, align 8
  %32 = load i32, i32* @SOCK_SEQPACKET, align 4
  %33 = load i32, i32* @IPPROTO_SCTP, align 4
  %34 = load %struct.net*, %struct.net** %3, align 8
  %35 = call i32 @inet_ctl_sock_create(i32* %30, i64 %31, i32 %32, i32 %33, %struct.net* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %23, %12
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @sctp_get_pf_specific(i64) #1

declare dso_local i32 @inet_ctl_sock_create(i32*, i64, i32, i32, %struct.net*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

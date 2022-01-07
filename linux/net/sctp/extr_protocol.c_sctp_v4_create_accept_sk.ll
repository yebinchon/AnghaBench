; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_create_accept_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_create_accept_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.sock*)* }
%struct.sctp_association = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.inet_sock = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sctp_association*, i32)* @sctp_v4_create_accept_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @sctp_v4_create_accept_sk(%struct.sock* %0, %struct.sctp_association* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call i32 @sock_net(%struct.sock* %9)
  %11 = load i32, i32* @PF_INET, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.sock* @sk_alloc(i32 %10, i32 %11, i32 %12, %struct.TYPE_10__* %15, i32 %16)
  store %struct.sock* %17, %struct.sock** %7, align 8
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = icmp ne %struct.sock* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = call i32 @sock_init_data(i32* null, %struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %27 = call i32 @sctp_copy_sock(%struct.sock* %24, %struct.sock* %25, %struct.sctp_association* %26)
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = load i32, i32* @SOCK_ZAPPED, align 4
  %30 = call i32 @sock_reset_flag(%struct.sock* %28, i32 %29)
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = call i32 @sctp_v4_copy_ip_options(%struct.sock* %31, %struct.sock* %32)
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = call %struct.inet_sock* @inet_sk(%struct.sock* %34)
  store %struct.inet_sock* %35, %struct.inet_sock** %8, align 8
  %36 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %37 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %44 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = call i32 @sk_refcnt_debug_inc(%struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %7, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64 (%struct.sock*)*, i64 (%struct.sock*)** %50, align 8
  %52 = load %struct.sock*, %struct.sock** %7, align 8
  %53 = call i64 %51(%struct.sock* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %21
  %56 = load %struct.sock*, %struct.sock** %7, align 8
  %57 = call i32 @sk_common_release(%struct.sock* %56)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %58

58:                                               ; preds = %55, %21
  br label %59

59:                                               ; preds = %58, %20
  %60 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %60
}

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_init_data(i32*, %struct.sock*) #1

declare dso_local i32 @sctp_copy_sock(%struct.sock*, %struct.sock*, %struct.sctp_association*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @sctp_v4_copy_ip_options(%struct.sock*, %struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sk_refcnt_debug_inc(%struct.sock*) #1

declare dso_local i32 @sk_common_release(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

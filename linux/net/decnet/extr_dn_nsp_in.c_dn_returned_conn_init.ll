; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_returned_conn_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_returned_conn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32 }
%struct.dn_scp = type { i64 }

@DN_CI = common dso_local global i64 0, align 8
@DN_NC = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @dn_returned_conn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_returned_conn_init(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dn_scp*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.dn_scp* @DN_SK(%struct.sock* %6)
  store %struct.dn_scp* %7, %struct.dn_scp** %5, align 8
  %8 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %9 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DN_CI, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i64, i64* @DN_NC, align 8
  %15 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %16 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* @TCP_CLOSE, align 4
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load i32, i32* @SOCK_DEAD, align 4
  %22 = call i32 @sock_flag(%struct.sock* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %13
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %26, align 8
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 %27(%struct.sock* %28)
  br label %30

30:                                               ; preds = %24, %13
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

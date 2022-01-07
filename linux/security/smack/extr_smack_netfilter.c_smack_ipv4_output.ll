; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_netfilter.c_smack_ipv4_output.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_netfilter.c_smack_ipv4_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32 }
%struct.sock = type { %struct.socket_smack* }
%struct.socket_smack = type { %struct.smack_known* }
%struct.smack_known = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @smack_ipv4_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_ipv4_output(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_hook_state*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.socket_smack*, align 8
  %9 = alloca %struct.smack_known*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.sock* @skb_to_full_sk(%struct.sk_buff* %10)
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load %struct.socket_smack*, %struct.socket_smack** %16, align 8
  %18 = icmp ne %struct.socket_smack* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load %struct.socket_smack*, %struct.socket_smack** %21, align 8
  store %struct.socket_smack* %22, %struct.socket_smack** %8, align 8
  %23 = load %struct.socket_smack*, %struct.socket_smack** %8, align 8
  %24 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %23, i32 0, i32 0
  %25 = load %struct.smack_known*, %struct.smack_known** %24, align 8
  store %struct.smack_known* %25, %struct.smack_known** %9, align 8
  %26 = load %struct.smack_known*, %struct.smack_known** %9, align 8
  %27 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %19, %14, %3
  %32 = load i32, i32* @NF_ACCEPT, align 4
  ret i32 %32
}

declare dso_local %struct.sock* @skb_to_full_sk(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_printk_skb.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_printk_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }

@AUDIT_EOE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"type=%d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @kauditd_printk_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kauditd_printk_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nlmsghdr*, align 8
  %4 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %5)
  store %struct.nlmsghdr* %6, %struct.nlmsghdr** %3, align 8
  %7 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %8 = call i8* @nlmsg_data(%struct.nlmsghdr* %7)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %10 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUDIT_EOE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = call i64 (...) @printk_ratelimit()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %19 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @pr_notice(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %20, i8* %21)
  br label %23

23:                                               ; preds = %17, %14, %1
  ret void
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i8* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @pr_notice(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

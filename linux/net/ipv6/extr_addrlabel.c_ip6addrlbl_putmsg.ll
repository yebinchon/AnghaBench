; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_putmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_putmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.ifaddrlblmsg = type { i32, i32, i32, i64, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlmsghdr*, i32, i32, i32)* @ip6addrlbl_putmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6addrlbl_putmsg(%struct.nlmsghdr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifaddrlblmsg*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %11 = call %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr* %10)
  store %struct.ifaddrlblmsg* %11, %struct.ifaddrlblmsg** %9, align 8
  %12 = load i32, i32* @AF_INET6, align 4
  %13 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %14 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %17 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %19 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %22 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %25 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  ret void
}

declare dso_local %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

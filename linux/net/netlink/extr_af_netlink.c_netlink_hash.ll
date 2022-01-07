; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_sock = type { i32, i32 }
%struct.netlink_compare_arg = type { i32 }

@netlink_compare_arg_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @netlink_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_hash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_sock*, align 8
  %8 = alloca %struct.netlink_compare_arg, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.netlink_sock*
  store %struct.netlink_sock* %10, %struct.netlink_sock** %7, align 8
  %11 = load %struct.netlink_sock*, %struct.netlink_sock** %7, align 8
  %12 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %11, i32 0, i32 1
  %13 = call i32 @sock_net(i32* %12)
  %14 = load %struct.netlink_sock*, %struct.netlink_sock** %7, align 8
  %15 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netlink_compare_arg_init(%struct.netlink_compare_arg* %8, i32 %13, i32 %16)
  %18 = bitcast %struct.netlink_compare_arg* %8 to i32*
  %19 = load i32, i32* @netlink_compare_arg_len, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @jhash2(i32* %18, i32 %22, i32 %23)
  ret i32 %24
}

declare dso_local i32 @netlink_compare_arg_init(%struct.netlink_compare_arg*, i32, i32) #1

declare dso_local i32 @sock_net(i32*) #1

declare dso_local i32 @jhash2(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

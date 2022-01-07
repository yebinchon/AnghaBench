; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_cmd_exact.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_cmd_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.inet_diag_req_v2 = type { i32 }
%struct.inet_diag_handler = type { i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.inet_diag_req_v2*)*, i32 (%struct.sk_buff*, %struct.inet_diag_req_v2*)* }

@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.inet_diag_req_v2*)* @inet_diag_cmd_exact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_cmd_exact(i32 %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.inet_diag_req_v2* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.inet_diag_req_v2*, align 8
  %9 = alloca %struct.inet_diag_handler*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %7, align 8
  store %struct.inet_diag_req_v2* %3, %struct.inet_diag_req_v2** %8, align 8
  %11 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %8, align 8
  %12 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inet_diag_handler* @inet_diag_lock_handler(i32 %13)
  store %struct.inet_diag_handler* %14, %struct.inet_diag_handler** %9, align 8
  %15 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %16 = call i64 @IS_ERR(%struct.inet_diag_handler* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %20 = call i32 @PTR_ERR(%struct.inet_diag_handler* %19)
  store i32 %20, i32* %10, align 4
  br label %54

21:                                               ; preds = %4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %27 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %26, i32 0, i32 0
  %28 = load i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.inet_diag_req_v2*)*, i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.inet_diag_req_v2*)** %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %31 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %8, align 8
  %32 = call i32 %28(%struct.sk_buff* %29, %struct.nlmsghdr* %30, %struct.inet_diag_req_v2* %31)
  store i32 %32, i32* %10, align 4
  br label %53

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SOCK_DESTROY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %39 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %38, i32 0, i32 1
  %40 = load i32 (%struct.sk_buff*, %struct.inet_diag_req_v2*)*, i32 (%struct.sk_buff*, %struct.inet_diag_req_v2*)** %39, align 8
  %41 = icmp ne i32 (%struct.sk_buff*, %struct.inet_diag_req_v2*)* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %44 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %43, i32 0, i32 1
  %45 = load i32 (%struct.sk_buff*, %struct.inet_diag_req_v2*)*, i32 (%struct.sk_buff*, %struct.inet_diag_req_v2*)** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %8, align 8
  %48 = call i32 %45(%struct.sk_buff* %46, %struct.inet_diag_req_v2* %47)
  store i32 %48, i32* %10, align 4
  br label %52

49:                                               ; preds = %37, %33
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %25
  br label %54

54:                                               ; preds = %53, %18
  %55 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %9, align 8
  %56 = call i32 @inet_diag_unlock_handler(%struct.inet_diag_handler* %55)
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local %struct.inet_diag_handler* @inet_diag_lock_handler(i32) #1

declare dso_local i64 @IS_ERR(%struct.inet_diag_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.inet_diag_handler*) #1

declare dso_local i32 @inet_diag_unlock_handler(%struct.inet_diag_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i64 }
%struct.net = type { %struct.sock* }
%struct.sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genl_notify(%struct.genl_family* %0, %struct.sk_buff* %1, %struct.genl_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.genl_family*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.genl_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  store %struct.genl_family* %0, %struct.genl_family** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.genl_info* %2, %struct.genl_info** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %15 = call %struct.net* @genl_info_net(%struct.genl_info* %14)
  store %struct.net* %15, %struct.net** %11, align 8
  %16 = load %struct.net*, %struct.net** %11, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @nlmsg_report(i64 %26)
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %23, %5
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.genl_family*, %struct.genl_family** %6, align 8
  %31 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %53

38:                                               ; preds = %28
  %39 = load %struct.genl_family*, %struct.genl_family** %6, align 8
  %40 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %9, align 8
  %44 = load %struct.sock*, %struct.sock** %12, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load %struct.genl_info*, %struct.genl_info** %8, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @nlmsg_notify(%struct.sock* %44, %struct.sk_buff* %45, i32 %48, i64 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %38, %37
  ret void
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @nlmsg_report(i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nlmsg_notify(%struct.sock*, %struct.sk_buff*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

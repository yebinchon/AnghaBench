; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_netlink_diag_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_netlink_diag_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, i32 }
%struct.netlink_diag_req = type { i32 }

@NDIAG_PROTO_ALL = common dso_local global i32 0, align 4
@MAX_LINKS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @netlink_diag_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_diag_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.netlink_diag_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %10 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %11 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %16 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.netlink_diag_req* @nlmsg_data(i32 %17)
  store %struct.netlink_diag_req* %18, %struct.netlink_diag_req** %6, align 8
  %19 = load %struct.netlink_diag_req*, %struct.netlink_diag_req** %6, align 8
  %20 = getelementptr inbounds %struct.netlink_diag_req, %struct.netlink_diag_req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NDIAG_PROTO_ALL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %2
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %44, %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MAX_LINKS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @__netlink_diag_dump(%struct.sk_buff* %35, %struct.netlink_callback* %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %47

43:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %30

47:                                               ; preds = %42, %30
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %50 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %48, i32* %52, align 4
  br label %70

53:                                               ; preds = %2
  %54 = load %struct.netlink_diag_req*, %struct.netlink_diag_req** %6, align 8
  %55 = getelementptr inbounds %struct.netlink_diag_req, %struct.netlink_diag_req* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MAX_LINKS, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %81

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %65 = load %struct.netlink_diag_req*, %struct.netlink_diag_req** %6, align 8
  %66 = getelementptr inbounds %struct.netlink_diag_req, %struct.netlink_diag_req* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @__netlink_diag_dump(%struct.sk_buff* %63, %struct.netlink_callback* %64, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %62, %47
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  br label %79

75:                                               ; preds = %70
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  br label %79

79:                                               ; preds = %75, %73
  %80 = phi i32 [ %74, %73 ], [ %78, %75 ]
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %59
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.netlink_diag_req* @nlmsg_data(i32) #1

declare dso_local i32 @__netlink_diag_dump(%struct.sk_buff*, %struct.netlink_callback*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

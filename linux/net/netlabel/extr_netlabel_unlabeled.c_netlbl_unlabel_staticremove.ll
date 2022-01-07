; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_staticremove.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_staticremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.netlbl_audit = type { i32 }

@NLBL_UNLABEL_A_IFACE = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV4ADDR = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV4MASK = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV6ADDR = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV6MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_unlabel_staticremove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_unlabel_staticremove(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlbl_audit, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @NLBL_UNLABEL_A_IFACE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @NLBL_UNLABEL_A_IPV4ADDR, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @NLBL_UNLABEL_A_IPV4MASK, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %27, %19
  %37 = phi i1 [ true, %19 ], [ %35, %27 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @NLBL_UNLABEL_A_IPV6ADDR, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @NLBL_UNLABEL_A_IPV6MASK, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %46, %36
  %56 = phi i1 [ true, %36 ], [ %54, %46 ]
  %57 = zext i1 %56 to i32
  %58 = xor i32 %38, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55, %2
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %55
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @netlbl_netlink_auditinfo(%struct.sk_buff* %64, %struct.netlbl_audit* %11)
  %66 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %67 = call i32 @netlbl_unlabel_addrinfo_get(%struct.genl_info* %66, i8** %8, i8** %9, i32* %10)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %85

72:                                               ; preds = %63
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @NLBL_UNLABEL_A_IFACE, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @nla_data(i32 %78)
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @netlbl_unlhsh_remove(i32* @init_net, i8* %80, i8* %81, i8* %82, i32 %83, %struct.netlbl_audit* %11)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %72, %70, %60
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @netlbl_netlink_auditinfo(%struct.sk_buff*, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_unlabel_addrinfo_get(%struct.genl_info*, i8**, i8**, i32*) #1

declare dso_local i8* @nla_data(i32) #1

declare dso_local i32 @netlbl_unlhsh_remove(i32*, i8*, i8*, i8*, i32, %struct.netlbl_audit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

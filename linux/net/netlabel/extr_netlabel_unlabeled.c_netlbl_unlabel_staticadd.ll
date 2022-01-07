; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_staticadd.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlabel_staticadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.netlbl_audit = type { i32 }

@NLBL_UNLABEL_A_SECCTX = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IFACE = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV4ADDR = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV4MASK = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV6ADDR = common dso_local global i64 0, align 8
@NLBL_UNLABEL_A_IPV6MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_unlabel_staticadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_unlabel_staticadd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netlbl_audit, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @NLBL_UNLABEL_A_SECCTX, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %2
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @NLBL_UNLABEL_A_IFACE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %20
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @NLBL_UNLABEL_A_IPV4ADDR, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @NLBL_UNLABEL_A_IPV4MASK, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %36, %28
  %46 = phi i1 [ true, %28 ], [ %44, %36 ]
  %47 = zext i1 %46 to i32
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @NLBL_UNLABEL_A_IPV6ADDR, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @NLBL_UNLABEL_A_IPV6MASK, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %55, %45
  %65 = phi i1 [ true, %45 ], [ %63, %55 ]
  %66 = zext i1 %65 to i32
  %67 = xor i32 %47, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64, %20, %2
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %115

72:                                               ; preds = %64
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @netlbl_netlink_auditinfo(%struct.sk_buff* %73, %struct.netlbl_audit* %12)
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = call i32 @netlbl_unlabel_addrinfo_get(%struct.genl_info* %75, i8** %8, i8** %9, i32* %10)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %115

81:                                               ; preds = %72
  %82 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @NLBL_UNLABEL_A_IFACE, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @nla_data(i32 %87)
  store i8* %88, i8** %7, align 8
  %89 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %90 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @NLBL_UNLABEL_A_SECCTX, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @nla_data(i32 %94)
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @NLBL_UNLABEL_A_SECCTX, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nla_len(i32 %101)
  %103 = call i32 @security_secctx_to_secid(i8* %95, i32 %102, i32* %11)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %81
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %115

108:                                              ; preds = %81
  %109 = load i8*, i8** %7, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @netlbl_unlhsh_add(i32* @init_net, i8* %109, i8* %110, i8* %111, i32 %112, i32 %113, %struct.netlbl_audit* %12)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %108, %106, %79, %69
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @netlbl_netlink_auditinfo(%struct.sk_buff*, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_unlabel_addrinfo_get(%struct.genl_info*, i8**, i8**, i32*) #1

declare dso_local i8* @nla_data(i32) #1

declare dso_local i32 @security_secctx_to_secid(i8*, i32, i32*) #1

declare dso_local i32 @nla_len(i32) #1

declare dso_local i32 @netlbl_unlhsh_add(i32*, i8*, i8*, i8*, i32, i32, %struct.netlbl_audit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

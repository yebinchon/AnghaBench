; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_netlink_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_netlink_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.xfrm_if_parms = type { i8*, i8* }

@IFLA_XFRM_LINK = common dso_local global i64 0, align 8
@IFLA_XFRM_IF_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.xfrm_if_parms*)* @xfrmi_netlink_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrmi_netlink_parms(%struct.nlattr** %0, %struct.xfrm_if_parms* %1) #0 {
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.xfrm_if_parms*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store %struct.xfrm_if_parms* %1, %struct.xfrm_if_parms** %4, align 8
  %5 = load %struct.xfrm_if_parms*, %struct.xfrm_if_parms** %4, align 8
  %6 = call i32 @memset(%struct.xfrm_if_parms* %5, i32 0, i32 16)
  %7 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %8 = icmp ne %struct.nlattr** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %38

10:                                               ; preds = %2
  %11 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %12 = load i64, i64* @IFLA_XFRM_LINK, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %18 = load i64, i64* @IFLA_XFRM_LINK, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = call i8* @nla_get_u32(%struct.nlattr* %20)
  %22 = load %struct.xfrm_if_parms*, %struct.xfrm_if_parms** %4, align 8
  %23 = getelementptr inbounds %struct.xfrm_if_parms, %struct.xfrm_if_parms* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %16, %10
  %25 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %26 = load i64, i64* @IFLA_XFRM_IF_ID, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %32 = load i64, i64* @IFLA_XFRM_IF_ID, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i8* @nla_get_u32(%struct.nlattr* %34)
  %36 = load %struct.xfrm_if_parms*, %struct.xfrm_if_parms** %4, align 8
  %37 = getelementptr inbounds %struct.xfrm_if_parms, %struct.xfrm_if_parms* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %9, %30, %24
  ret void
}

declare dso_local i32 @memset(%struct.xfrm_if_parms*, i32, i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

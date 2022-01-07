; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_label_ok.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_label_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@MPLS_LABEL_FIRST_UNRESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Invalid label - must be MPLS_LABEL_FIRST_UNRESERVED or higher\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Label >= configured maximum in platform_labels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32*, %struct.netlink_ext_ack*)* @mpls_label_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_label_ok(%struct.net* %0, i32* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MPLS_LABEL_FIRST_UNRESERVED, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %14 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %13, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net*, %struct.net** %4, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %28 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %18, %15
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net*, %struct.net** %4, align 8
  %33 = getelementptr inbounds %struct.net, %struct.net* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @array_index_nospec(i32 %31, i32 %35)
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

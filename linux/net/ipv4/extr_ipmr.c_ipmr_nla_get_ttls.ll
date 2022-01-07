; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_nla_get_ttls.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_nla_get_ttls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.mfcctl = type { i32* }
%struct.rtnexthop = type { i32 }

@MAXVIFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.mfcctl*)* @ipmr_nla_get_ttls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_nla_get_ttls(%struct.nlattr* %0, %struct.mfcctl* %1) #0 {
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca %struct.mfcctl*, align 8
  %5 = alloca %struct.rtnexthop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  store %struct.mfcctl* %1, %struct.mfcctl** %4, align 8
  %8 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %9 = call %struct.rtnexthop* @nla_data(%struct.nlattr* %8)
  store %struct.rtnexthop* %9, %struct.rtnexthop** %5, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %11 = call i32 @nla_len(%struct.nlattr* %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %32, %2
  %13 = load %struct.rtnexthop*, %struct.rtnexthop** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @rtnh_ok(%struct.rtnexthop* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.rtnexthop*, %struct.rtnexthop** %5, align 8
  %19 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mfcctl*, %struct.mfcctl** %4, align 8
  %22 = getelementptr inbounds %struct.mfcctl, %struct.mfcctl* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @MAXVIFS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %35

32:                                               ; preds = %17
  %33 = load %struct.rtnexthop*, %struct.rtnexthop** %5, align 8
  %34 = call %struct.rtnexthop* @rtnh_next(%struct.rtnexthop* %33, i32* %6)
  store %struct.rtnexthop* %34, %struct.rtnexthop** %5, align 8
  br label %12

35:                                               ; preds = %31, %12
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32 [ %40, %38 ], [ %42, %41 ]
  ret i32 %44
}

declare dso_local %struct.rtnexthop* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @rtnh_ok(%struct.rtnexthop*, i32) #1

declare dso_local %struct.rtnexthop* @rtnh_next(%struct.rtnexthop*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

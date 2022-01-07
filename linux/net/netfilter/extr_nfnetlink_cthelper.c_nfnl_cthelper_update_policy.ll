; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_update_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_update_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_helper = type { i32 }
%struct.nlattr = type { i32 }

@NFCTH_POLICY_SET_MAX = common dso_local global i32 0, align 4
@nfnl_cthelper_expect_policy_set = common dso_local global i32 0, align 4
@NFCTH_POLICY_SET_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_helper*, %struct.nlattr*)* @nfnl_cthelper_update_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_cthelper_update_policy(%struct.nf_conntrack_helper* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conntrack_helper*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nf_conntrack_helper* %0, %struct.nf_conntrack_helper** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %11 = load i32, i32* @NFCTH_POLICY_SET_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @NFCTH_POLICY_SET_MAX, align 4
  %17 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %18 = load i32, i32* @nfnl_cthelper_expect_policy_set, align 4
  %19 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %15, i32 %16, %struct.nlattr* %17, i32 %18, i32* null)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load i64, i64* @NFCTH_POLICY_SET_NUM, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load i64, i64* @NFCTH_POLICY_SET_NUM, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i32 @nla_get_be32(%struct.nlattr* %35)
  %37 = call i32 @ntohl(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

47:                                               ; preds = %32
  %48 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %49 = call i32 @nfnl_cthelper_update_policy_all(%struct.nlattr** %15, %struct.nf_conntrack_helper* %48)
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %44, %29, %22
  %51 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

declare dso_local i32 @nfnl_cthelper_update_policy_all(%struct.nlattr**, %struct.nf_conntrack_helper*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_expect_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_expect_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect_policy = type { i64, i8*, i32 }
%struct.nlattr = type { i32 }

@NFCTH_POLICY_MAX = common dso_local global i32 0, align 4
@nfnl_cthelper_expect_pol = common dso_local global i32 0, align 4
@NFCTH_POLICY_NAME = common dso_local global i64 0, align 8
@NFCTH_POLICY_EXPECT_MAX = common dso_local global i64 0, align 8
@NFCTH_POLICY_EXPECT_TIMEOUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NF_CT_HELPER_NAME_LEN = common dso_local global i32 0, align 4
@NF_CT_EXPECT_MAX_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_expect_policy*, %struct.nlattr*)* @nfnl_cthelper_expect_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_cthelper_expect_policy(%struct.nf_conntrack_expect_policy* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conntrack_expect_policy*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nf_conntrack_expect_policy* %0, %struct.nf_conntrack_expect_policy** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %10 = load i32, i32* @NFCTH_POLICY_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @NFCTH_POLICY_MAX, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %17 = load i32, i32* @nfnl_cthelper_expect_pol, align 4
  %18 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %14, i32 %15, %struct.nlattr* %16, i32 %17, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %74

23:                                               ; preds = %2
  %24 = load i64, i64* @NFCTH_POLICY_NAME, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i64, i64* @NFCTH_POLICY_EXPECT_MAX, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64, i64* @NFCTH_POLICY_EXPECT_TIMEOUT, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28, %23
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %74

41:                                               ; preds = %33
  %42 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %4, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* @NFCTH_POLICY_NAME, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = load i32, i32* @NF_CT_HELPER_NAME_LEN, align 4
  %49 = call i32 @nla_strlcpy(i32 %44, %struct.nlattr* %47, i32 %48)
  %50 = load i64, i64* @NFCTH_POLICY_EXPECT_MAX, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_be32(%struct.nlattr* %52)
  %54 = call i8* @ntohl(i32 %53)
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %4, align 8
  %57 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %4, align 8
  %59 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NF_CT_EXPECT_MAX_CNT, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %74

66:                                               ; preds = %41
  %67 = load i64, i64* @NFCTH_POLICY_EXPECT_TIMEOUT, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i32 @nla_get_be32(%struct.nlattr* %69)
  %71 = call i8* @ntohl(i32 %70)
  %72 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %4, align 8
  %73 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %66, %63, %38, %21
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_strlcpy(i32, %struct.nlattr*, i32) #2

declare dso_local i8* @ntohl(i32) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

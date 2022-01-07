; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_update_policy_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_update_policy_one.c"
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
@EBUSY = common dso_local global i32 0, align 4
@NF_CT_EXPECT_MAX_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy*, %struct.nlattr*)* @nfnl_cthelper_update_policy_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_cthelper_update_policy_one(%struct.nf_conntrack_expect_policy* %0, %struct.nf_conntrack_expect_policy* %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conntrack_expect_policy*, align 8
  %6 = alloca %struct.nf_conntrack_expect_policy*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nf_conntrack_expect_policy* %0, %struct.nf_conntrack_expect_policy** %5, align 8
  store %struct.nf_conntrack_expect_policy* %1, %struct.nf_conntrack_expect_policy** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  %12 = load i32, i32* @NFCTH_POLICY_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @NFCTH_POLICY_MAX, align 4
  %18 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %19 = load i32, i32* @nfnl_cthelper_expect_pol, align 4
  %20 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %16, i32 %17, %struct.nlattr* %18, i32 %19, i32* null)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %80

25:                                               ; preds = %3
  %26 = load i64, i64* @NFCTH_POLICY_NAME, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i64, i64* @NFCTH_POLICY_EXPECT_MAX, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i64, i64* @NFCTH_POLICY_EXPECT_TIMEOUT, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %30, %25
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %80

43:                                               ; preds = %35
  %44 = load i64, i64* @NFCTH_POLICY_NAME, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %5, align 8
  %48 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @nla_strcmp(%struct.nlattr* %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %80

55:                                               ; preds = %43
  %56 = load i64, i64* @NFCTH_POLICY_EXPECT_MAX, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nla_get_be32(%struct.nlattr* %58)
  %60 = call i8* @ntohl(i32 %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %6, align 8
  %63 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %6, align 8
  %65 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NF_CT_EXPECT_MAX_CNT, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %80

72:                                               ; preds = %55
  %73 = load i64, i64* @NFCTH_POLICY_EXPECT_TIMEOUT, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_get_be32(%struct.nlattr* %75)
  %77 = call i8* @ntohl(i32 %76)
  %78 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %6, align 8
  %79 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %80

80:                                               ; preds = %72, %69, %52, %40, %23
  %81 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #2

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

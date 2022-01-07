; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_parse_expect_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_parse_expect_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_helper = type { i32, %struct.nf_conntrack_expect_policy* }
%struct.nf_conntrack_expect_policy = type { i32 }
%struct.nlattr = type { i32 }

@NFCTH_POLICY_SET_MAX = common dso_local global i32 0, align 4
@nfnl_cthelper_expect_policy_set = common dso_local global i32 0, align 4
@NFCTH_POLICY_SET_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NF_CT_MAX_EXPECT_CLASSES = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFCTH_POLICY_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_helper*, %struct.nlattr*)* @nfnl_cthelper_parse_expect_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_cthelper_parse_expect_policy(%struct.nf_conntrack_helper* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conntrack_helper*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conntrack_expect_policy*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nf_conntrack_helper* %0, %struct.nf_conntrack_helper** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %13 = load i32, i32* @NFCTH_POLICY_SET_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @NFCTH_POLICY_SET_MAX, align 4
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %20 = load i32, i32* @nfnl_cthelper_expect_policy_set, align 4
  %21 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %17, i32 %18, %struct.nlattr* %19, i32 %20, i32* null)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %107

26:                                               ; preds = %2
  %27 = load i64, i64* @NFCTH_POLICY_SET_NUM, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %107

34:                                               ; preds = %26
  %35 = load i64, i64* @NFCTH_POLICY_SET_NUM, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i32 @nla_get_be32(%struct.nlattr* %37)
  %39 = call i32 @ntohl(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %107

45:                                               ; preds = %34
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @NF_CT_MAX_EXPECT_CLASSES, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EOVERFLOW, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %107

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.nf_conntrack_expect_policy* @kcalloc(i32 %53, i32 4, i32 %54)
  store %struct.nf_conntrack_expect_policy* %55, %struct.nf_conntrack_expect_policy** %8, align 8
  %56 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %8, align 8
  %57 = icmp eq %struct.nf_conntrack_expect_policy* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %107

61:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %91, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load i32, i32* @NFCTH_POLICY_SET, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %102

75:                                               ; preds = %66
  %76 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %8, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %76, i64 %78
  %80 = load i32, i32* @NFCTH_POLICY_SET, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = call i32 @nfnl_cthelper_expect_policy(%struct.nf_conntrack_expect_policy* %79, %struct.nlattr* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %102

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %62

94:                                               ; preds = %62
  %95 = load i32, i32* %11, align 4
  %96 = sub i32 %95, 1
  %97 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %98 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %8, align 8
  %100 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %101 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %100, i32 0, i32 1
  store %struct.nf_conntrack_expect_policy* %99, %struct.nf_conntrack_expect_policy** %101, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %107

102:                                              ; preds = %89, %74
  %103 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %8, align 8
  %104 = call i32 @kfree(%struct.nf_conntrack_expect_policy* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %107

107:                                              ; preds = %102, %94, %58, %49, %42, %31, %24
  %108 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

declare dso_local %struct.nf_conntrack_expect_policy* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @nfnl_cthelper_expect_policy(%struct.nf_conntrack_expect_policy*, %struct.nlattr*) #2

declare dso_local i32 @kfree(%struct.nf_conntrack_expect_policy*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

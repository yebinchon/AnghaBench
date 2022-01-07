; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_update_policy_all.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_update_policy_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conntrack_helper = type { i32, i32* }
%struct.nf_conntrack_expect_policy = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFCTH_POLICY_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nf_conntrack_helper*)* @nfnl_cthelper_update_policy_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_cthelper_update_policy_all(%struct.nlattr** %0, %struct.nf_conntrack_helper* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nf_conntrack_helper*, align 8
  %6 = alloca %struct.nf_conntrack_expect_policy*, align 8
  %7 = alloca %struct.nf_conntrack_expect_policy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.nf_conntrack_helper* %1, %struct.nf_conntrack_helper** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %11 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nf_conntrack_expect_policy* @kmalloc_array(i32 %13, i32 8, i32 %14)
  store %struct.nf_conntrack_expect_policy* %15, %struct.nf_conntrack_expect_policy** %6, align 8
  %16 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %6, align 8
  %17 = icmp ne %struct.nf_conntrack_expect_policy* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %101

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %64, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %25 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %22
  %30 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %31 = load i32, i32* @NFCTH_POLICY_SET, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %97

41:                                               ; preds = %29
  %42 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %48, i64 %50
  %52 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %53 = load i32, i32* @NFCTH_POLICY_SET, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nfnl_cthelper_update_policy_one(i32* %47, %struct.nf_conntrack_expect_policy* %51, %struct.nlattr* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %41
  br label %97

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %22

67:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %93, %67
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %71 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %68
  %76 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %77 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = bitcast i32* %81 to %struct.nf_conntrack_expect_policy*
  store %struct.nf_conntrack_expect_policy* %82, %struct.nf_conntrack_expect_policy** %7, align 8
  %83 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %6, align 8
  %84 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %7, align 8
  %87 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %6, align 8
  %89 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %7, align 8
  %92 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %75
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %68

96:                                               ; preds = %68
  br label %97

97:                                               ; preds = %96, %62, %38
  %98 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %6, align 8
  %99 = call i32 @kfree(%struct.nf_conntrack_expect_policy* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %18
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.nf_conntrack_expect_policy* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @nfnl_cthelper_update_policy_one(i32*, %struct.nf_conntrack_expect_policy*, %struct.nlattr*) #1

declare dso_local i32 @kfree(%struct.nf_conntrack_expect_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

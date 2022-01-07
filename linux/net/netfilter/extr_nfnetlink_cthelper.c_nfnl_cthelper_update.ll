; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conntrack_helper = type { i32, i8* }

@NFCTH_PRIV_DATA_LEN = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@NFCTH_POLICY = common dso_local global i64 0, align 8
@NFCTH_QUEUE_NUM = common dso_local global i64 0, align 8
@NFCTH_STATUS = common dso_local global i64 0, align 8
@NF_CT_HELPER_F_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nf_conntrack_helper*)* @nfnl_cthelper_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_cthelper_update(%struct.nlattr** %0, %struct.nf_conntrack_helper* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nf_conntrack_helper*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.nf_conntrack_helper* %1, %struct.nf_conntrack_helper** %5, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %9 = load i64, i64* @NFCTH_PRIV_DATA_LEN, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %79

16:                                               ; preds = %2
  %17 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %18 = load i64, i64* @NFCTH_POLICY, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %24 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %25 = load i64, i64* @NFCTH_POLICY, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = call i32 @nfnl_cthelper_update_policy(%struct.nf_conntrack_helper* %23, %struct.nlattr* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %79

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %36 = load i64, i64* @NFCTH_QUEUE_NUM, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %42 = load i64, i64* @NFCTH_QUEUE_NUM, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_be32(%struct.nlattr* %44)
  %46 = call i8* @ntohl(i32 %45)
  %47 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %48 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %40, %34
  %50 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %51 = load i64, i64* @NFCTH_STATUS, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %57 = load i64, i64* @NFCTH_STATUS, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_get_be32(%struct.nlattr* %59)
  %61 = call i8* @ntohl(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %77 [
    i32 128, label %64
    i32 129, label %70
  ]

64:                                               ; preds = %55
  %65 = load i32, i32* @NF_CT_HELPER_F_CONFIGURED, align 4
  %66 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %67 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %77

70:                                               ; preds = %55
  %71 = load i32, i32* @NF_CT_HELPER_F_CONFIGURED, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %74 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %55, %70, %64
  br label %78

78:                                               ; preds = %77, %49
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %31, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @nfnl_cthelper_update_policy(%struct.nf_conntrack_helper*, %struct.nlattr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

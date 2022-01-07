; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.htb_sched = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_htb_glob = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TCA_HTB_MAX = common dso_local global i32 0, align 4
@htb_work_func = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@htb_policy = common dso_local global i32 0, align 4
@TCA_HTB_INIT = common dso_local global i64 0, align 8
@HTB_VER = common dso_local global i64 0, align 8
@TCA_HTB_DIRECT_QLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @htb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.htb_sched*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tc_htb_glob*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %15 = call %struct.htb_sched* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.htb_sched* %15, %struct.htb_sched** %8, align 8
  %16 = load i32, i32* @TCA_HTB_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %22 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %21, i32 0, i32 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %24 = call i32 @qdisc_watchdog_init(i32* %22, %struct.Qdisc* %23)
  %25 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %26 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %25, i32 0, i32 7
  %27 = load i32, i32* @htb_work_func, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %123

34:                                               ; preds = %3
  %35 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %36 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %35, i32 0, i32 6
  %37 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %38 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %37, i32 0, i32 5
  %39 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %41 = call i32 @tcf_block_get(i32* %36, i32* %38, %struct.Qdisc* %39, %struct.netlink_ext_ack* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %123

46:                                               ; preds = %34
  %47 = load i32, i32* @TCA_HTB_MAX, align 4
  %48 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %49 = load i32, i32* @htb_policy, align 4
  %50 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %20, i32 %47, %struct.nlattr* %48, i32 %49, i32* null)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %123

55:                                               ; preds = %46
  %56 = load i64, i64* @TCA_HTB_INIT, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %123

63:                                               ; preds = %55
  %64 = load i64, i64* @TCA_HTB_INIT, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call %struct.tc_htb_glob* @nla_data(%struct.nlattr* %66)
  store %struct.tc_htb_glob* %67, %struct.tc_htb_glob** %11, align 8
  %68 = load %struct.tc_htb_glob*, %struct.tc_htb_glob** %11, align 8
  %69 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HTB_VER, align 8
  %72 = ashr i64 %71, 16
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %123

77:                                               ; preds = %63
  %78 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %79 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %78, i32 0, i32 4
  %80 = call i32 @qdisc_class_hash_init(i32* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %123

85:                                               ; preds = %77
  %86 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %87 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %86, i32 0, i32 3
  %88 = call i32 @qdisc_skb_head_init(i32* %87)
  %89 = load i64, i64* @TCA_HTB_DIRECT_QLEN, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i64, i64* @TCA_HTB_DIRECT_QLEN, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = call i32 @nla_get_u32(%struct.nlattr* %96)
  %98 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %99 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %107

100:                                              ; preds = %85
  %101 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %102 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %106 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %100, %93
  %108 = load %struct.tc_htb_glob*, %struct.tc_htb_glob** %11, align 8
  %109 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %112 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = icmp slt i32 %110, 1
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %116 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %107
  %118 = load %struct.tc_htb_glob*, %struct.tc_htb_glob** %11, align 8
  %119 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.htb_sched*, %struct.htb_sched** %8, align 8
  %122 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %123

123:                                              ; preds = %117, %83, %74, %60, %53, %44, %31
  %124 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.htb_sched* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local %struct.tc_htb_glob* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @qdisc_class_hash_init(i32*) #1

declare dso_local i32 @qdisc_skb_head_init(i32*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_basic.c_basic_set_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_basic.c_basic_set_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.basic_filter = type { %struct.tcf_proto*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_BASIC_EMATCHES = common dso_local global i64 0, align 8
@TCA_BASIC_CLASSID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_proto*, %struct.basic_filter*, i64, %struct.nlattr**, %struct.nlattr*, i32, %struct.netlink_ext_ack*)* @basic_set_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basic_set_parms(%struct.net* %0, %struct.tcf_proto* %1, %struct.basic_filter* %2, i64 %3, %struct.nlattr** %4, %struct.nlattr* %5, i32 %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca %struct.basic_filter*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nlattr**, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.netlink_ext_ack*, align 8
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %11, align 8
  store %struct.basic_filter* %2, %struct.basic_filter** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %14, align 8
  store %struct.nlattr* %5, %struct.nlattr** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %17, align 8
  %19 = load %struct.net*, %struct.net** %10, align 8
  %20 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %23 = load %struct.basic_filter*, %struct.basic_filter** %12, align 8
  %24 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %23, i32 0, i32 3
  %25 = load i32, i32* %16, align 4
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %27 = call i32 @tcf_exts_validate(%struct.net* %19, %struct.tcf_proto* %20, %struct.nlattr** %21, %struct.nlattr* %22, i32* %24, i32 %25, i32 1, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %9, align 4
  br label %69

32:                                               ; preds = %8
  %33 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %34 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %35 = load i64, i64* @TCA_BASIC_EMATCHES, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = load %struct.basic_filter*, %struct.basic_filter** %12, align 8
  %39 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %38, i32 0, i32 2
  %40 = call i32 @tcf_em_tree_validate(%struct.tcf_proto* %33, %struct.nlattr* %37, i32* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %9, align 4
  br label %69

45:                                               ; preds = %32
  %46 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %47 = load i64, i64* @TCA_BASIC_CLASSID, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %53 = load i64, i64* @TCA_BASIC_CLASSID, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_get_u32(%struct.nlattr* %55)
  %57 = load %struct.basic_filter*, %struct.basic_filter** %12, align 8
  %58 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %61 = load %struct.basic_filter*, %struct.basic_filter** %12, align 8
  %62 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %61, i32 0, i32 1
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @tcf_bind_filter(%struct.tcf_proto* %60, %struct.TYPE_2__* %62, i64 %63)
  br label %65

65:                                               ; preds = %51, %45
  %66 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %67 = load %struct.basic_filter*, %struct.basic_filter** %12, align 8
  %68 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %67, i32 0, i32 0
  store %struct.tcf_proto* %66, %struct.tcf_proto** %68, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %43, %30
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @tcf_exts_validate(%struct.net*, %struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, i32*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_em_tree_validate(%struct.tcf_proto*, %struct.nlattr*, i32*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @tcf_bind_filter(%struct.tcf_proto*, %struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

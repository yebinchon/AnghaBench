; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.net = type { i32 }
%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_block* (%struct.net*, %struct.Qdisc**, i32*, i64*, i32, i32, %struct.netlink_ext_ack*)* @tcf_block_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_block* @tcf_block_find(%struct.net* %0, %struct.Qdisc** %1, i32* %2, i64* %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca %struct.tcf_block*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.Qdisc**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.tcf_block*, align 8
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.Qdisc** %1, %struct.Qdisc*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  store i32 0, i32* %17, align 4
  %18 = call i32 (...) @ASSERT_RTNL()
  %19 = load %struct.net*, %struct.net** %9, align 8
  %20 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %24 = call i32 @__tcf_qdisc_find(%struct.net* %19, %struct.Qdisc** %20, i32* %21, i32 %22, i32 1, %struct.netlink_ext_ack* %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  br label %67

28:                                               ; preds = %7
  %29 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %29, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i64*, i64** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %36 = call i32 @__tcf_qdisc_cl_find(%struct.Qdisc* %30, i32 %32, i64* %33, i32 %34, %struct.netlink_ext_ack* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %58

40:                                               ; preds = %28
  %41 = load %struct.net*, %struct.net** %9, align 8
  %42 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %43 = load %struct.Qdisc*, %struct.Qdisc** %42, align 8
  %44 = load i64*, i64** %12, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %49 = call %struct.tcf_block* @__tcf_block_find(%struct.net* %41, %struct.Qdisc* %43, i64 %45, i32 %46, i32 %47, %struct.netlink_ext_ack* %48)
  store %struct.tcf_block* %49, %struct.tcf_block** %16, align 8
  %50 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %51 = call i64 @IS_ERR(%struct.tcf_block* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %55 = call i32 @PTR_ERR(%struct.tcf_block* %54)
  store i32 %55, i32* %17, align 4
  br label %58

56:                                               ; preds = %40
  %57 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  store %struct.tcf_block* %57, %struct.tcf_block** %8, align 8
  br label %71

58:                                               ; preds = %53, %39
  %59 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %60 = load %struct.Qdisc*, %struct.Qdisc** %59, align 8
  %61 = icmp ne %struct.Qdisc* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %64 = load %struct.Qdisc*, %struct.Qdisc** %63, align 8
  %65 = call i32 @qdisc_put(%struct.Qdisc* %64)
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %27
  %68 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %68, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call %struct.tcf_block* @ERR_PTR(i32 %69)
  store %struct.tcf_block* %70, %struct.tcf_block** %8, align 8
  br label %71

71:                                               ; preds = %67, %56
  %72 = load %struct.tcf_block*, %struct.tcf_block** %8, align 8
  ret %struct.tcf_block* %72
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @__tcf_qdisc_find(%struct.net*, %struct.Qdisc**, i32*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @__tcf_qdisc_cl_find(%struct.Qdisc*, i32, i64*, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_block* @__tcf_block_find(%struct.net*, %struct.Qdisc*, i64, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.tcf_block*) #1

declare dso_local i32 @PTR_ERR(%struct.tcf_block*) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

declare dso_local %struct.tcf_block* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

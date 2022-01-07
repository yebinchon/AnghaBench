; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_rules.c_dn_fib_rule_configure.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_rules.c_dn_fib_rule_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.fib_rule_hdr = type { i64, i64, i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.dn_fib_rule = type { i64, i8*, i64, i8*, i8*, i8* }
%struct.dn_fib_table = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid tos value\00", align 1
@RT_TABLE_UNSPEC = common dso_local global i64 0, align 8
@FR_ACT_TO_TBL = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.sk_buff*, %struct.fib_rule_hdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @dn_fib_rule_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_rule_configure(%struct.fib_rule* %0, %struct.sk_buff* %1, %struct.fib_rule_hdr* %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.fib_rule*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.fib_rule_hdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dn_fib_rule*, align 8
  %13 = alloca %struct.dn_fib_table*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.fib_rule_hdr* %2, %struct.fib_rule_hdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %17 = bitcast %struct.fib_rule* %16 to %struct.dn_fib_rule*
  store %struct.dn_fib_rule* %17, %struct.dn_fib_rule** %12, align 8
  %18 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %19 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %24 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %100

25:                                               ; preds = %5
  %26 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %27 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RT_TABLE_UNSPEC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %33 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FR_ACT_TO_TBL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = call %struct.dn_fib_table* (...) @dn_fib_empty_table()
  store %struct.dn_fib_table* %38, %struct.dn_fib_table** %13, align 8
  %39 = load %struct.dn_fib_table*, %struct.dn_fib_table** %13, align 8
  %40 = icmp eq %struct.dn_fib_table* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOBUFS, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %100

44:                                               ; preds = %37
  %45 = load %struct.dn_fib_table*, %struct.dn_fib_table** %13, align 8
  %46 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %49 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %31
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %58 = load i64, i64* @FRA_SRC, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i8* @nla_get_le16(%struct.nlattr* %60)
  %62 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %12, align 8
  %63 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %56, %51
  %65 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %66 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %71 = load i64, i64* @FRA_DST, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i8* @nla_get_le16(%struct.nlattr* %73)
  %75 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %12, align 8
  %76 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %69, %64
  %78 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %79 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %12, align 8
  %82 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %12, align 8
  %84 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @dnet_make_mask(i64 %85)
  %87 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %12, align 8
  %88 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %90 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %12, align 8
  %93 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %12, align 8
  %95 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @dnet_make_mask(i64 %96)
  %98 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %12, align 8
  %99 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %77, %41, %22
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.dn_fib_table* @dn_fib_empty_table(...) #1

declare dso_local i8* @nla_get_le16(%struct.nlattr*) #1

declare dso_local i8* @dnet_make_mask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

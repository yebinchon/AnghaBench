; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_fill_sched_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_fill_sched_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.sched_entry = type { i64, i8*, i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_TAPRIO_SCHED_ENTRY_CMD = common dso_local global i64 0, align 8
@TCA_TAPRIO_SCHED_ENTRY_GATE_MASK = common dso_local global i64 0, align 8
@TCA_TAPRIO_SCHED_ENTRY_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Invalid interval for schedule entry\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.sched_entry*, %struct.netlink_ext_ack*)* @fill_sched_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_sched_entry(%struct.nlattr** %0, %struct.sched_entry* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.sched_entry*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.sched_entry* %1, %struct.sched_entry** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %10 = load i64, i64* @TCA_TAPRIO_SCHED_ENTRY_CMD, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %16 = load i64, i64* @TCA_TAPRIO_SCHED_ENTRY_CMD, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = call i32 @nla_get_u8(%struct.nlattr* %18)
  %20 = load %struct.sched_entry*, %struct.sched_entry** %6, align 8
  %21 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %14, %3
  %23 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %24 = load i64, i64* @TCA_TAPRIO_SCHED_ENTRY_GATE_MASK, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %30 = load i64, i64* @TCA_TAPRIO_SCHED_ENTRY_GATE_MASK, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i8* @nla_get_u32(%struct.nlattr* %32)
  %34 = load %struct.sched_entry*, %struct.sched_entry** %6, align 8
  %35 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %28, %22
  %37 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %38 = load i64, i64* @TCA_TAPRIO_SCHED_ENTRY_INTERVAL, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %44 = load i64, i64* @TCA_TAPRIO_SCHED_ENTRY_INTERVAL, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i8* @nla_get_u32(%struct.nlattr* %46)
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %54 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.sched_entry*, %struct.sched_entry** %6, align 8
  %60 = getelementptr inbounds %struct.sched_entry, %struct.sched_entry* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_print_cpu_stall_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_print_cpu_stall_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.rcu_data = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@rcu_data = common dso_local global i32 0, align 4
@rcu_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"GPs behind\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ticks this GP\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"\09%d-%c%c%c%c: (%lu %s) idle=%03x/%ld/%#lx softirq=%u/%u fqs=%ld %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"O.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"o.\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"N.\00", align 1
@CONFIG_IRQ_WORK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"!.\00", align 1
@RCU_SOFTIRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_cpu_stall_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cpu_stall_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [72 x i8], align 16
  %5 = alloca %struct.rcu_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.rcu_data* @per_cpu_ptr(i32* @rcu_data, i32 %8)
  store %struct.rcu_data* %9, %struct.rcu_data** %5, align 8
  %10 = call i32 (...) @touch_nmi_watchdog()
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rcu_state, i32 0, i32 2), align 8
  %12 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %13 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = call i64 @rcu_seq_ctr(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %24

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %21 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %22 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %20, %19
  %25 = getelementptr inbounds [72 x i8], [72 x i8]* %4, i64 0, i64 0
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @print_cpu_stall_fast_no_hz(i8* %25, i32 %26)
  %28 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %29 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %28, i32 0, i32 6
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %34 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i64 @rcu_seq_ctr(i64 %36)
  store i64 %37, i64* %3, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @cpu_online(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.3, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %49 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %52 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %51, i32 0, i32 6
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.4, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %65 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %68 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %67, i32 0, i32 6
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %66, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.5, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i32, i32* @CONFIG_IRQ_WORK, align 4
  %81 = call i32 @IS_ENABLED(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %24
  br label %105

84:                                               ; preds = %24
  %85 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %86 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i64, i64* %3, align 8
  %91 = call i64 @min(i64 %90, i64 9)
  %92 = trunc i64 %91 to i32
  %93 = add nsw i32 %92, 48
  br label %103

94:                                               ; preds = %84
  %95 = load i64, i64* %3, align 8
  %96 = icmp ne i64 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.6, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  br label %103

103:                                              ; preds = %94, %89
  %104 = phi i32 [ %93, %89 ], [ %102, %94 ]
  br label %105

105:                                              ; preds = %103, %83
  %106 = phi i32 [ 63, %83 ], [ %104, %103 ]
  %107 = trunc i32 %106 to i8
  %108 = load i64, i64* %7, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %111 = call i32 @rcu_dynticks_snap(%struct.rcu_data* %110)
  %112 = and i32 %111, 4095
  %113 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %114 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %117 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %120 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @RCU_SOFTIRQ, align 4
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @kstat_softirqs_cpu(i32 %122, i32 %123)
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rcu_state, i32 0, i32 1), align 8
  %126 = call i64 @READ_ONCE(i32 %125)
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rcu_state, i32 0, i32 0), align 8
  %128 = sub nsw i64 %126, %127
  %129 = getelementptr inbounds [72 x i8], [72 x i8]* %4, i64 0, i64 0
  %130 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %38, i8 signext %47, i8 signext %63, i8 signext %79, i8 signext %107, i64 %108, i8* %109, i32 %112, i32 %115, i32 %118, i32 %121, i32 %124, i64 %128, i8* %129)
  ret void
}

declare dso_local %struct.rcu_data* @per_cpu_ptr(i32*, i32) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

declare dso_local i64 @rcu_seq_ctr(i64) #1

declare dso_local i32 @print_cpu_stall_fast_no_hz(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i8 signext, i8 signext, i8 signext, i8 signext, i64, i8*, i32, i32, i32, i32, i32, i64, i8*) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @rcu_dynticks_snap(%struct.rcu_data*) #1

declare dso_local i32 @kstat_softirqs_cpu(i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

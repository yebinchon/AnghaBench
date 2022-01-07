; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dump_fopt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dump_fopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cbq_class = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tc_cbq_fopt = type { i32, i64, i32 }

@TCA_CBQ_FOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cbq_class*)* @cbq_dump_fopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_dump_fopt(%struct.sk_buff* %0, %struct.cbq_class* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tc_cbq_fopt, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cbq_class* %1, %struct.cbq_class** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i8* @skb_tail_pointer(%struct.sk_buff* %8)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %11 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %16 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %14, %2
  %20 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %21 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %26 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ %30, %24 ], [ 0, %31 ]
  %34 = getelementptr inbounds %struct.tc_cbq_fopt, %struct.tc_cbq_fopt* %7, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %36 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.tc_cbq_fopt, %struct.tc_cbq_fopt* %7, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.tc_cbq_fopt, %struct.tc_cbq_fopt* %7, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @TCA_CBQ_FOPT, align 4
  %42 = call i64 @nla_put(%struct.sk_buff* %40, i32 %41, i32 24, %struct.tc_cbq_fopt* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %50

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @nlmsg_trim(%struct.sk_buff* %51, i8* %52)
  store i32 -1, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_cbq_fopt*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_tmplt_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_tmplt_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.fl_flow_tmplt = type { %struct.fl_flow_key, %struct.fl_flow_key }
%struct.fl_flow_key = type { i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net*, i8*)* @fl_tmplt_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_tmplt_dump(%struct.sk_buff* %0, %struct.net* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fl_flow_tmplt*, align 8
  %9 = alloca %struct.fl_flow_key*, align 8
  %10 = alloca %struct.fl_flow_key*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.fl_flow_tmplt*
  store %struct.fl_flow_tmplt* %13, %struct.fl_flow_tmplt** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* @TCA_OPTIONS, align 4
  %16 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %11, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %8, align 8
  %22 = getelementptr inbounds %struct.fl_flow_tmplt, %struct.fl_flow_tmplt* %21, i32 0, i32 1
  store %struct.fl_flow_key* %22, %struct.fl_flow_key** %9, align 8
  %23 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %8, align 8
  %24 = getelementptr inbounds %struct.fl_flow_tmplt, %struct.fl_flow_tmplt* %23, i32 0, i32 0
  store %struct.fl_flow_key* %24, %struct.fl_flow_key** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load %struct.net*, %struct.net** %6, align 8
  %27 = load %struct.fl_flow_key*, %struct.fl_flow_key** %9, align 8
  %28 = load %struct.fl_flow_key*, %struct.fl_flow_key** %10, align 8
  %29 = call i64 @fl_dump_key(%struct.sk_buff* %25, %struct.net* %26, %struct.fl_flow_key* %27, %struct.fl_flow_key* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %39

32:                                               ; preds = %20
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %35 = call i32 @nla_nest_end(%struct.sk_buff* %33, %struct.nlattr* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %31, %19
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %42 = call i32 @nla_nest_cancel(%struct.sk_buff* %40, %struct.nlattr* %41)
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @fl_dump_key(%struct.sk_buff*, %struct.net*, %struct.fl_flow_key*, %struct.fl_flow_key*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_change_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_change_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meta_value = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.meta_value*, %struct.nlattr*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meta_value*, %struct.nlattr*)* @meta_change_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meta_change_data(%struct.meta_value* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.meta_value*, align 8
  %5 = alloca %struct.nlattr*, align 8
  store %struct.meta_value* %0, %struct.meta_value** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %6 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %7 = icmp ne %struct.nlattr* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %10 = call i64 @nla_len(%struct.nlattr* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %8
  %16 = load %struct.meta_value*, %struct.meta_value** %4, align 8
  %17 = call %struct.TYPE_2__* @meta_type_ops(%struct.meta_value* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.meta_value*, %struct.nlattr*)*, i32 (%struct.meta_value*, %struct.nlattr*)** %18, align 8
  %20 = load %struct.meta_value*, %struct.meta_value** %4, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %22 = call i32 %19(%struct.meta_value* %20, %struct.nlattr* %21)
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %15, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.TYPE_2__* @meta_type_ops(%struct.meta_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

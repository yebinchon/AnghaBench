; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_int_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_int_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meta_value = type { i64, i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meta_value*, %struct.nlattr*)* @meta_int_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meta_int_change(%struct.meta_value* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.meta_value*, align 8
  %5 = alloca %struct.nlattr*, align 8
  store %struct.meta_value* %0, %struct.meta_value** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %6 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %7 = call i32 @nla_len(%struct.nlattr* %6)
  %8 = sext i32 %7 to i64
  %9 = icmp uge i64 %8, 8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %12 = call i64 @nla_data(%struct.nlattr* %11)
  %13 = inttoptr i64 %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.meta_value*, %struct.meta_value** %4, align 8
  %16 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.meta_value*, %struct.meta_value** %4, align 8
  %18 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %17, i32 0, i32 1
  store i32 8, i32* %18, align 8
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %21 = call i32 @nla_len(%struct.nlattr* %20)
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %26 = call i64 @nla_get_u32(%struct.nlattr* %25)
  %27 = load %struct.meta_value*, %struct.meta_value** %4, align 8
  %28 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.meta_value*, %struct.meta_value** %4, align 8
  %30 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %29, i32 0, i32 1
  store i32 4, i32* %30, align 8
  br label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %10
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

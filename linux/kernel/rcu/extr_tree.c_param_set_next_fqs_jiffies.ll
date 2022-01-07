; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_param_set_next_fqs_jiffies.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_param_set_next_fqs_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i64 }

@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @param_set_next_fqs_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_set_next_fqs_jiffies(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kernel_param*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @kstrtoul(i8* %7, i32 0, i64* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %2
  %12 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %13 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i64, i64* @HZ, align 8
  br label %29

22:                                               ; preds = %11
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i64 [ %23, %25 ], [ 1, %26 ]
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ %21, %20 ], [ %28, %27 ]
  %31 = call i32 @WRITE_ONCE(i64 %16, i64 %30)
  %32 = call i32 (...) @adjust_jiffies_till_sched_qs()
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

declare dso_local i32 @adjust_jiffies_till_sched_qs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

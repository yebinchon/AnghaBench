; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_cpu.c_cpuhp_store_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_cpu.c_cpuhp_store_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuhp_step = type { i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.TYPE_3__ = type { i32 (i32)* }

@CPUHP_AP_ONLINE_DYN = common dso_local global i32 0, align 4
@CPUHP_BP_PREPARE_DYN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32 (i32)*, i32 (i32)*, i32)* @cpuhp_store_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuhp_store_callbacks(i32 %0, i8* %1, i32 (i32)* %2, i32 (i32)* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i32)*, align 8
  %10 = alloca i32 (i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cpuhp_step*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 (i32)* %2, i32 (i32)** %9, align 8
  store i32 (i32)* %3, i32 (i32)** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CPUHP_AP_ONLINE_DYN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CPUHP_BP_PREPARE_DYN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cpuhp_reserve_state(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %65

31:                                               ; preds = %24
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %20, %5
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.cpuhp_step* @cpuhp_get_step(i32 %34)
  store %struct.cpuhp_step* %35, %struct.cpuhp_step** %12, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.cpuhp_step*, %struct.cpuhp_step** %12, align 8
  %40 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %65

46:                                               ; preds = %38, %33
  %47 = load i32 (i32)*, i32 (i32)** %9, align 8
  %48 = load %struct.cpuhp_step*, %struct.cpuhp_step** %12, align 8
  %49 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 (i32)* %47, i32 (i32)** %50, align 8
  %51 = load i32 (i32)*, i32 (i32)** %10, align 8
  %52 = load %struct.cpuhp_step*, %struct.cpuhp_step** %12, align 8
  %53 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 (i32)* %51, i32 (i32)** %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.cpuhp_step*, %struct.cpuhp_step** %12, align 8
  %57 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.cpuhp_step*, %struct.cpuhp_step** %12, align 8
  %60 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cpuhp_step*, %struct.cpuhp_step** %12, align 8
  %62 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %61, i32 0, i32 2
  %63 = call i32 @INIT_HLIST_HEAD(i32* %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %46, %43, %29
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @cpuhp_reserve_state(i32) #1

declare dso_local %struct.cpuhp_step* @cpuhp_get_step(i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_setup_cb_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_setup_cb_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_setup_cb_call(%struct.tcf_block* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcf_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tcf_block* %0, %struct.tcf_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %14 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @READ_ONCE(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i1 [ false, %5 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %44, %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @rtnl_lock()
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %32 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %31, i32 0, i32 0
  %33 = call i32 @down_read(i32* %32)
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %41 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %46 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %45, i32 0, i32 0
  %47 = call i32 @up_read(i32* %46)
  store i32 1, i32* %11, align 4
  br label %25

48:                                               ; preds = %39, %36, %30
  %49 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @__tc_setup_cb_call(%struct.tcf_block* %49, i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %55 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %54, i32 0, i32 0
  %56 = call i32 @up_read(i32* %55)
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call i32 (...) @rtnl_unlock()
  br label %61

61:                                               ; preds = %59, %48
  %62 = load i32, i32* %12, align 4
  ret i32 %62
}

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @__tc_setup_cb_call(%struct.tcf_block*, i32, i8*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

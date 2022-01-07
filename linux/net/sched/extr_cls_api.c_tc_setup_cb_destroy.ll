; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_setup_cb_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_setup_cb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32, i64 }
%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tcf_proto*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_setup_cb_destroy(%struct.tcf_block* %0, %struct.tcf_proto* %1, i32 %2, i8* %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.tcf_block*, align 8
  %10 = alloca %struct.tcf_proto*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tcf_block* %0, %struct.tcf_block** %9, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %20 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @READ_ONCE(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %8
  %29 = phi i1 [ false, %8 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %50, %28
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @rtnl_lock()
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %38 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %37, i32 0, i32 0
  %39 = call i32 @down_read(i32* %38)
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %47 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %52 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %51, i32 0, i32 0
  %53 = call i32 @up_read(i32* %52)
  store i32 1, i32* %17, align 4
  br label %31

54:                                               ; preds = %45, %42, %36
  %55 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @__tc_setup_cb_call(%struct.tcf_block* %55, i32 %56, i8* %57, i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %61 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @tc_cls_offload_cnt_reset(%struct.tcf_block* %60, %struct.tcf_proto* %61, i32* %62, i32* %63)
  %65 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %66 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (%struct.tcf_proto*, i8*)*, i32 (%struct.tcf_proto*, i8*)** %68, align 8
  %70 = icmp ne i32 (%struct.tcf_proto*, i8*)* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %54
  %72 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %73 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.tcf_proto*, i8*)*, i32 (%struct.tcf_proto*, i8*)** %75, align 8
  %77 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 %76(%struct.tcf_proto* %77, i8* %78)
  br label %80

80:                                               ; preds = %71, %54
  %81 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %82 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %81, i32 0, i32 0
  %83 = call i32 @up_read(i32* %82)
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 (...) @rtnl_unlock()
  br label %88

88:                                               ; preds = %86, %80
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* %18, align 4
  br label %94

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ]
  ret i32 %95
}

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @__tc_setup_cb_call(%struct.tcf_block*, i32, i8*, i32) #1

declare dso_local i32 @tc_cls_offload_cnt_reset(%struct.tcf_block*, %struct.tcf_proto*, i32*, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

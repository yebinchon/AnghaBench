; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_setup_cb_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_setup_cb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32, i64, i64 }
%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tcf_proto*, i8*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_setup_cb_add(%struct.tcf_block* %0, %struct.tcf_proto* %1, i32 %2, i8* %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
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
  %20 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %19, i32 0, i32 2
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
  %47 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %46, i32 0, i32 2
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
  %56 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %18, align 4
  br label %101

65:                                               ; preds = %59, %54
  %66 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @__tc_setup_cb_call(%struct.tcf_block* %66, i32 %67, i8* %68, i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %101

74:                                               ; preds = %65
  %75 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %76 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.tcf_proto*, i8*)*, i32 (%struct.tcf_proto*, i8*)** %78, align 8
  %80 = icmp ne i32 (%struct.tcf_proto*, i8*)* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %83 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.tcf_proto*, i8*)*, i32 (%struct.tcf_proto*, i8*)** %85, align 8
  %87 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 %86(%struct.tcf_proto* %87, i8* %88)
  br label %90

90:                                               ; preds = %81, %74
  %91 = load i32, i32* %18, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %95 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @tc_cls_offload_cnt_update(%struct.tcf_block* %94, %struct.tcf_proto* %95, i32* %96, i32* %97, i32 %98, i32 1)
  br label %100

100:                                              ; preds = %93, %90
  br label %101

101:                                              ; preds = %100, %73, %62
  %102 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %103 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %102, i32 0, i32 0
  %104 = call i32 @up_read(i32* %103)
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 (...) @rtnl_unlock()
  br label %109

109:                                              ; preds = %107, %101
  %110 = load i32, i32* %18, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %18, align 4
  br label %115

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  ret i32 %116
}

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @__tc_setup_cb_call(%struct.tcf_block*, i32, i8*, i32) #1

declare dso_local i32 @tc_cls_offload_cnt_update(%struct.tcf_block*, %struct.tcf_proto*, i32*, i32*, i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

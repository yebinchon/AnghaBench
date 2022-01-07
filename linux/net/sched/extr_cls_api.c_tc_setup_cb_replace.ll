; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_setup_cb_replace.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_setup_cb_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32, i64, i64 }
%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tcf_proto*, i8*)*, i32 (%struct.tcf_proto*, i8*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_setup_cb_replace(%struct.tcf_block* %0, %struct.tcf_proto* %1, i32 %2, i8* %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32 %9) #0 {
  %11 = alloca %struct.tcf_block*, align 8
  %12 = alloca %struct.tcf_proto*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.tcf_block* %0, %struct.tcf_block** %11, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  %23 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %24 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @READ_ONCE(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %10
  %29 = load i32, i32* %20, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %10
  %33 = phi i1 [ false, %10 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %21, align 4
  br label %35

35:                                               ; preds = %54, %32
  %36 = load i32, i32* %21, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (...) @rtnl_lock()
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %42 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %41, i32 0, i32 0
  %43 = call i32 @down_read(i32* %42)
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %21, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %51 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %56 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %55, i32 0, i32 0
  %57 = call i32 @up_read(i32* %56)
  store i32 1, i32* %21, align 4
  br label %35

58:                                               ; preds = %49, %46, %40
  %59 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %60 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %22, align 4
  br label %126

69:                                               ; preds = %63, %58
  %70 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %71 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @tc_cls_offload_cnt_reset(%struct.tcf_block* %70, %struct.tcf_proto* %71, i32* %72, i32* %73)
  %75 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %76 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (%struct.tcf_proto*, i8*)*, i32 (%struct.tcf_proto*, i8*)** %78, align 8
  %80 = icmp ne i32 (%struct.tcf_proto*, i8*)* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %69
  %82 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %83 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32 (%struct.tcf_proto*, i8*)*, i32 (%struct.tcf_proto*, i8*)** %85, align 8
  %87 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 %86(%struct.tcf_proto* %87, i8* %88)
  br label %90

90:                                               ; preds = %81, %69
  %91 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @__tc_setup_cb_call(%struct.tcf_block* %91, i32 %92, i8* %93, i32 %94)
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %22, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %126

99:                                               ; preds = %90
  %100 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %101 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.tcf_proto*, i8*)*, i32 (%struct.tcf_proto*, i8*)** %103, align 8
  %105 = icmp ne i32 (%struct.tcf_proto*, i8*)* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %108 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32 (%struct.tcf_proto*, i8*)*, i32 (%struct.tcf_proto*, i8*)** %110, align 8
  %112 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = call i32 %111(%struct.tcf_proto* %112, i8* %113)
  br label %115

115:                                              ; preds = %106, %99
  %116 = load i32, i32* %22, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %120 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %121 = load i32*, i32** %19, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = load i32, i32* %22, align 4
  %124 = call i32 @tc_cls_offload_cnt_update(%struct.tcf_block* %119, %struct.tcf_proto* %120, i32* %121, i32* %122, i32 %123, i32 1)
  br label %125

125:                                              ; preds = %118, %115
  br label %126

126:                                              ; preds = %125, %98, %66
  %127 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %128 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %127, i32 0, i32 0
  %129 = call i32 @up_read(i32* %128)
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = call i32 (...) @rtnl_unlock()
  br label %134

134:                                              ; preds = %132, %126
  %135 = load i32, i32* %22, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i32, i32* %22, align 4
  br label %140

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i32 [ %138, %137 ], [ 0, %139 ]
  ret i32 %141
}

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @tc_cls_offload_cnt_reset(%struct.tcf_block*, %struct.tcf_proto*, i32*, i32*) #1

declare dso_local i32 @__tc_setup_cb_call(%struct.tcf_block*, i32, i8*, i32) #1

declare dso_local i32 @tc_cls_offload_cnt_update(%struct.tcf_block*, %struct.tcf_proto*, i32*, i32*, i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

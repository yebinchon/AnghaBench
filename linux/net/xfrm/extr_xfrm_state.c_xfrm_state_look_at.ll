; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_look_at.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_look_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.flowi = type { i32 }

@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_STATE_ACQ = common dso_local global i64 0, align 8
@XFRM_STATE_ERROR = common dso_local global i64 0, align 8
@XFRM_STATE_EXPIRED = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_policy*, %struct.xfrm_state*, %struct.flowi*, i16, %struct.xfrm_state**, i32*, i32*)* @xfrm_state_look_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_state_look_at(%struct.xfrm_policy* %0, %struct.xfrm_state* %1, %struct.flowi* %2, i16 zeroext %3, %struct.xfrm_state** %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.xfrm_policy*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca %struct.flowi*, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.xfrm_state**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %8, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %9, align 8
  store %struct.flowi* %2, %struct.flowi** %10, align 8
  store i16 %3, i16* %11, align 2
  store %struct.xfrm_state** %4, %struct.xfrm_state*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XFRM_STATE_VALID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %7
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 0
  %30 = load %struct.flowi*, %struct.flowi** %10, align 8
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %32 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @xfrm_selector_match(%struct.TYPE_6__* %29, %struct.flowi* %30, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27, %21
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %39 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %40 = load %struct.flowi*, %struct.flowi** %10, align 8
  %41 = call i64 @security_xfrm_state_pol_flow_match(%struct.xfrm_state* %38, %struct.xfrm_policy* %39, %struct.flowi* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %27
  br label %131

44:                                               ; preds = %37
  %45 = load %struct.xfrm_state**, %struct.xfrm_state*** %12, align 8
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %45, align 8
  %47 = icmp ne %struct.xfrm_state* %46, null
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = load %struct.xfrm_state**, %struct.xfrm_state*** %12, align 8
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %49, align 8
  %51 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %53, %57
  br i1 %58, label %81, label %59

59:                                               ; preds = %48
  %60 = load %struct.xfrm_state**, %struct.xfrm_state*** %12, align 8
  %61 = load %struct.xfrm_state*, %struct.xfrm_state** %60, align 8
  %62 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %64, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %59
  %71 = load %struct.xfrm_state**, %struct.xfrm_state*** %12, align 8
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %71, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %75, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70, %48, %44
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %83 = load %struct.xfrm_state**, %struct.xfrm_state*** %12, align 8
  store %struct.xfrm_state* %82, %struct.xfrm_state** %83, align 8
  br label %84

84:                                               ; preds = %81, %70, %59
  br label %131

85:                                               ; preds = %7
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %87 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @XFRM_STATE_ACQ, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32*, i32** %13, align 8
  store i32 1, i32* %93, align 4
  br label %130

94:                                               ; preds = %85
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %96 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @XFRM_STATE_ERROR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %103 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @XFRM_STATE_EXPIRED, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %101, %94
  %109 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %110 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %109, i32 0, i32 0
  %111 = load %struct.flowi*, %struct.flowi** %10, align 8
  %112 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %113 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @xfrm_selector_match(%struct.TYPE_6__* %110, %struct.flowi* %111, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %108
  %119 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %120 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %121 = load %struct.flowi*, %struct.flowi** %10, align 8
  %122 = call i64 @security_xfrm_state_pol_flow_match(%struct.xfrm_state* %119, %struct.xfrm_policy* %120, %struct.flowi* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @ESRCH, align 4
  %126 = sub nsw i32 0, %125
  %127 = load i32*, i32** %14, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %118, %108
  br label %129

129:                                              ; preds = %128, %101
  br label %130

130:                                              ; preds = %129, %92
  br label %131

131:                                              ; preds = %43, %130, %84
  ret void
}

declare dso_local i64 @xfrm_selector_match(%struct.TYPE_6__*, %struct.flowi*, i64) #1

declare dso_local i64 @security_xfrm_state_pol_flow_match(%struct.xfrm_state*, %struct.xfrm_policy*, %struct.flowi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

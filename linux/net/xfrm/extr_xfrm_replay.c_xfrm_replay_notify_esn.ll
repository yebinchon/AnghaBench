; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_notify_esn.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_notify_esn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i64, i32, %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn*, i64 }
%struct.xfrm_replay_state_esn = type { i64, i32, i64, i32 }
%struct.km_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@XFRM_TIME_DEFER = common dso_local global i32 0, align 4
@XFRM_MSG_NEWAE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, i32)* @xfrm_replay_notify_esn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_replay_notify_esn(%struct.xfrm_state* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.km_event, align 4
  %8 = alloca %struct.xfrm_replay_state_esn*, align 8
  %9 = alloca %struct.xfrm_replay_state_esn*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 3
  %12 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  store %struct.xfrm_replay_state_esn* %12, %struct.xfrm_replay_state_esn** %8, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 4
  %15 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %14, align 8
  store %struct.xfrm_replay_state_esn* %15, %struct.xfrm_replay_state_esn** %9, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %116 [
    i32 128, label %17
    i32 129, label %98
  ]

17:                                               ; preds = %2
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %88

22:                                               ; preds = %17
  %23 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %8, align 8
  %24 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %27 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %8, align 8
  %32 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %35 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %5, align 8
  br label %48

38:                                               ; preds = %22
  %39 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %40 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = xor i64 %41, -1
  %43 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %8, align 8
  %44 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %38, %30
  %49 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %8, align 8
  %50 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %53 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %8, align 8
  %58 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %61 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  store i64 %63, i64* %6, align 8
  br label %74

64:                                               ; preds = %48
  %65 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %66 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = xor i64 %67, -1
  %69 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %8, align 8
  %70 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %64, %56
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %83 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %74
  br label %116

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %17
  %89 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %90 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 129, i32* %4, align 4
  br label %97

96:                                               ; preds = %88
  br label %154

97:                                               ; preds = %95
  br label %116

98:                                               ; preds = %2
  %99 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %100 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %99, i32 0, i32 3
  %101 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %100, align 8
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %103 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %102, i32 0, i32 4
  %104 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %103, align 8
  %105 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %8, align 8
  %106 = call i32 @xfrm_replay_state_esn_len(%struct.xfrm_replay_state_esn* %105)
  %107 = call i32 @memcmp(%struct.xfrm_replay_state_esn* %101, %struct.xfrm_replay_state_esn* %104, i32 %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %112 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %154

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %2, %115, %97, %86
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %118 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %117, i32 0, i32 4
  %119 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %118, align 8
  %120 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %121 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %120, i32 0, i32 3
  %122 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %121, align 8
  %123 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %8, align 8
  %124 = call i32 @xfrm_replay_state_esn_len(%struct.xfrm_replay_state_esn* %123)
  %125 = call i32 @memcpy(%struct.xfrm_replay_state_esn* %119, %struct.xfrm_replay_state_esn* %122, i32 %124)
  %126 = load i32, i32* @XFRM_MSG_NEWAE, align 4
  %127 = getelementptr inbounds %struct.km_event, %struct.km_event* %7, i32 0, i32 1
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %4, align 4
  %129 = getelementptr inbounds %struct.km_event, %struct.km_event* %7, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %132 = call i32 @km_state_notify(%struct.xfrm_state* %131, %struct.km_event* %7)
  %133 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %134 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %116
  %138 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %139 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %138, i32 0, i32 2
  %140 = load i64, i64* @jiffies, align 8
  %141 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %142 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = call i32 @mod_timer(i32* %139, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %137
  %148 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %151 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %96, %109, %147, %137, %116
  ret void
}

declare dso_local i32 @memcmp(%struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn*, i32) #1

declare dso_local i32 @xfrm_replay_state_esn_len(%struct.xfrm_replay_state_esn*) #1

declare dso_local i32 @memcpy(%struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn*, i32) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

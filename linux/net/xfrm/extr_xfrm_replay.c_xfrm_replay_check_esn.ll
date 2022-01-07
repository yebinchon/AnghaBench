; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_check_esn.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_check_esn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__, %struct.xfrm_replay_state_esn* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfrm_replay_state_esn = type { i32, i32, i64, i32* }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, i32)* @xfrm_replay_check_esn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_replay_check_esn(%struct.xfrm_state* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_replay_state_esn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 1
  %19 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %18, align 8
  store %struct.xfrm_replay_state_esn* %19, %struct.xfrm_replay_state_esn** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ntohl(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %23 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %26 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sub nsw i32 %28, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %178

35:                                               ; preds = %3
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %40 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %45 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %48 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %46, %50
  br label %52

52:                                               ; preds = %43, %38, %35
  %53 = phi i1 [ false, %38 ], [ false, %35 ], [ %51, %43 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %171

58:                                               ; preds = %52
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp sge i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @likely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %58
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp sgt i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %69
  store i32 0, i32* %4, align 4
  br label %178

81:                                               ; preds = %76
  br label %107

82:                                               ; preds = %58
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp slt i32 %87, %88
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i1 [ false, %82 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = call i64 @likely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %178

96:                                               ; preds = %90
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %100, %96
  br label %107

107:                                              ; preds = %106, %81
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %110 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %115 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %171

119:                                              ; preds = %107
  %120 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %121 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %125 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = srem i32 %123, %126
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %119
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %136 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = srem i32 %134, %137
  store i32 %138, i32* %8, align 4
  br label %147

139:                                              ; preds = %119
  %140 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %141 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sub nsw i32 %142, %145
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %139, %131
  %148 = load i32, i32* %8, align 4
  %149 = lshr i32 %148, 5
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %8, align 4
  %151 = and i32 %150, 31
  store i32 %151, i32* %8, align 4
  %152 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %11, align 8
  %153 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %8, align 4
  %160 = shl i32 1, %159
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %147
  br label %165

164:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %178

165:                                              ; preds = %163
  %166 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %167 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %113, %57
  %172 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @xfrm_audit_state_replay(%struct.xfrm_state* %172, %struct.sk_buff* %173, i32 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %171, %164, %95, %80, %34
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xfrm_audit_state_replay(%struct.xfrm_state*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

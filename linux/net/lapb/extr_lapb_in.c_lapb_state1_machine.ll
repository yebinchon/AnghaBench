; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_in.c_lapb_state1_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_in.c_lapb_state1_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.lapb_frame = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"(%p) S1 RX SABM(%d)\0A\00", align 1
@LAPB_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"(%p) S1 TX DM(%d)\0A\00", align 1
@LAPB_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"(%p) S1 TX UA(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"(%p) S1 RX SABME(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"(%p) S1 RX DISC(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"(%p) S1 RX UA(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(%p) S1 -> S3\0A\00", align 1
@LAPB_STATE_3 = common dso_local global i32 0, align 4
@LAPB_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"(%p) S1 RX DM(%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"(%p) S1 -> S0\0A\00", align 1
@LAPB_STATE_0 = common dso_local global i32 0, align 4
@LAPB_REFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lapb_cb*, %struct.sk_buff*, %struct.lapb_frame*)* @lapb_state1_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapb_state1_machine(%struct.lapb_cb* %0, %struct.sk_buff* %1, %struct.lapb_frame* %2) #0 {
  %4 = alloca %struct.lapb_cb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.lapb_frame*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.lapb_frame* %2, %struct.lapb_frame** %6, align 8
  %7 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %8 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %185 [
    i32 130, label %10
    i32 129, label %53
    i32 132, label %96
    i32 128, label %117
    i32 131, label %155
  ]

10:                                               ; preds = %3
  %11 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %12 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %15 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %19 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LAPB_EXTENDED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %10
  %25 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %26 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %29 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %33 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %34 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LAPB_RESPONSE, align 4
  %37 = call i32 @lapb_send_control(%struct.lapb_cb* %32, i32 131, i32 %35, i32 %36)
  br label %52

38:                                               ; preds = %10
  %39 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %40 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %43 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %47 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %48 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LAPB_RESPONSE, align 4
  %51 = call i32 @lapb_send_control(%struct.lapb_cb* %46, i32 128, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %38, %24
  br label %185

53:                                               ; preds = %3
  %54 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %55 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %58 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %62 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LAPB_EXTENDED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %53
  %68 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %69 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %72 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %76 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %77 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LAPB_RESPONSE, align 4
  %80 = call i32 @lapb_send_control(%struct.lapb_cb* %75, i32 128, i32 %78, i32 %79)
  br label %95

81:                                               ; preds = %53
  %82 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %83 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %86 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %90 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %91 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @LAPB_RESPONSE, align 4
  %94 = call i32 @lapb_send_control(%struct.lapb_cb* %89, i32 131, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %81, %67
  br label %185

96:                                               ; preds = %3
  %97 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %98 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %101 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %105 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %108 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %112 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %113 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @LAPB_RESPONSE, align 4
  %116 = call i32 @lapb_send_control(%struct.lapb_cb* %111, i32 131, i32 %114, i32 %115)
  br label %185

117:                                              ; preds = %3
  %118 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %119 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %122 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %126 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %117
  %130 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %131 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %135 = call i32 @lapb_stop_t1timer(%struct.lapb_cb* %134)
  %136 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %137 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %136)
  %138 = load i32, i32* @LAPB_STATE_3, align 4
  %139 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %140 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %142 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  %143 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %144 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %143, i32 0, i32 7
  store i32 0, i32* %144, align 4
  %145 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %146 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %145, i32 0, i32 6
  store i32 0, i32* %146, align 4
  %147 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %148 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %147, i32 0, i32 5
  store i32 0, i32* %148, align 4
  %149 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %150 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %149, i32 0, i32 4
  store i32 0, i32* %150, align 4
  %151 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %152 = load i32, i32* @LAPB_OK, align 4
  %153 = call i32 @lapb_connect_confirmation(%struct.lapb_cb* %151, i32 %152)
  br label %154

154:                                              ; preds = %129, %117
  br label %185

155:                                              ; preds = %3
  %156 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %157 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %160 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %164 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %155
  %168 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %169 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %170)
  %172 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %173 = call i32 @lapb_clear_queues(%struct.lapb_cb* %172)
  %174 = load i32, i32* @LAPB_STATE_0, align 4
  %175 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %176 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %178 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %177)
  %179 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %180 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %179)
  %181 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %182 = load i32, i32* @LAPB_REFUSED, align 4
  %183 = call i32 @lapb_disconnect_indication(%struct.lapb_cb* %181, i32 %182)
  br label %184

184:                                              ; preds = %167, %155
  br label %185

185:                                              ; preds = %3, %184, %154, %96, %95, %52
  %186 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %187 = call i32 @kfree_skb(%struct.sk_buff* %186)
  ret void
}

declare dso_local i32 @lapb_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @lapb_send_control(%struct.lapb_cb*, i32, i32, i32) #1

declare dso_local i32 @lapb_stop_t1timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_stop_t2timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_connect_confirmation(%struct.lapb_cb*, i32) #1

declare dso_local i32 @lapb_clear_queues(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_start_t1timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_disconnect_indication(%struct.lapb_cb*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

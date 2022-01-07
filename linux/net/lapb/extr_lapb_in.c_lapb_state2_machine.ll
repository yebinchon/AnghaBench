; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_in.c_lapb_state2_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_in.c_lapb_state2_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i8* }
%struct.sk_buff = type { i32 }
%struct.lapb_frame = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"(%p) S2 RX {SABM,SABME}(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"(%p) S2 TX DM(%d)\0A\00", align 1
@LAPB_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"(%p) S2 RX DISC(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"(%p) S2 TX UA(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"(%p) S2 RX UA(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"(%p) S2 -> S0\0A\00", align 1
@LAPB_STATE_0 = common dso_local global i8* null, align 8
@LAPB_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"(%p) S2 RX DM(%d)\0A\00", align 1
@LAPB_NOTCONNECTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"(%p) S2 RX {I,REJ,RNR,RR}(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lapb_cb*, %struct.sk_buff*, %struct.lapb_frame*)* @lapb_state2_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapb_state2_machine(%struct.lapb_cb* %0, %struct.sk_buff* %1, %struct.lapb_frame* %2) #0 {
  %4 = alloca %struct.lapb_cb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.lapb_frame*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.lapb_frame* %2, %struct.lapb_frame** %6, align 8
  %7 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %8 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %135 [
    i32 130, label %10
    i32 129, label %10
    i32 136, label %31
    i32 128, label %52
    i32 135, label %80
    i32 134, label %108
    i32 133, label %108
    i32 132, label %108
    i32 131, label %108
  ]

10:                                               ; preds = %3, %3
  %11 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %12 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %15 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %19 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %22 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %26 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %27 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LAPB_RESPONSE, align 4
  %30 = call i32 @lapb_send_control(%struct.lapb_cb* %25, i32 135, i32 %28, i32 %29)
  br label %135

31:                                               ; preds = %3
  %32 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %33 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %36 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %40 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %43 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %47 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %48 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LAPB_RESPONSE, align 4
  %51 = call i32 @lapb_send_control(%struct.lapb_cb* %46, i32 128, i32 %49, i32 %50)
  br label %135

52:                                               ; preds = %3
  %53 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %54 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %57 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %61 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %52
  %65 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %66 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** @LAPB_STATE_0, align 8
  %70 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %71 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %73 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %72)
  %74 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %75 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %74)
  %76 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %77 = load i32, i32* @LAPB_OK, align 4
  %78 = call i32 @lapb_disconnect_confirmation(%struct.lapb_cb* %76, i32 %77)
  br label %79

79:                                               ; preds = %64, %52
  br label %135

80:                                               ; preds = %3
  %81 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %82 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %85 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %89 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %80
  %93 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %94 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i8*, i8** @LAPB_STATE_0, align 8
  %98 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %99 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %101 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %100)
  %102 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %103 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %102)
  %104 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %105 = load i32, i32* @LAPB_NOTCONNECTED, align 4
  %106 = call i32 @lapb_disconnect_confirmation(%struct.lapb_cb* %104, i32 %105)
  br label %107

107:                                              ; preds = %92, %80
  br label %135

108:                                              ; preds = %3, %3, %3, %3
  %109 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %110 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %113 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %117 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %120 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %118, i32 %121)
  %123 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %124 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %108
  %128 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %129 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %130 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @LAPB_RESPONSE, align 4
  %133 = call i32 @lapb_send_control(%struct.lapb_cb* %128, i32 135, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %108
  br label %135

135:                                              ; preds = %3, %134, %107, %79, %31, %10
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = call i32 @kfree_skb(%struct.sk_buff* %136)
  ret void
}

declare dso_local i32 @lapb_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @lapb_send_control(%struct.lapb_cb*, i32, i32, i32) #1

declare dso_local i32 @lapb_start_t1timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_stop_t2timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_disconnect_confirmation(%struct.lapb_cb*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_timer.c_lapb_t1timer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_timer.c_lapb_t1timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@t1timer = common dso_local global i32 0, align 4
@LAPB_DCE = common dso_local global i32 0, align 4
@LAPB_DM = common dso_local global i32 0, align 4
@LAPB_POLLOFF = common dso_local global i32 0, align 4
@LAPB_RESPONSE = common dso_local global i32 0, align 4
@LAPB_TIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"(%p) S1 -> S0\0A\00", align 1
@LAPB_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"(%p) S1 TX SABME(1)\0A\00", align 1
@LAPB_SABME = common dso_local global i32 0, align 4
@LAPB_POLLON = common dso_local global i32 0, align 4
@LAPB_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"(%p) S1 TX SABM(1)\0A\00", align 1
@LAPB_SABM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"(%p) S2 -> S0\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"(%p) S2 TX DISC(1)\0A\00", align 1
@LAPB_DISC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"(%p) S3 -> S0\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(%p) S4 -> S0\0A\00", align 1
@lapb = common dso_local global %struct.lapb_cb* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @lapb_t1timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapb_t1timer_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.lapb_cb*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %5 = ptrtoint %struct.lapb_cb* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @t1timer, align 4
  %8 = call %struct.lapb_cb* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.lapb_cb* %8, %struct.lapb_cb** %3, align 8
  %9 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %10 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %174 [
    i32 132, label %12
    i32 131, label %26
    i32 130, label %79
    i32 129, label %114
    i32 128, label %146
  ]

12:                                               ; preds = %1
  %13 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %14 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LAPB_DCE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %21 = load i32, i32* @LAPB_DM, align 4
  %22 = load i32, i32* @LAPB_POLLOFF, align 4
  %23 = load i32, i32* @LAPB_RESPONSE, align 4
  %24 = call i32 @lapb_send_control(%struct.lapb_cb* %20, i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %12
  br label %174

26:                                               ; preds = %1
  %27 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %28 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %31 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %36 = call i32 @lapb_clear_queues(%struct.lapb_cb* %35)
  %37 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %38 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %37, i32 0, i32 0
  store i32 132, i32* %38, align 4
  %39 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %40 = load i32, i32* @LAPB_TIMEDOUT, align 4
  %41 = call i32 @lapb_disconnect_indication(%struct.lapb_cb* %39, i32 %40)
  %42 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %43 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %177

46:                                               ; preds = %26
  %47 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %48 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %52 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LAPB_EXTENDED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %46
  %58 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %59 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %63 = load i32, i32* @LAPB_SABME, align 4
  %64 = load i32, i32* @LAPB_POLLON, align 4
  %65 = load i32, i32* @LAPB_COMMAND, align 4
  %66 = call i32 @lapb_send_control(%struct.lapb_cb* %62, i32 %63, i32 %64, i32 %65)
  br label %77

67:                                               ; preds = %46
  %68 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %69 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %73 = load i32, i32* @LAPB_SABM, align 4
  %74 = load i32, i32* @LAPB_POLLON, align 4
  %75 = load i32, i32* @LAPB_COMMAND, align 4
  %76 = call i32 @lapb_send_control(%struct.lapb_cb* %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %67, %57
  br label %78

78:                                               ; preds = %77
  br label %174

79:                                               ; preds = %1
  %80 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %81 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %84 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %79
  %88 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %89 = call i32 @lapb_clear_queues(%struct.lapb_cb* %88)
  %90 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %91 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %90, i32 0, i32 0
  store i32 132, i32* %91, align 4
  %92 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %93 = load i32, i32* @LAPB_TIMEDOUT, align 4
  %94 = call i32 @lapb_disconnect_confirmation(%struct.lapb_cb* %92, i32 %93)
  %95 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %96 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %177

99:                                               ; preds = %79
  %100 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %101 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %105 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %109 = load i32, i32* @LAPB_DISC, align 4
  %110 = load i32, i32* @LAPB_POLLON, align 4
  %111 = load i32, i32* @LAPB_COMMAND, align 4
  %112 = call i32 @lapb_send_control(%struct.lapb_cb* %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %99
  br label %174

114:                                              ; preds = %1
  %115 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %116 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %119 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %114
  %123 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %124 = call i32 @lapb_clear_queues(%struct.lapb_cb* %123)
  %125 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %126 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %125, i32 0, i32 0
  store i32 132, i32* %126, align 4
  %127 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %128 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %127)
  %129 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %130 = load i32, i32* @LAPB_TIMEDOUT, align 4
  %131 = call i32 @lapb_disconnect_indication(%struct.lapb_cb* %129, i32 %130)
  %132 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %133 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  br label %177

136:                                              ; preds = %114
  %137 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %138 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %142 = call i32 @lapb_requeue_frames(%struct.lapb_cb* %141)
  %143 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %144 = call i32 @lapb_kick(%struct.lapb_cb* %143)
  br label %145

145:                                              ; preds = %136
  br label %174

146:                                              ; preds = %1
  %147 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %148 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %151 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %149, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %146
  %155 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %156 = call i32 @lapb_clear_queues(%struct.lapb_cb* %155)
  %157 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %158 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %157, i32 0, i32 0
  store i32 132, i32* %158, align 4
  %159 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %160 = load i32, i32* @LAPB_TIMEDOUT, align 4
  %161 = call i32 @lapb_disconnect_indication(%struct.lapb_cb* %159, i32 %160)
  %162 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %163 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  br label %177

166:                                              ; preds = %146
  %167 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %168 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %172 = call i32 @lapb_transmit_frmr(%struct.lapb_cb* %171)
  br label %173

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %1, %173, %145, %113, %78, %25
  %175 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %176 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %175)
  br label %177

177:                                              ; preds = %174, %154, %122, %87, %34
  ret void
}

declare dso_local %struct.lapb_cb* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @lapb_send_control(%struct.lapb_cb*, i32, i32, i32) #1

declare dso_local i32 @lapb_clear_queues(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_disconnect_indication(%struct.lapb_cb*, i32) #1

declare dso_local i32 @lapb_dbg(i32, i8*, i32) #1

declare dso_local i32 @lapb_disconnect_confirmation(%struct.lapb_cb*, i32) #1

declare dso_local i32 @lapb_stop_t2timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_requeue_frames(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_kick(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_transmit_frmr(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_start_t1timer(%struct.lapb_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_in.c_lapb_state0_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_in.c_lapb_state0_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.sk_buff = type { i32 }
%struct.lapb_frame = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"(%p) S0 RX SABM(%d)\0A\00", align 1
@LAPB_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"(%p) S0 TX DM(%d)\0A\00", align 1
@LAPB_DM = common dso_local global i32 0, align 4
@LAPB_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"(%p) S0 TX UA(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"(%p) S0 -> S3\0A\00", align 1
@LAPB_UA = common dso_local global i32 0, align 4
@LAPB_STATE_3 = common dso_local global i8* null, align 8
@LAPB_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"(%p) S0 RX SABME(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"(%p) S0 RX DISC(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lapb_cb*, %struct.sk_buff*, %struct.lapb_frame*)* @lapb_state0_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapb_state0_machine(%struct.lapb_cb* %0, %struct.sk_buff* %1, %struct.lapb_frame* %2) #0 {
  %4 = alloca %struct.lapb_cb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.lapb_frame*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.lapb_frame* %2, %struct.lapb_frame** %6, align 8
  %7 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %8 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %170 [
    i32 129, label %10
    i32 128, label %79
    i32 130, label %148
  ]

10:                                               ; preds = %3
  %11 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %12 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %15 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %19 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LAPB_EXTENDED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %10
  %25 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %26 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %29 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %33 = load i32, i32* @LAPB_DM, align 4
  %34 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %35 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LAPB_RESPONSE, align 4
  %38 = call i32 @lapb_send_control(%struct.lapb_cb* %32, i32 %33, i32 %36, i32 %37)
  br label %78

39:                                               ; preds = %10
  %40 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %41 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %44 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %48 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %52 = load i32, i32* @LAPB_UA, align 4
  %53 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %54 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LAPB_RESPONSE, align 4
  %57 = call i32 @lapb_send_control(%struct.lapb_cb* %51, i32 %52, i32 %55, i32 %56)
  %58 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %59 = call i32 @lapb_stop_t1timer(%struct.lapb_cb* %58)
  %60 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %61 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %60)
  %62 = load i8*, i8** @LAPB_STATE_3, align 8
  %63 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %64 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %66 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %68 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %67, i32 0, i32 6
  store i32 0, i32* %68, align 8
  %69 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %70 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %69, i32 0, i32 5
  store i32 0, i32* %70, align 4
  %71 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %72 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %71, i32 0, i32 4
  store i32 0, i32* %72, align 8
  %73 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %74 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %73, i32 0, i32 3
  store i32 0, i32* %74, align 4
  %75 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %76 = load i32, i32* @LAPB_OK, align 4
  %77 = call i32 @lapb_connect_indication(%struct.lapb_cb* %75, i32 %76)
  br label %78

78:                                               ; preds = %39, %24
  br label %171

79:                                               ; preds = %3
  %80 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %81 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %84 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %88 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @LAPB_EXTENDED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %79
  %94 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %95 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %98 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99)
  %101 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %102 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %106 = load i32, i32* @LAPB_UA, align 4
  %107 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %108 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @LAPB_RESPONSE, align 4
  %111 = call i32 @lapb_send_control(%struct.lapb_cb* %105, i32 %106, i32 %109, i32 %110)
  %112 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %113 = call i32 @lapb_stop_t1timer(%struct.lapb_cb* %112)
  %114 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %115 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %114)
  %116 = load i8*, i8** @LAPB_STATE_3, align 8
  %117 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %118 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  %119 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %120 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  %121 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %122 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %121, i32 0, i32 6
  store i32 0, i32* %122, align 8
  %123 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %124 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %123, i32 0, i32 5
  store i32 0, i32* %124, align 4
  %125 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %126 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %125, i32 0, i32 4
  store i32 0, i32* %126, align 8
  %127 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %128 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %127, i32 0, i32 3
  store i32 0, i32* %128, align 4
  %129 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %130 = load i32, i32* @LAPB_OK, align 4
  %131 = call i32 @lapb_connect_indication(%struct.lapb_cb* %129, i32 %130)
  br label %147

132:                                              ; preds = %79
  %133 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %134 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %137 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %138)
  %140 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %141 = load i32, i32* @LAPB_DM, align 4
  %142 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %143 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @LAPB_RESPONSE, align 4
  %146 = call i32 @lapb_send_control(%struct.lapb_cb* %140, i32 %141, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %132, %93
  br label %171

148:                                              ; preds = %3
  %149 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %150 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %153 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %157 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %160 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, i32, ...) @lapb_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %164 = load i32, i32* @LAPB_UA, align 4
  %165 = load %struct.lapb_frame*, %struct.lapb_frame** %6, align 8
  %166 = getelementptr inbounds %struct.lapb_frame, %struct.lapb_frame* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @LAPB_RESPONSE, align 4
  %169 = call i32 @lapb_send_control(%struct.lapb_cb* %163, i32 %164, i32 %167, i32 %168)
  br label %171

170:                                              ; preds = %3
  br label %171

171:                                              ; preds = %170, %148, %147, %78
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = call i32 @kfree_skb(%struct.sk_buff* %172)
  ret void
}

declare dso_local i32 @lapb_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @lapb_send_control(%struct.lapb_cb*, i32, i32, i32) #1

declare dso_local i32 @lapb_stop_t1timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_stop_t2timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_connect_indication(%struct.lapb_cb*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

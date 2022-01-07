; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_ds_in.c_ax25_ds_state1_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_ds_in.c_ax25_ds_state1_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32, i32, i32, i32, i32, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*)*, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.sk_buff = type { i32 }

@AX25_MODULUS = common dso_local global i32 0, align 4
@AX25_VALUES_WINDOW = common dso_local global i64 0, align 8
@AX25_RESPONSE = common dso_local global i32 0, align 4
@AX25_EMODULUS = common dso_local global i32 0, align 4
@AX25_VALUES_EWINDOW = common dso_local global i64 0, align 8
@AX25_STATE_3 = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@AX25_POLLON = common dso_local global i32 0, align 4
@AX25_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.sk_buff*, i32, i32, i32)* @ax25_ds_state1_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_ds_state1_machine(%struct.TYPE_17__* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %121 [
    i32 130, label %12
    i32 129, label %30
    i32 132, label %48
    i32 128, label %53
    i32 131, label %113
  ]

12:                                               ; preds = %5
  %13 = load i32, i32* @AX25_MODULUS, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @AX25_VALUES_WINDOW, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @AX25_RESPONSE, align 4
  %29 = call i32 @ax25_send_control(%struct.TYPE_17__* %26, i32 128, i32 %27, i32 %28)
  br label %130

30:                                               ; preds = %5
  %31 = load i32, i32* @AX25_EMODULUS, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @AX25_VALUES_EWINDOW, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @AX25_RESPONSE, align 4
  %47 = call i32 @ax25_send_control(%struct.TYPE_17__* %44, i32 128, i32 %45, i32 %46)
  br label %130

48:                                               ; preds = %5
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @AX25_RESPONSE, align 4
  %52 = call i32 @ax25_send_control(%struct.TYPE_17__* %49, i32 131, i32 %50, i32 %51)
  br label %130

53:                                               ; preds = %5
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = call i32 @ax25_calculate_rtt(%struct.TYPE_17__* %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = call i32 @ax25_stop_t1timer(%struct.TYPE_17__* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = call i32 @ax25_start_t3timer(%struct.TYPE_17__* %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = call i32 @ax25_start_idletimer(%struct.TYPE_17__* %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 5
  store i32 0, i32* %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 4
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 3
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* @AX25_STATE_3, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = icmp ne %struct.TYPE_18__* %75, null
  br i1 %76, label %77, label %108

77:                                               ; preds = %53
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = call i32 @bh_lock_sock(%struct.TYPE_18__* %80)
  %82 = load i32, i32* @TCP_ESTABLISHED, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = load i32, i32* @SOCK_DEAD, align 4
  %91 = call i32 @sock_flag(%struct.TYPE_18__* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %77
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = call i32 %98(%struct.TYPE_18__* %101)
  br label %103

103:                                              ; preds = %93, %77
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = call i32 @bh_unlock_sock(%struct.TYPE_18__* %106)
  br label %108

108:                                              ; preds = %103, %53
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = call i32 @ax25_dama_on(%struct.TYPE_17__* %109)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = call i32 @ax25_std_enquiry_response(%struct.TYPE_17__* %111)
  br label %130

113:                                              ; preds = %5
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %118 = load i32, i32* @ECONNREFUSED, align 4
  %119 = call i32 @ax25_disconnect(%struct.TYPE_17__* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %113
  br label %130

121:                                              ; preds = %5
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = load i32, i32* @AX25_POLLON, align 4
  %127 = load i32, i32* @AX25_COMMAND, align 4
  %128 = call i32 @ax25_send_control(%struct.TYPE_17__* %125, i32 130, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %121
  br label %130

130:                                              ; preds = %129, %120, %108, %48, %30, %12
  ret i32 0
}

declare dso_local i32 @ax25_send_control(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @ax25_calculate_rtt(%struct.TYPE_17__*) #1

declare dso_local i32 @ax25_stop_t1timer(%struct.TYPE_17__*) #1

declare dso_local i32 @ax25_start_t3timer(%struct.TYPE_17__*) #1

declare dso_local i32 @ax25_start_idletimer(%struct.TYPE_17__*) #1

declare dso_local i32 @bh_lock_sock(%struct.TYPE_18__*) #1

declare dso_local i32 @sock_flag(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.TYPE_18__*) #1

declare dso_local i32 @ax25_dama_on(%struct.TYPE_17__*) #1

declare dso_local i32 @ax25_std_enquiry_response(%struct.TYPE_17__*) #1

declare dso_local i32 @ax25_disconnect(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

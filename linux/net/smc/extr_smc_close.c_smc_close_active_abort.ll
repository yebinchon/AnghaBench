; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_active_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_active_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.sock }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.smc_cdc_conn_state_flags }
%struct.smc_cdc_conn_state_flags = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)*, i8* }
%struct.sock = type { i32, i32 (%struct.sock*)*, i8* }

@ECONNABORTED = common dso_local global i8* null, align 8
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*)* @smc_close_active_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_close_active_abort(%struct.smc_sock* %0) #0 {
  %2 = alloca %struct.smc_sock*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.smc_cdc_conn_state_flags*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %2, align 8
  %5 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %6 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %5, i32 0, i32 2
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %8 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.smc_cdc_conn_state_flags* %10, %struct.smc_cdc_conn_state_flags** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 133
  br i1 %14, label %15, label %64

15:                                               ; preds = %1
  %16 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %17 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %64

20:                                               ; preds = %15
  %21 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %22 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %64

27:                                               ; preds = %20
  %28 = load i8*, i8** @ECONNABORTED, align 8
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %32 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %27
  %36 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %37 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %63

42:                                               ; preds = %35
  %43 = load i8*, i8** @ECONNABORTED, align 8
  %44 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %45 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i8* %43, i8** %49, align 8
  %50 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %51 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %55, align 8
  %57 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %58 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = call i32 %56(%struct.TYPE_7__* %61)
  br label %63

63:                                               ; preds = %42, %35, %27
  br label %64

64:                                               ; preds = %63, %20, %15, %1
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %122 [
    i32 138, label %68
    i32 137, label %81
    i32 136, label %81
    i32 131, label %101
    i32 130, label %101
    i32 128, label %115
    i32 135, label %115
    i32 129, label %118
    i32 133, label %121
    i32 132, label %121
    i32 134, label %121
  ]

68:                                               ; preds = %64
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  store i32 132, i32* %70, align 8
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = call i32 @release_sock(%struct.sock* %71)
  %73 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %74 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @cancel_delayed_work_sync(i32* %75)
  %77 = load %struct.sock*, %struct.sock** %3, align 8
  %78 = call i32 @lock_sock(%struct.sock* %77)
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = call i32 @sock_put(%struct.sock* %79)
  br label %122

81:                                               ; preds = %64, %64
  %82 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %83 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %82, i32 0, i32 0
  %84 = call i32 @smc_cdc_rxed_any_close(%struct.TYPE_8__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load %struct.sock*, %struct.sock** %3, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 0
  store i32 132, i32* %88, align 8
  br label %92

89:                                               ; preds = %81
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  store i32 134, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.sock*, %struct.sock** %3, align 8
  %94 = call i32 @release_sock(%struct.sock* %93)
  %95 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %96 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = call i32 @cancel_delayed_work_sync(i32* %97)
  %99 = load %struct.sock*, %struct.sock** %3, align 8
  %100 = call i32 @lock_sock(%struct.sock* %99)
  br label %122

101:                                              ; preds = %64, %64
  %102 = load %struct.smc_cdc_conn_state_flags*, %struct.smc_cdc_conn_state_flags** %4, align 8
  %103 = getelementptr inbounds %struct.smc_cdc_conn_state_flags, %struct.smc_cdc_conn_state_flags* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load %struct.sock*, %struct.sock** %3, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 0
  store i32 132, i32* %108, align 8
  br label %112

109:                                              ; preds = %101
  %110 = load %struct.sock*, %struct.sock** %3, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 0
  store i32 134, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.sock*, %struct.sock** %3, align 8
  %114 = call i32 @sock_put(%struct.sock* %113)
  br label %122

115:                                              ; preds = %64, %64
  %116 = load %struct.sock*, %struct.sock** %3, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 0
  store i32 134, i32* %117, align 8
  br label %122

118:                                              ; preds = %64
  %119 = load %struct.sock*, %struct.sock** %3, align 8
  %120 = call i32 @sock_put(%struct.sock* %119)
  br label %122

121:                                              ; preds = %64, %64, %64
  br label %122

122:                                              ; preds = %64, %121, %118, %115, %112, %92, %68
  %123 = load %struct.sock*, %struct.sock** %3, align 8
  %124 = load i32, i32* @SOCK_DEAD, align 4
  %125 = call i32 @sock_set_flag(%struct.sock* %123, i32 %124)
  %126 = load %struct.sock*, %struct.sock** %3, align 8
  %127 = getelementptr inbounds %struct.sock, %struct.sock* %126, i32 0, i32 1
  %128 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %127, align 8
  %129 = load %struct.sock*, %struct.sock** %3, align 8
  %130 = call i32 %128(%struct.sock* %129)
  ret void
}

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @smc_cdc_rxed_any_close(%struct.TYPE_8__*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

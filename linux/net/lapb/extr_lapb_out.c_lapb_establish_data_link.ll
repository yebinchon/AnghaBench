; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_out.c_lapb_establish_data_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_out.c_lapb_establish_data_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32, i32, i32, i64 }

@LAPB_EXTENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"(%p) S%d TX SABME(1)\0A\00", align 1
@LAPB_SABME = common dso_local global i32 0, align 4
@LAPB_POLLON = common dso_local global i32 0, align 4
@LAPB_COMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"(%p) S%d TX SABM(1)\0A\00", align 1
@LAPB_SABM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_establish_data_link(%struct.lapb_cb* %0) #0 {
  %2 = alloca %struct.lapb_cb*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %2, align 8
  %3 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %4 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %6 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %8 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LAPB_EXTENDED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %15 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %18 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %22 = load i32, i32* @LAPB_SABME, align 4
  %23 = load i32, i32* @LAPB_POLLON, align 4
  %24 = load i32, i32* @LAPB_COMMAND, align 4
  %25 = call i32 @lapb_send_control(%struct.lapb_cb* %21, i32 %22, i32 %23, i32 %24)
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %28 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %31 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %35 = load i32, i32* @LAPB_SABM, align 4
  %36 = load i32, i32* @LAPB_POLLON, align 4
  %37 = load i32, i32* @LAPB_COMMAND, align 4
  %38 = call i32 @lapb_send_control(%struct.lapb_cb* %34, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %26, %13
  %40 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %41 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %40)
  %42 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %43 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %42)
  ret void
}

declare dso_local i32 @lapb_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @lapb_send_control(%struct.lapb_cb*, i32, i32, i32) #1

declare dso_local i32 @lapb_start_t1timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_stop_t2timer(%struct.lapb_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

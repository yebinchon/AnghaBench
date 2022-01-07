; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_iface.c_lapb_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_iface.c_lapb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lapb_register_struct = type { i32 }
%struct.lapb_cb = type { %struct.lapb_register_struct*, %struct.net_device* }

@LAPB_BADTOKEN = common dso_local global i32 0, align 4
@lapb_list_lock = common dso_local global i32 0, align 4
@LAPB_NOMEM = common dso_local global i32 0, align 4
@LAPB_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapb_register(%struct.net_device* %0, %struct.lapb_register_struct* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lapb_register_struct*, align 8
  %5 = alloca %struct.lapb_cb*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.lapb_register_struct* %1, %struct.lapb_register_struct** %4, align 8
  %7 = load i32, i32* @LAPB_BADTOKEN, align 4
  store i32 %7, i32* %6, align 4
  %8 = call i32 @write_lock_bh(i32* @lapb_list_lock)
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.lapb_cb* @__lapb_devtostruct(%struct.net_device* %9)
  store %struct.lapb_cb* %10, %struct.lapb_cb** %5, align 8
  %11 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %12 = icmp ne %struct.lapb_cb* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %15 = call i32 @lapb_put(%struct.lapb_cb* %14)
  br label %34

16:                                               ; preds = %2
  %17 = call %struct.lapb_cb* (...) @lapb_create_cb()
  store %struct.lapb_cb* %17, %struct.lapb_cb** %5, align 8
  %18 = load i32, i32* @LAPB_NOMEM, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %20 = icmp ne %struct.lapb_cb* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %34

22:                                               ; preds = %16
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %25 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %24, i32 0, i32 1
  store %struct.net_device* %23, %struct.net_device** %25, align 8
  %26 = load %struct.lapb_register_struct*, %struct.lapb_register_struct** %4, align 8
  %27 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %28 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %27, i32 0, i32 0
  store %struct.lapb_register_struct* %26, %struct.lapb_register_struct** %28, align 8
  %29 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %30 = call i32 @__lapb_insert_cb(%struct.lapb_cb* %29)
  %31 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %32 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %31)
  %33 = load i32, i32* @LAPB_OK, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %22, %21, %13
  %35 = call i32 @write_unlock_bh(i32* @lapb_list_lock)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.lapb_cb* @__lapb_devtostruct(%struct.net_device*) #1

declare dso_local i32 @lapb_put(%struct.lapb_cb*) #1

declare dso_local %struct.lapb_cb* @lapb_create_cb(...) #1

declare dso_local i32 @__lapb_insert_cb(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_start_t1timer(%struct.lapb_cb*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

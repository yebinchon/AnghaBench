; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_sock_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_sock_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_proto_family = type { i32 }

@BT_MAX_PROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bt_proto_lock = common dso_local global i32 0, align 4
@bt_proto = common dso_local global %struct.net_proto_family** null, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_sock_register(i32 %0, %struct.net_proto_family* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_proto_family*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.net_proto_family* %1, %struct.net_proto_family** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BT_MAX_PROTO, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %9
  %17 = call i32 @write_lock(i32* @bt_proto_lock)
  %18 = load %struct.net_proto_family**, %struct.net_proto_family*** @bt_proto, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.net_proto_family*, %struct.net_proto_family** %18, i64 %20
  %22 = load %struct.net_proto_family*, %struct.net_proto_family** %21, align 8
  %23 = icmp ne %struct.net_proto_family* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %33

27:                                               ; preds = %16
  %28 = load %struct.net_proto_family*, %struct.net_proto_family** %5, align 8
  %29 = load %struct.net_proto_family**, %struct.net_proto_family*** @bt_proto, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.net_proto_family*, %struct.net_proto_family** %29, i64 %31
  store %struct.net_proto_family* %28, %struct.net_proto_family** %32, align 8
  br label %33

33:                                               ; preds = %27, %24
  %34 = call i32 @write_unlock(i32* @bt_proto_lock)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

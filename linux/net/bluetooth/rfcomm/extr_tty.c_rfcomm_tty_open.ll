; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.rfcomm_dev* }
%struct.rfcomm_dev = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"tty %p id %d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"dev %p dst %pMR channel %d opened %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @rfcomm_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_tty_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.rfcomm_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %9, align 8
  store %struct.rfcomm_dev* %10, %struct.rfcomm_dev** %6, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %11, i32 %14)
  %16 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %17 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %17, i32 0, i32 3
  %19 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %20 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %23 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.rfcomm_dev* %16, i32* %18, i32 %21, i32 %25)
  %27 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %28 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %27, i32 0, i32 1
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = call i32 @tty_port_open(%struct.TYPE_2__* %28, %struct.tty_struct* %29, %struct.file* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %2
  %37 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %38 = call i32 @rfcomm_tty_copy_pending(%struct.rfcomm_dev* %37)
  %39 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %40 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rfcomm_dlc_unthrottle(i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @tty_port_open(%struct.TYPE_2__*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @rfcomm_tty_copy_pending(%struct.rfcomm_dev*) #1

declare dso_local i32 @rfcomm_dlc_unthrottle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

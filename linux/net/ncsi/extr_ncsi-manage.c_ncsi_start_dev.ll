; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_start_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_start_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_dev = type { i64 }
%struct.ncsi_dev_priv = type { i32, i32, i64 }

@ncsi_dev_state_registered = common dso_local global i64 0, align 8
@ncsi_dev_state_functional = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@NCSI_DEV_PROBED = common dso_local global i32 0, align 4
@ncsi_dev_state_probe = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncsi_start_dev(%struct.ncsi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_dev*, align 8
  %4 = alloca %struct.ncsi_dev_priv*, align 8
  store %struct.ncsi_dev* %0, %struct.ncsi_dev** %3, align 8
  %5 = load %struct.ncsi_dev*, %struct.ncsi_dev** %3, align 8
  %6 = call %struct.ncsi_dev_priv* @TO_NCSI_DEV_PRIV(%struct.ncsi_dev* %5)
  store %struct.ncsi_dev_priv* %6, %struct.ncsi_dev_priv** %4, align 8
  %7 = load %struct.ncsi_dev*, %struct.ncsi_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ncsi_dev_state_registered, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.ncsi_dev*, %struct.ncsi_dev** %3, align 8
  %14 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ncsi_dev_state_functional, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOTTY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %40

21:                                               ; preds = %12, %1
  %22 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NCSI_DEV_PROBED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %21
  %29 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %30 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @ncsi_dev_state_probe, align 8
  %32 = load %struct.ncsi_dev*, %struct.ncsi_dev** %3, align 8
  %33 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %34, i32 0, i32 1
  %36 = call i32 @schedule_work(i32* %35)
  store i32 0, i32* %2, align 4
  br label %40

37:                                               ; preds = %21
  %38 = load %struct.ncsi_dev*, %struct.ncsi_dev** %3, align 8
  %39 = call i32 @ncsi_reset_dev(%struct.ncsi_dev* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %28, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.ncsi_dev_priv* @TO_NCSI_DEV_PRIV(%struct.ncsi_dev*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @ncsi_reset_dev(%struct.ncsi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

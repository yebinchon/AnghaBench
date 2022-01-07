; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_find_package_and_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_find_package_and_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_package = type { i32 }
%struct.ncsi_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %0, i8 zeroext %1, %struct.ncsi_package** %2, %struct.ncsi_channel** %3) #0 {
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.ncsi_package**, align 8
  %8 = alloca %struct.ncsi_channel**, align 8
  %9 = alloca %struct.ncsi_package*, align 8
  %10 = alloca %struct.ncsi_channel*, align 8
  store %struct.ncsi_dev_priv* %0, %struct.ncsi_dev_priv** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.ncsi_package** %2, %struct.ncsi_package*** %7, align 8
  store %struct.ncsi_channel** %3, %struct.ncsi_channel*** %8, align 8
  %11 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %12 = load i8, i8* %6, align 1
  %13 = call i32 @NCSI_PACKAGE_INDEX(i8 zeroext %12)
  %14 = call %struct.ncsi_package* @ncsi_find_package(%struct.ncsi_dev_priv* %11, i32 %13)
  store %struct.ncsi_package* %14, %struct.ncsi_package** %9, align 8
  %15 = load %struct.ncsi_package*, %struct.ncsi_package** %9, align 8
  %16 = icmp ne %struct.ncsi_package* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.ncsi_package*, %struct.ncsi_package** %9, align 8
  %19 = load i8, i8* %6, align 1
  %20 = call i32 @NCSI_CHANNEL_INDEX(i8 zeroext %19)
  %21 = call %struct.ncsi_channel* @ncsi_find_channel(%struct.ncsi_package* %18, i32 %20)
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi %struct.ncsi_channel* [ %21, %17 ], [ null, %22 ]
  store %struct.ncsi_channel* %24, %struct.ncsi_channel** %10, align 8
  %25 = load %struct.ncsi_package**, %struct.ncsi_package*** %7, align 8
  %26 = icmp ne %struct.ncsi_package** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.ncsi_package*, %struct.ncsi_package** %9, align 8
  %29 = load %struct.ncsi_package**, %struct.ncsi_package*** %7, align 8
  store %struct.ncsi_package* %28, %struct.ncsi_package** %29, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.ncsi_channel**, %struct.ncsi_channel*** %8, align 8
  %32 = icmp ne %struct.ncsi_channel** %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.ncsi_channel*, %struct.ncsi_channel** %10, align 8
  %35 = load %struct.ncsi_channel**, %struct.ncsi_channel*** %8, align 8
  store %struct.ncsi_channel* %34, %struct.ncsi_channel** %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  ret void
}

declare dso_local %struct.ncsi_package* @ncsi_find_package(%struct.ncsi_dev_priv*, i32) #1

declare dso_local i32 @NCSI_PACKAGE_INDEX(i8 zeroext) #1

declare dso_local %struct.ncsi_channel* @ncsi_find_channel(%struct.ncsi_package*, i32) #1

declare dso_local i32 @NCSI_CHANNEL_INDEX(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

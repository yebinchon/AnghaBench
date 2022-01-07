; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr_base.c_mr_mfc_uses_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr_base.c_mr_mfc_uses_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { %struct.vif_device* }
%struct.vif_device = type { %struct.net_device* }
%struct.mr_mfc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, %struct.mr_mfc*, %struct.net_device*)* @mr_mfc_uses_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mr_mfc_uses_dev(%struct.mr_table* %0, %struct.mr_mfc* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mr_table*, align 8
  %6 = alloca %struct.mr_mfc*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_device*, align 8
  store %struct.mr_table* %0, %struct.mr_table** %5, align 8
  store %struct.mr_mfc* %1, %struct.mr_mfc** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %10 = load %struct.mr_mfc*, %struct.mr_mfc** %6, align 8
  %11 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %54, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.mr_mfc*, %struct.mr_mfc** %6, align 8
  %18 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %15
  %24 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @VIF_EXISTS(%struct.mr_table* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load %struct.mr_mfc*, %struct.mr_mfc** %6, align 8
  %30 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 255
  br i1 %38, label %39, label %53

39:                                               ; preds = %28
  %40 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %41 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %40, i32 0, i32 0
  %42 = load %struct.vif_device*, %struct.vif_device** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %42, i64 %44
  store %struct.vif_device* %45, %struct.vif_device** %9, align 8
  %46 = load %struct.vif_device*, %struct.vif_device** %9, align 8
  %47 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %46, i32 0, i32 0
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = icmp eq %struct.net_device* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %58

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %28, %23
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %15

57:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @VIF_EXISTS(%struct.mr_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

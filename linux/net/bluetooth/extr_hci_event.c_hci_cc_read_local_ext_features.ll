; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_local_ext_features.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_local_ext_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32*, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_local_ext_features = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_MAX_PAGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_local_ext_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_local_ext_features(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_local_ext_features*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.hci_rp_read_local_ext_features*
  store %struct.hci_rp_read_local_ext_features* %10, %struct.hci_rp_read_local_ext_features** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hci_rp_read_local_ext_features*, %struct.hci_rp_read_local_ext_features** %5, align 8
  %15 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, %struct.hci_rp_read_local_ext_features* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  %18 = load %struct.hci_rp_read_local_ext_features*, %struct.hci_rp_read_local_ext_features** %5, align 8
  %19 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, %struct.hci_rp_read_local_ext_features* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.hci_rp_read_local_ext_features*, %struct.hci_rp_read_local_ext_features** %5, align 8
  %28 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, %struct.hci_rp_read_local_ext_features* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.hci_rp_read_local_ext_features*, %struct.hci_rp_read_local_ext_features** %5, align 8
  %33 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, %struct.hci_rp_read_local_ext_features* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.hci_rp_read_local_ext_features*, %struct.hci_rp_read_local_ext_features** %5, align 8
  %39 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, %struct.hci_rp_read_local_ext_features* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HCI_MAX_PAGES, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.hci_rp_read_local_ext_features*, %struct.hci_rp_read_local_ext_features** %5, align 8
  %48 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, %struct.hci_rp_read_local_ext_features* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hci_rp_read_local_ext_features*, %struct.hci_rp_read_local_ext_features** %5, align 8
  %53 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, %struct.hci_rp_read_local_ext_features* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i32 %51, i32 %54, i32 8)
  br label %56

56:                                               ; preds = %22, %43, %37
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

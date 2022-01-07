; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_set_event_mask_page_2.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_set_event_mask_page_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32* }

@HCI_LE_PING = common dso_local global i32 0, align 4
@HCI_OP_SET_EVENT_MASK_PAGE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*)* @hci_set_event_mask_page_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_set_event_mask_page_2(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %6 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %7 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %6, i32 0, i32 0
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %3, align 8
  %9 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 32, i1 false)
  store i32 0, i32* %5, align 4
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = call i64 @lmp_csb_master_capable(%struct.hci_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, 64
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, 128
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, 16
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, 32
  store i32 %25, i32* %23, align 8
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %13, %1
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = call i64 @lmp_csb_slave_capable(%struct.hci_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, 2
  store i32 %36, i32* %34, align 8
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, 4
  store i32 %39, i32* %37, align 8
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, 8
  store i32 %42, i32* %40, align 8
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %30, %26
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = call i64 @lmp_ping_capable(%struct.hci_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HCI_LE_PING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47, %43
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, 128
  store i32 %59, i32* %57, align 8
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %47
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %65 = load i32, i32* @HCI_OP_SET_EVENT_MASK_PAGE_2, align 4
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %67 = call i32 @hci_req_add(%struct.hci_request* %64, i32 %65, i32 32, i32* %66)
  br label %68

68:                                               ; preds = %63, %60
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @lmp_csb_master_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_csb_slave_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_ping_capable(%struct.hci_dev*) #2

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

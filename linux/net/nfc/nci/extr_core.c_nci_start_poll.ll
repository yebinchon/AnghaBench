; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_start_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_start_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nci_dev = type { i32, i32, i64 }
%struct.nci_rf_discover_param = type { i32, i32 }

@NCI_DISCOVERY = common dso_local global i64 0, align 8
@NCI_W4_ALL_DISCOVERIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"unable to start poll, since poll is already active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"there is an active target\0A\00", align 1
@NCI_W4_HOST_SELECT = common dso_local global i64 0, align 8
@NCI_POLL_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"target active or w4 select, implicitly deactivate\0A\00", align 1
@nci_rf_deactivate_req = common dso_local global i32 0, align 4
@NCI_DEACTIVATE_TYPE_IDLE_MODE = common dso_local global i64 0, align 8
@NCI_RF_DEACTIVATE_TIMEOUT = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to set local general bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to set listen parameters\0A\00", align 1
@nci_rf_discover_req = common dso_local global i32 0, align 4
@NCI_RF_DISC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i32, i32)* @nci_start_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_start_poll(%struct.nfc_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nci_dev*, align 8
  %9 = alloca %struct.nci_rf_discover_param, align 4
  %10 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %12 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %11)
  store %struct.nci_dev* %12, %struct.nci_dev** %8, align 8
  %13 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %14 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %13, i32 0, i32 1
  %15 = call i64 @atomic_read(i32* %14)
  %16 = load i64, i64* @NCI_DISCOVERY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %20 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %19, i32 0, i32 1
  %21 = call i64 @atomic_read(i32* %20)
  %22 = load i64, i64* @NCI_W4_ALL_DISCOVERIES, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %3
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %111

28:                                               ; preds = %18
  %29 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %30 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %111

37:                                               ; preds = %28
  %38 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %39 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %38, i32 0, i32 1
  %40 = call i64 @atomic_read(i32* %39)
  %41 = load i64, i64* @NCI_W4_HOST_SELECT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %45 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %44, i32 0, i32 1
  %46 = call i64 @atomic_read(i32* %45)
  %47 = load i64, i64* @NCI_POLL_ACTIVE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43, %37
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %52 = load i32, i32* @nci_rf_deactivate_req, align 4
  %53 = load i64, i64* @NCI_DEACTIVATE_TYPE_IDLE_MODE, align 8
  %54 = load i32, i32* @NCI_RF_DEACTIVATE_TIMEOUT, align 4
  %55 = call i32 @msecs_to_jiffies(i32 %54)
  %56 = call i32 @nci_request(%struct.nci_dev* %51, i32 %52, i64 %53, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %111

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %72 = call i32 @nci_set_local_general_bytes(%struct.nfc_dev* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %111

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %86 = call i32 @nci_set_listen_parameters(%struct.nfc_dev* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32, i32* %6, align 4
  %94 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %9, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = getelementptr inbounds %struct.nci_rf_discover_param, %struct.nci_rf_discover_param* %9, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %98 = load i32, i32* @nci_rf_discover_req, align 4
  %99 = ptrtoint %struct.nci_rf_discover_param* %9 to i64
  %100 = load i32, i32* @NCI_RF_DISC_TIMEOUT, align 4
  %101 = call i32 @msecs_to_jiffies(i32 %100)
  %102 = call i32 @nci_request(%struct.nci_dev* %97, i32 %98, i64 %99, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %108 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %92
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %75, %59, %33, %24
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nci_request(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nci_set_local_general_bytes(%struct.nfc_dev*) #1

declare dso_local i32 @nci_set_listen_parameters(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_setup_sync.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_setup_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sco_param = type { i32, i32, i32 }
%struct.hci_conn = type { i32, i64, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_setup_sync_conn = type { i8*, i8*, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"hcon %p\00", align 1
@BT_CONNECT = common dso_local global i32 0, align 4
@SCO_AIRMODE_MASK = common dso_local global i32 0, align 4
@esco_param_msbc = common dso_local global %struct.sco_param* null, align 8
@esco_param_cvsd = common dso_local global %struct.sco_param* null, align 8
@sco_param_cvsd = common dso_local global %struct.sco_param* null, align 8
@HCI_OP_SETUP_SYNC_CONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_setup_sync(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.hci_cp_setup_sync_conn, align 8
  %8 = alloca %struct.sco_param*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %10 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %9, i32 0, i32 5
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %6, align 8
  %12 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %12)
  %14 = load i32, i32* @BT_CONNECT, align 4
  %15 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %20 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, %struct.hci_cp_setup_sync_conn* %7, i32 0, i32 6
  store i8* %24, i8** %25, align 8
  %26 = call i8* @cpu_to_le32(i32 8000)
  %27 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, %struct.hci_cp_setup_sync_conn* %7, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = call i8* @cpu_to_le32(i32 8000)
  %29 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, %struct.hci_cp_setup_sync_conn* %7, i32 0, i32 4
  store i8* %28, i8** %29, align 8
  %30 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %31 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, %struct.hci_cp_setup_sync_conn* %7, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %36 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SCO_AIRMODE_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %92 [
    i32 128, label %40
    i32 129, label %55
  ]

40:                                               ; preds = %2
  %41 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sco_param*, %struct.sco_param** @esco_param_msbc, align 8
  %45 = call i64 @ARRAY_SIZE(%struct.sco_param* %44)
  %46 = icmp ugt i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %114

48:                                               ; preds = %40
  %49 = load %struct.sco_param*, %struct.sco_param** @esco_param_msbc, align 8
  %50 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds %struct.sco_param, %struct.sco_param* %49, i64 %53
  store %struct.sco_param* %54, %struct.sco_param** %8, align 8
  br label %93

55:                                               ; preds = %2
  %56 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lmp_esco_capable(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %63 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.sco_param*, %struct.sco_param** @esco_param_cvsd, align 8
  %66 = call i64 @ARRAY_SIZE(%struct.sco_param* %65)
  %67 = icmp ugt i64 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %114

69:                                               ; preds = %61
  %70 = load %struct.sco_param*, %struct.sco_param** @esco_param_cvsd, align 8
  %71 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %72 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds %struct.sco_param, %struct.sco_param* %70, i64 %74
  store %struct.sco_param* %75, %struct.sco_param** %8, align 8
  br label %91

76:                                               ; preds = %55
  %77 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %78 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sco_param*, %struct.sco_param** @sco_param_cvsd, align 8
  %81 = call i64 @ARRAY_SIZE(%struct.sco_param* %80)
  %82 = icmp ugt i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %114

84:                                               ; preds = %76
  %85 = load %struct.sco_param*, %struct.sco_param** @sco_param_cvsd, align 8
  %86 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds %struct.sco_param, %struct.sco_param* %85, i64 %89
  store %struct.sco_param* %90, %struct.sco_param** %8, align 8
  br label %91

91:                                               ; preds = %84, %69
  br label %93

92:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

93:                                               ; preds = %91, %48
  %94 = load %struct.sco_param*, %struct.sco_param** %8, align 8
  %95 = getelementptr inbounds %struct.sco_param, %struct.sco_param* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, %struct.hci_cp_setup_sync_conn* %7, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load %struct.sco_param*, %struct.sco_param** %8, align 8
  %99 = getelementptr inbounds %struct.sco_param, %struct.sco_param* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @__cpu_to_le16(i32 %100)
  %102 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, %struct.hci_cp_setup_sync_conn* %7, i32 0, i32 1
  store i8* %101, i8** %102, align 8
  %103 = load %struct.sco_param*, %struct.sco_param** %8, align 8
  %104 = getelementptr inbounds %struct.sco_param, %struct.sco_param* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @__cpu_to_le16(i32 %105)
  %107 = getelementptr inbounds %struct.hci_cp_setup_sync_conn, %struct.hci_cp_setup_sync_conn* %7, i32 0, i32 0
  store i8* %106, i8** %107, align 8
  %108 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %109 = load i32, i32* @HCI_OP_SETUP_SYNC_CONN, align 4
  %110 = call i64 @hci_send_cmd(%struct.hci_dev* %108, i32 %109, i32 56, %struct.hci_cp_setup_sync_conn* %7)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %114

113:                                              ; preds = %93
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %112, %92, %83, %68, %47
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.sco_param*) #1

declare dso_local i32 @lmp_esco_capable(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i64 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_setup_sync_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

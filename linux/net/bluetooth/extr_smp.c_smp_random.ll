; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_random.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, i32, i32, i32, i32, i32, %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"conn %p %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"pairing failed (confirmation values mismatch)\00", align 1
@SMP_CONFIRM_FAILED = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT_PEND = common dso_local global i32 0, align 4
@HCI_CONN_STK_ENCRYPT = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_RANDOM = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@SMP_STK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_chan*)* @smp_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_random(%struct.smp_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smp_chan*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.smp_chan* %0, %struct.smp_chan** %3, align 8
  %15 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %16 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %15, i32 0, i32 7
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %16, align 8
  store %struct.l2cap_conn* %17, %struct.l2cap_conn** %4, align 8
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %19 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %18, i32 0, i32 0
  %20 = load %struct.hci_conn*, %struct.hci_conn** %19, align 8
  store %struct.hci_conn* %20, %struct.hci_conn** %5, align 8
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %23 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %22, i32 0, i32 0
  %24 = load %struct.hci_conn*, %struct.hci_conn** %23, align 8
  %25 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %21, i8* %29)
  %31 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %32 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %35 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %38 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %41 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %44 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 9
  %48 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %52 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %51, i32 0, i32 7
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %54 = call i32 @smp_c1(i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32* %47, i32 %50, i32* %52, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %1
  %58 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %58, i32* %2, align 4
  br label %158

59:                                               ; preds = %1
  %60 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %61 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %64 = call i64 @crypto_memneq(i32 %62, i32* %63, i32 4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %68 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bt_dev_err(i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @SMP_CONFIRM_FAILED, align 4
  store i32 %71, i32* %2, align 4
  br label %158

72:                                               ; preds = %59
  %73 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %74 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %78 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %79 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %82 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %85 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %88 = call i32 @smp_s1(i32 %80, i32 %83, i32 %86, i32* %87)
  %89 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %90 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %91 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %90, i32 0, i32 4
  %92 = call i64 @test_and_set_bit(i32 %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %77
  %95 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %95, i32* %2, align 4
  br label %158

96:                                               ; preds = %77
  %97 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %101 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %102 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @hci_le_start_enc(%struct.hci_conn* %97, i32 %98, i32 %99, i32* %100, i32 %103)
  %105 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %106 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %109 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @HCI_CONN_STK_ENCRYPT, align 4
  %111 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %112 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %111, i32 0, i32 4
  %113 = call i32 @set_bit(i32 %110, i32* %112)
  br label %157

114:                                              ; preds = %72
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %115 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %116 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %117 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %118 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @smp_send_cmd(%struct.l2cap_conn* %115, i32 %116, i32 4, i32 %119)
  %121 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %122 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %125 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %128 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %131 = call i32 @smp_s1(i32 %123, i32 %126, i32 %129, i32* %130)
  %132 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %133 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %114
  store i32 1, i32* %12, align 4
  br label %139

138:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %138, %137
  %140 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %141 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %144 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %143, i32 0, i32 2
  %145 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %146 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SMP_STK, align 4
  %149 = load i32, i32* %12, align 4
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %151 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %152 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @hci_add_ltk(i32 %142, i32* %144, i32 %147, i32 %148, i32 %149, i32* %150, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %139, %96
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %94, %66, %57
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*, i8*) #1

declare dso_local i32 @smp_c1(i32, i32, i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @crypto_memneq(i32, i32*, i32) #1

declare dso_local i32 @bt_dev_err(i32, i8*) #1

declare dso_local i32 @smp_s1(i32, i32, i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hci_le_start_enc(%struct.hci_conn*, i32, i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, i32) #1

declare dso_local i32 @hci_add_ltk(i32, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

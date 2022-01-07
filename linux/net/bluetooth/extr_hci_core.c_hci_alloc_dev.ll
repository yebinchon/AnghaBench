; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HCI_DM1 = common dso_local global i32 0, align 4
@HCI_DH1 = common dso_local global i32 0, align 4
@HCI_HV1 = common dso_local global i32 0, align 4
@ESCO_HV1 = common dso_local global i32 0, align 4
@HCI_LM_ACCEPT = common dso_local global i32 0, align 4
@HCI_TX_POWER_INVALID = common dso_local global i8* null, align 8
@SMP_MAX_ENC_KEY_SIZE = common dso_local global i32 0, align 4
@SMP_MIN_ENC_KEY_SIZE = common dso_local global i32 0, align 4
@HCI_LE_SET_PHY_1M = common dso_local global i8* null, align 8
@HCI_MAX_ADV_INSTANCES = common dso_local global i32 0, align 4
@HCI_DEFAULT_RPA_TIMEOUT = common dso_local global i32 0, align 4
@DISCOV_INTERLEAVED_TIMEOUT = common dso_local global i32 0, align 4
@DEFAULT_CONN_INFO_MIN_AGE = common dso_local global i32 0, align 4
@DEFAULT_CONN_INFO_MAX_AGE = common dso_local global i32 0, align 4
@DEFAULT_AUTH_PAYLOAD_TIMEOUT = common dso_local global i32 0, align 4
@HCI_MIN_ENC_KEY_SIZE = common dso_local global i32 0, align 4
@hci_rx_work = common dso_local global i32 0, align 4
@hci_cmd_work = common dso_local global i32 0, align 4
@hci_tx_work = common dso_local global i32 0, align 4
@hci_power_on = common dso_local global i32 0, align 4
@hci_error_reset = common dso_local global i32 0, align 4
@hci_power_off = common dso_local global i32 0, align 4
@hci_cmd_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_dev* @hci_alloc_dev() #0 {
  %1 = alloca %struct.hci_dev*, align 8
  %2 = alloca %struct.hci_dev*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.hci_dev* @kzalloc(i32 296, i32 %3)
  store %struct.hci_dev* %4, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = icmp ne %struct.hci_dev* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.hci_dev* null, %struct.hci_dev** %1, align 8
  br label %206

8:                                                ; preds = %0
  %9 = load i32, i32* @HCI_DM1, align 4
  %10 = load i32, i32* @HCI_DH1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HCI_HV1, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @ESCO_HV1, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 66
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @HCI_LM_ACCEPT, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 65
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 2
  store i32 3, i32* %25, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 3
  store i32 65535, i32* %27, align 4
  %28 = load i8*, i8** @HCI_TX_POWER_INVALID, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 64
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @HCI_TX_POWER_INVALID, align 8
  %32 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 63
  store i8* %31, i8** %33, align 8
  %34 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 62
  store i64 0, i64* %35, align 8
  %36 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 61
  store i64 0, i64* %39, align 8
  %40 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 5
  store i32 800, i32* %41, align 4
  %42 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 6
  store i32 80, i32* %43, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 7
  store i32 7, i32* %45, align 4
  %46 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 8
  store i32 2048, i32* %47, align 8
  %48 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 9
  store i32 2048, i32* %49, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 10
  store i32 96, i32* %51, align 8
  %52 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 11
  store i32 48, i32* %53, align 4
  %54 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 12
  store i32 24, i32* %55, align 8
  %56 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 13
  store i32 40, i32* %57, align 4
  %58 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 14
  store i32 0, i32* %59, align 8
  %60 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 15
  store i32 42, i32* %61, align 4
  %62 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 16
  store i32 27, i32* %63, align 8
  %64 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 17
  store i32 328, i32* %65, align 4
  %66 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 18
  store i32 27, i32* %67, align 8
  %68 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 19
  store i32 328, i32* %69, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 20
  store i32 27, i32* %71, align 8
  %72 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %73 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %72, i32 0, i32 21
  store i32 328, i32* %73, align 4
  %74 = load i32, i32* @SMP_MAX_ENC_KEY_SIZE, align 4
  %75 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 60
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @SMP_MIN_ENC_KEY_SIZE, align 4
  %78 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 59
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** @HCI_LE_SET_PHY_1M, align 8
  %81 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 58
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @HCI_LE_SET_PHY_1M, align 8
  %84 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 57
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @HCI_MAX_ADV_INSTANCES, align 4
  %87 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 56
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @HCI_DEFAULT_RPA_TIMEOUT, align 4
  %90 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 55
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @DISCOV_INTERLEAVED_TIMEOUT, align 4
  %93 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %94 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %93, i32 0, i32 54
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @DEFAULT_CONN_INFO_MIN_AGE, align 4
  %96 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %97 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %96, i32 0, i32 53
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @DEFAULT_CONN_INFO_MAX_AGE, align 4
  %99 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %100 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %99, i32 0, i32 52
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @DEFAULT_AUTH_PAYLOAD_TIMEOUT, align 4
  %102 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %103 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %102, i32 0, i32 51
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @HCI_MIN_ENC_KEY_SIZE, align 4
  %105 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %106 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %105, i32 0, i32 50
  store i32 %104, i32* %106, align 8
  %107 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %108 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %107, i32 0, i32 49
  %109 = call i32 @mutex_init(i32* %108)
  %110 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %111 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %110, i32 0, i32 48
  %112 = call i32 @mutex_init(i32* %111)
  %113 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %114 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %113, i32 0, i32 47
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 46
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 45
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %123 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %122, i32 0, i32 44
  %124 = call i32 @INIT_LIST_HEAD(i32* %123)
  %125 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %126 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %125, i32 0, i32 43
  %127 = call i32 @INIT_LIST_HEAD(i32* %126)
  %128 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %129 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %128, i32 0, i32 42
  %130 = call i32 @INIT_LIST_HEAD(i32* %129)
  %131 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %132 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %131, i32 0, i32 41
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  %134 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %135 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %134, i32 0, i32 40
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %138 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %137, i32 0, i32 39
  %139 = call i32 @INIT_LIST_HEAD(i32* %138)
  %140 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %141 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %140, i32 0, i32 38
  %142 = call i32 @INIT_LIST_HEAD(i32* %141)
  %143 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %144 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %143, i32 0, i32 37
  %145 = call i32 @INIT_LIST_HEAD(i32* %144)
  %146 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %147 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %146, i32 0, i32 36
  %148 = call i32 @INIT_LIST_HEAD(i32* %147)
  %149 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %150 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %149, i32 0, i32 35
  %151 = call i32 @INIT_LIST_HEAD(i32* %150)
  %152 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %153 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %152, i32 0, i32 34
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = call i32 @INIT_LIST_HEAD(i32* %154)
  %156 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %157 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %156, i32 0, i32 33
  %158 = call i32 @INIT_LIST_HEAD(i32* %157)
  %159 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %160 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %159, i32 0, i32 32
  %161 = load i32, i32* @hci_rx_work, align 4
  %162 = call i32 @INIT_WORK(i32* %160, i32 %161)
  %163 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %164 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %163, i32 0, i32 31
  %165 = load i32, i32* @hci_cmd_work, align 4
  %166 = call i32 @INIT_WORK(i32* %164, i32 %165)
  %167 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %168 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %167, i32 0, i32 30
  %169 = load i32, i32* @hci_tx_work, align 4
  %170 = call i32 @INIT_WORK(i32* %168, i32 %169)
  %171 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %172 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %171, i32 0, i32 29
  %173 = load i32, i32* @hci_power_on, align 4
  %174 = call i32 @INIT_WORK(i32* %172, i32 %173)
  %175 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %176 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %175, i32 0, i32 28
  %177 = load i32, i32* @hci_error_reset, align 4
  %178 = call i32 @INIT_WORK(i32* %176, i32 %177)
  %179 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %180 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %179, i32 0, i32 27
  %181 = load i32, i32* @hci_power_off, align 4
  %182 = call i32 @INIT_DELAYED_WORK(i32* %180, i32 %181)
  %183 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %184 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %183, i32 0, i32 26
  %185 = call i32 @skb_queue_head_init(i32* %184)
  %186 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %187 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %186, i32 0, i32 25
  %188 = call i32 @skb_queue_head_init(i32* %187)
  %189 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %190 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %189, i32 0, i32 24
  %191 = call i32 @skb_queue_head_init(i32* %190)
  %192 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %193 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %192, i32 0, i32 23
  %194 = call i32 @init_waitqueue_head(i32* %193)
  %195 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %196 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %195, i32 0, i32 22
  %197 = load i32, i32* @hci_cmd_timeout, align 4
  %198 = call i32 @INIT_DELAYED_WORK(i32* %196, i32 %197)
  %199 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %200 = call i32 @hci_request_setup(%struct.hci_dev* %199)
  %201 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %202 = call i32 @hci_init_sysfs(%struct.hci_dev* %201)
  %203 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %204 = call i32 @discovery_init(%struct.hci_dev* %203)
  %205 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  store %struct.hci_dev* %205, %struct.hci_dev** %1, align 8
  br label %206

206:                                              ; preds = %8, %7
  %207 = load %struct.hci_dev*, %struct.hci_dev** %1, align 8
  ret %struct.hci_dev* %207
}

declare dso_local %struct.hci_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @hci_request_setup(%struct.hci_dev*) #1

declare dso_local i32 @hci_init_sysfs(%struct.hci_dev*) #1

declare dso_local i32 @discovery_init(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

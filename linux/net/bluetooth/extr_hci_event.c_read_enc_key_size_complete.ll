; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_read_enc_key_size_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_read_enc_key_size_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hci_rp_read_enc_key_size = type { i32, i64, i32 }
%struct.hci_conn = type { i64, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s status 0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid read key size response\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to read key size for handle %u\00", align 1
@HCI_LINK_KEY_SIZE = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@HCI_CONN_ENCRYPT = common dso_local global i32 0, align 4
@HCI_CONN_AES_CCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32, %struct.sk_buff*)* @read_enc_key_size_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_enc_key_size_complete(%struct.hci_dev* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hci_rp_read_enc_key_size*, align 8
  %10 = alloca %struct.hci_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %28 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %103

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.hci_rp_read_enc_key_size*
  store %struct.hci_rp_read_enc_key_size* %34, %struct.hci_rp_read_enc_key_size** %9, align 8
  %35 = load %struct.hci_rp_read_enc_key_size*, %struct.hci_rp_read_enc_key_size** %9, align 8
  %36 = getelementptr inbounds %struct.hci_rp_read_enc_key_size, %struct.hci_rp_read_enc_key_size* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %40 = call i32 @hci_dev_lock(%struct.hci_dev* %39)
  %41 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %41, i32 %42)
  store %struct.hci_conn* %43, %struct.hci_conn** %10, align 8
  %44 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %45 = icmp ne %struct.hci_conn* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %29
  br label %100

47:                                               ; preds = %29
  %48 = load %struct.hci_rp_read_enc_key_size*, %struct.hci_rp_read_enc_key_size** %9, align 8
  %49 = getelementptr inbounds %struct.hci_rp_read_enc_key_size, %struct.hci_rp_read_enc_key_size* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @HCI_LINK_KEY_SIZE, align 4
  %57 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %58 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %65

59:                                               ; preds = %47
  %60 = load %struct.hci_rp_read_enc_key_size*, %struct.hci_rp_read_enc_key_size** %9, align 8
  %61 = getelementptr inbounds %struct.hci_rp_read_enc_key_size, %struct.hci_rp_read_enc_key_size* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %64 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %67 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BT_CONFIG, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i64, i64* @BT_CONNECTED, align 8
  %73 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %74 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %76 = call i32 @hci_connect_cfm(%struct.hci_conn* %75, i32 0)
  %77 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %78 = call i32 @hci_conn_drop(%struct.hci_conn* %77)
  br label %99

79:                                               ; preds = %65
  %80 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %81 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %82 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %81, i32 0, i32 1
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  br label %95

86:                                               ; preds = %79
  %87 = load i32, i32* @HCI_CONN_AES_CCM, align 4
  %88 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %89 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %88, i32 0, i32 1
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 2, i32* %12, align 4
  br label %94

93:                                               ; preds = %86
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %93, %92
  br label %95

95:                                               ; preds = %94, %85
  %96 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @hci_encrypt_cfm(%struct.hci_conn* %96, i32 0, i32 %97)
  br label %99

99:                                               ; preds = %95, %71
  br label %100

100:                                              ; preds = %99, %46
  %101 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %102 = call i32 @hci_dev_unlock(%struct.hci_dev* %101)
  br label %103

103:                                              ; preds = %100, %26
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_encrypt_cfm(%struct.hci_conn*, i32, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

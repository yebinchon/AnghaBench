; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_security.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"hcon %p\00", align 1
@LE_LINK = common dso_local global i64 0, align 8
@BT_SECURITY_SDP = common dso_local global i32 0, align 4
@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@HCI_CONN_AUTH = common dso_local global i32 0, align 4
@HCI_LK_AUTH_COMBINATION_P256 = common dso_local global i64 0, align 8
@BT_SECURITY_FIPS = common dso_local global i32 0, align 4
@HCI_LK_AUTH_COMBINATION_P192 = common dso_local global i64 0, align 8
@BT_SECURITY_HIGH = common dso_local global i32 0, align 4
@HCI_LK_UNAUTH_COMBINATION_P192 = common dso_local global i64 0, align 8
@HCI_LK_UNAUTH_COMBINATION_P256 = common dso_local global i64 0, align 8
@BT_SECURITY_MEDIUM = common dso_local global i32 0, align 4
@HCI_LK_COMBINATION = common dso_local global i64 0, align 8
@HCI_CONN_ENCRYPT_PEND = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_INITIATOR = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_conn_security(%struct.hci_conn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %10)
  %12 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LE_LINK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @smp_conn_security(%struct.hci_conn* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %151

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BT_SECURITY_SDP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %151

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BT_SECURITY_LOW, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %32 = call i32 @hci_conn_ssp_enabled(%struct.hci_conn* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %151

35:                                               ; preds = %30, %26
  %36 = load i32, i32* @HCI_CONN_AUTH, align 4
  %37 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 4
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %112

42:                                               ; preds = %35
  %43 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %44 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HCI_LK_AUTH_COMBINATION_P256, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @BT_SECURITY_FIPS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %135

53:                                               ; preds = %48, %42
  %54 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %55 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HCI_LK_AUTH_COMBINATION_P192, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %61 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HCI_LK_AUTH_COMBINATION_P256, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59, %53
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @BT_SECURITY_HIGH, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %135

70:                                               ; preds = %65, %59
  %71 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %72 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HCI_LK_UNAUTH_COMBINATION_P192, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %78 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HCI_LK_UNAUTH_COMBINATION_P256, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76, %70
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @BT_SECURITY_MEDIUM, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @BT_SECURITY_LOW, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %82
  br label %135

91:                                               ; preds = %86, %76
  %92 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %93 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @HCI_LK_COMBINATION, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @BT_SECURITY_MEDIUM, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %110, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @BT_SECURITY_LOW, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %107 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 16
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %101, %97
  br label %135

111:                                              ; preds = %105, %91
  br label %112

112:                                              ; preds = %111, %41
  %113 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %114 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %115 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %114, i32 0, i32 4
  %116 = call i64 @test_bit(i32 %113, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %151

119:                                              ; preds = %112
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* @HCI_CONN_AUTH_INITIATOR, align 4
  %124 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %125 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %124, i32 0, i32 4
  %126 = call i32 @set_bit(i32 %123, i32* %125)
  br label %127

127:                                              ; preds = %122, %119
  %128 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @hci_conn_auth(%struct.hci_conn* %128, i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  br label %151

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %110, %90, %69, %52
  %136 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %137 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %138 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %137, i32 0, i32 4
  %139 = call i64 @test_bit(i32 %136, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %143 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  br label %151

147:                                              ; preds = %141
  store i32 1, i32* %5, align 4
  br label %151

148:                                              ; preds = %135
  %149 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %150 = call i32 @hci_conn_encrypt(%struct.hci_conn* %149)
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %148, %147, %146, %133, %118, %34, %25, %17
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i32 @smp_conn_security(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_ssp_enabled(%struct.hci_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_conn_auth(%struct.hci_conn*, i32, i32) #1

declare dso_local i32 @hci_conn_encrypt(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

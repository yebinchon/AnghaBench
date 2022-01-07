; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_passkey_round.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_passkey_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@SMP_CONFIRM_FAILED = common dso_local global i32 0, align 4
@SMP_CMD_DHKEY_CHECK = common dso_local global i32 0, align 4
@SMP_FLAG_WAIT_USER = common dso_local global i32 0, align 4
@SMP_FLAG_CFM_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s Starting passkey round %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_chan*, i32)* @sc_passkey_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_passkey_round(%struct.smp_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smp_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.smp_chan* %0, %struct.smp_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %12 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %11, i32 0, i32 10
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %12, align 8
  store %struct.l2cap_conn* %13, %struct.l2cap_conn** %6, align 8
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %15 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %14, i32 0, i32 0
  %16 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  store %struct.hci_conn* %16, %struct.hci_conn** %7, align 8
  %17 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 2
  %19 = load %struct.hci_dev*, %struct.hci_dev** %18, align 8
  store %struct.hci_dev* %19, %struct.hci_dev** %8, align 8
  %20 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %21 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 20
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %152 [
    i32 129, label %27
    i32 130, label %124
    i32 128, label %151
  ]

27:                                               ; preds = %25
  %28 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %32 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %30, %33
  %35 = and i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, 128
  store i32 %37, i32* %10, align 4
  %38 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %39 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %42 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %45 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %48 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %52 = call i32 @smp_f4(i32 %40, i32 %43, i32 %46, i32 %49, i32 %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %27
  %55 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %55, i32* %3, align 4
  br label %172

56:                                               ; preds = %27
  %57 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %58 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %61 = call i32 @crypto_memneq(i32 %59, i32* %60, i32 16)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @SMP_CONFIRM_FAILED, align 4
  store i32 %64, i32* %3, align 4
  br label %172

65:                                               ; preds = %56
  %66 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %67 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %71 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 20
  br i1 %73, label %74, label %87

74:                                               ; preds = %65
  %75 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %76 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %77 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %80 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sc_mackey_and_ltk(%struct.smp_chan* %75, i32 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %85, i32* %3, align 4
  br label %172

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %89 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %87
  %93 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %94 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %95 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @smp_send_cmd(%struct.l2cap_conn* %93, i32 129, i32 4, i32 %96)
  %98 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %99 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 20
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %104 = load i32, i32* @SMP_CMD_DHKEY_CHECK, align 4
  %105 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %103, i32 %104)
  br label %109

106:                                              ; preds = %92
  %107 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %108 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %107, i32 130)
  br label %109

109:                                              ; preds = %106, %102
  store i32 0, i32* %3, align 4
  br label %172

110:                                              ; preds = %87
  %111 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %112 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 20
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %117 = call i32 @sc_passkey_round(%struct.smp_chan* %116, i32 0)
  store i32 %117, i32* %3, align 4
  br label %172

118:                                              ; preds = %110
  %119 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %120 = call i32 @sc_dhkey_check(%struct.smp_chan* %119)
  %121 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %122 = load i32, i32* @SMP_CMD_DHKEY_CHECK, align 4
  %123 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %121, i32 %122)
  br label %171

124:                                              ; preds = %25
  %125 = load i32, i32* @SMP_FLAG_WAIT_USER, align 4
  %126 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %127 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %126, i32 0, i32 2
  %128 = call i32 @test_bit(i32 %125, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load i32, i32* @SMP_FLAG_CFM_PENDING, align 4
  %132 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %133 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %132, i32 0, i32 2
  %134 = call i32 @set_bit(i32 %131, i32* %133)
  store i32 0, i32* %3, align 4
  br label %172

135:                                              ; preds = %124
  %136 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %137 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %136, i32 129)
  %138 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %139 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %144 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %145 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @smp_send_cmd(%struct.l2cap_conn* %143, i32 129, i32 4, i32 %146)
  store i32 0, i32* %3, align 4
  br label %172

148:                                              ; preds = %135
  %149 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %150 = call i32 @sc_passkey_send_confirm(%struct.smp_chan* %149)
  store i32 %150, i32* %3, align 4
  br label %172

151:                                              ; preds = %25
  br label %152

152:                                              ; preds = %25, %151
  %153 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %154 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %172

158:                                              ; preds = %152
  %159 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %160 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %163 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  %166 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %161, i32 %165)
  %167 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %168 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %167, i32 130)
  %169 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %170 = call i32 @sc_passkey_send_confirm(%struct.smp_chan* %169)
  store i32 %170, i32* %3, align 4
  br label %172

171:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %158, %157, %148, %142, %130, %115, %109, %84, %63, %54, %24
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @smp_f4(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @crypto_memneq(i32, i32*, i32) #1

declare dso_local i32 @sc_mackey_and_ltk(%struct.smp_chan*, i32, i32) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, i32) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i32 @sc_dhkey_check(%struct.smp_chan*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sc_passkey_send_confirm(%struct.smp_chan*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

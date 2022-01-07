; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_dhkey_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_dhkey_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn*, %struct.l2cap_chan* }
%struct.hci_conn = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.sk_buff = type { i32, i64 }
%struct.smp_cmd_dhkey_check = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SMP_INVALID_PARAMS = common dso_local global i32 0, align 4
@REQ_PASSKEY = common dso_local global i64 0, align 8
@DSP_PASSKEY = common dso_local global i64 0, align 8
@REQ_OOB = common dso_local global i64 0, align 8
@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@SMP_DHKEY_CHECK_FAILED = common dso_local global i32 0, align 4
@SMP_FLAG_WAIT_USER = common dso_local global i32 0, align 4
@SMP_FLAG_DHKEY_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_dhkey_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_cmd_dhkey_check(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smp_cmd_dhkey_check*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca %struct.smp_chan*, align 8
  %10 = alloca [7 x i32], align 16
  %11 = alloca [7 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [3 x i32], align 4
  %15 = alloca [16 x i32], align 16
  %16 = alloca [16 x i32], align 16
  %17 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.smp_cmd_dhkey_check*
  store %struct.smp_cmd_dhkey_check* %22, %struct.smp_cmd_dhkey_check** %6, align 8
  %23 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %24 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %23, i32 0, i32 1
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %24, align 8
  store %struct.l2cap_chan* %25, %struct.l2cap_chan** %7, align 8
  %26 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %27 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %26, i32 0, i32 0
  %28 = load %struct.hci_conn*, %struct.hci_conn** %27, align 8
  store %struct.hci_conn* %28, %struct.hci_conn** %8, align 8
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 0
  %31 = load %struct.smp_chan*, %struct.smp_chan** %30, align 8
  store %struct.smp_chan* %31, %struct.smp_chan** %9, align 8
  %32 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @SMP_INVALID_PARAMS, align 4
  store i32 %40, i32* %3, align 4
  br label %186

41:                                               ; preds = %2
  %42 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  %43 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %44 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %43, i32 0, i32 6
  %45 = call i32 @memcpy(i32* %42, i32* %44, i32 6)
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %47 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 5
  %49 = call i32 @memcpy(i32* %46, i32* %48, i32 6)
  %50 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 6
  store i32 %52, i32* %53, align 8
  %54 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %55 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 6
  store i32 %56, i32* %57, align 8
  %58 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %59 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %41
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  store i32* %63, i32** %12, align 8
  %64 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  store i32* %64, i32** %13, align 8
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %66 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %67 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %66, i32 0, i32 10
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = call i32 @memcpy(i32* %65, i32* %69, i32 3)
  br label %80

71:                                               ; preds = %41
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  store i32* %72, i32** %12, align 8
  %73 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  store i32* %73, i32** %13, align 8
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %75 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %76 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %75, i32 0, i32 9
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = call i32 @memcpy(i32* %74, i32* %78, i32 3)
  br label %80

80:                                               ; preds = %71, %62
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %82 = call i32 @memset(i32* %81, i32 0, i32 64)
  %83 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %84 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @REQ_PASSKEY, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  %89 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %90 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DSP_PASSKEY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88, %80
  %95 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %96 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %99 = call i32 @put_unaligned_le32(i32 %97, i32* %98)
  br label %113

100:                                              ; preds = %88
  %101 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %102 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @REQ_OOB, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %108 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %109 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %108, i32 0, i32 8
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @memcpy(i32* %107, i32* %110, i32 16)
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %94
  %114 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %115 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %118 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %121 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %124 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %128 = load i32*, i32** %13, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %131 = call i32 @smp_f6(i32 %116, i32 %119, i32 %122, i32 %125, i32* %126, i32* %127, i32* %128, i32* %129, i32* %130)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %113
  %135 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %135, i32* %3, align 4
  br label %186

136:                                              ; preds = %113
  %137 = load %struct.smp_cmd_dhkey_check*, %struct.smp_cmd_dhkey_check** %6, align 8
  %138 = getelementptr inbounds %struct.smp_cmd_dhkey_check, %struct.smp_cmd_dhkey_check* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %141 = call i64 @crypto_memneq(i32 %139, i32* %140, i32 16)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @SMP_DHKEY_CHECK_FAILED, align 4
  store i32 %144, i32* %3, align 4
  br label %186

145:                                              ; preds = %136
  %146 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %147 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* @SMP_FLAG_WAIT_USER, align 4
  %152 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %153 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %152, i32 0, i32 3
  %154 = call i64 @test_bit(i32 %151, i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load i32, i32* @SMP_FLAG_DHKEY_PENDING, align 4
  %158 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %159 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %158, i32 0, i32 3
  %160 = call i32 @set_bit(i32 %157, i32* %159)
  store i32 0, i32* %3, align 4
  br label %186

161:                                              ; preds = %150
  %162 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %163 = call i32 @sc_dhkey_check(%struct.smp_chan* %162)
  br label %164

164:                                              ; preds = %161, %145
  %165 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %166 = call i32 @sc_add_ltk(%struct.smp_chan* %165)
  %167 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %168 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %164
  %172 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %173 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %174 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %177 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @hci_le_start_enc(%struct.hci_conn* %172, i32 0, i32 0, i32 %175, i32 %178)
  %180 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %181 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %184 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %171, %164
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %156, %143, %134, %39
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @smp_f6(i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @crypto_memneq(i32, i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sc_dhkey_check(%struct.smp_chan*) #1

declare dso_local i32 @sc_add_ltk(%struct.smp_chan*) #1

declare dso_local i32 @hci_le_start_enc(%struct.hci_conn*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_send_public_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_send_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i64, %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hci_dev* }
%struct.hci_dev = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_dev* }
%struct.smp_dev = type { i64, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SMP_FLAG_LOCAL_OOB = common dso_local global i32 0, align 4
@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@SMP_FLAG_DEBUG_KEY = common dso_local global i32 0, align 4
@HCI_USE_DEBUG_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Using debug keys\00", align 1
@debug_sk = common dso_local global i32 0, align 4
@debug_pk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Local Public Key X: %32phN\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Local Public Key Y: %32phN\00", align 1
@SMP_CMD_PUBLIC_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_chan*)* @sc_send_public_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_send_public_key(%struct.smp_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smp_chan*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.smp_dev*, align 8
  store %struct.smp_chan* %0, %struct.smp_chan** %3, align 8
  %7 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %8 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  store %struct.hci_dev* %13, %struct.hci_dev** %4, align 8
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @SMP_FLAG_LOCAL_OOB, align 4
  %16 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %17 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %16, i32 0, i32 3
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %1
  %21 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 0
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %22, align 8
  store %struct.l2cap_chan* %23, %struct.l2cap_chan** %5, align 8
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %25 = icmp ne %struct.l2cap_chan* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %28 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %27, i32 0, i32 0
  %29 = load %struct.smp_dev*, %struct.smp_dev** %28, align 8
  %30 = icmp ne %struct.smp_dev* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %32, i32* %2, align 4
  br label %127

33:                                               ; preds = %26
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 0
  %36 = load %struct.smp_dev*, %struct.smp_dev** %35, align 8
  store %struct.smp_dev* %36, %struct.smp_dev** %6, align 8
  %37 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %38 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.smp_dev*, %struct.smp_dev** %6, align 8
  %41 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i64 %39, i32 %42, i32 64)
  %44 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %45 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.smp_dev*, %struct.smp_dev** %6, align 8
  %48 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memcpy(i64 %46, i32 %49, i32 16)
  %51 = load %struct.smp_dev*, %struct.smp_dev** %6, align 8
  %52 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %33
  %56 = load i32, i32* @SMP_FLAG_DEBUG_KEY, align 4
  %57 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %58 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %57, i32 0, i32 3
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %55, %33
  br label %109

61:                                               ; preds = %1
  %62 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %63 = load i32, i32* @HCI_USE_DEBUG_KEYS, align 4
  %64 = call i64 @hci_dev_test_flag(%struct.hci_dev* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %69 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @debug_sk, align 4
  %72 = call i64 @set_ecdh_privkey(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %75, i32* %2, align 4
  br label %127

76:                                               ; preds = %66
  %77 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %78 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @debug_pk, align 4
  %81 = call i32 @memcpy(i64 %79, i32 %80, i32 64)
  %82 = load i32, i32* @SMP_FLAG_DEBUG_KEY, align 4
  %83 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %84 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %83, i32 0, i32 3
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  br label %108

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %86, %106
  %88 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %89 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %92 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @generate_ecdh_keys(i32 %90, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %97, i32* %2, align 4
  br label %127

98:                                               ; preds = %87
  %99 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %100 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @debug_pk, align 4
  %103 = call i64 @crypto_memneq(i64 %101, i32 %102, i32 64)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %107

106:                                              ; preds = %98
  br label %87

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %76
  br label %109

109:                                              ; preds = %108, %60
  %110 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %111 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @SMP_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %115 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 32
  %118 = call i32 @SMP_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %117)
  %119 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %120 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* @SMP_CMD_PUBLIC_KEY, align 4
  %123 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %124 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @smp_send_cmd(%struct.TYPE_4__* %121, i32 %122, i32 64, i64 %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %109, %96, %74, %31
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @set_ecdh_privkey(i32, i32) #1

declare dso_local i64 @generate_ecdh_keys(i32, i64) #1

declare dso_local i64 @crypto_memneq(i64, i32, i32) #1

declare dso_local i32 @SMP_DBG(i8*, i64) #1

declare dso_local i32 @smp_send_cmd(%struct.TYPE_4__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_add_cid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_add_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32*, i32, i32, i32, i32, i32, %struct.smp_dev* }
%struct.smp_dev = type { i32, %struct.crypto_shash*, %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.hci_dev = type { i32 }
%struct.crypto_kpp = type opaque

@L2CAP_CID_SMP_BREDR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to create CMAC crypto context\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ecdh\00", align 1
@CRYPTO_ALG_INTERNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to create ECDH crypto context\00", align 1
@L2CAP_CID_SMP = common dso_local global i32 0, align 4
@ADDR_LE_DEV_PUBLIC = common dso_local global i64 0, align 8
@BDADDR_LE_PUBLIC = common dso_local global i32 0, align 4
@BDADDR_LE_RANDOM = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i32 0, align 4
@BT_LISTEN = common dso_local global i32 0, align 4
@L2CAP_MODE_BASIC = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MTU = common dso_local global i32 0, align 4
@smp_root_chan_ops = common dso_local global i32 0, align 4
@L2CAP_NESTING_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2cap_chan* (%struct.hci_dev*, i32)* @smp_add_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2cap_chan* @smp_add_cid(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca %struct.smp_dev*, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca %struct.crypto_kpp*, align 8
  %10 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @L2CAP_CID_SMP_BREDR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.smp_dev* null, %struct.smp_dev** %7, align 8
  br label %62

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.smp_dev* @kzalloc(i32 24, i32 %16)
  store %struct.smp_dev* %17, %struct.smp_dev** %7, align 8
  %18 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %19 = icmp ne %struct.smp_dev* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.l2cap_chan* @ERR_PTR(i32 %22)
  store %struct.l2cap_chan* %23, %struct.l2cap_chan** %3, align 8
  br label %139

24:                                               ; preds = %15
  %25 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %25, %struct.crypto_shash** %8, align 8
  %26 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %27 = call i64 @IS_ERR(%struct.crypto_shash* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = call i32 @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %32 = call i32 @kzfree(%struct.smp_dev* %31)
  %33 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %34 = call %struct.l2cap_chan* @ERR_CAST(%struct.crypto_shash* %33)
  store %struct.l2cap_chan* %34, %struct.l2cap_chan** %3, align 8
  br label %139

35:                                               ; preds = %24
  %36 = load i32, i32* @CRYPTO_ALG_INTERNAL, align 4
  %37 = call %struct.crypto_shash* @crypto_alloc_kpp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 0)
  %38 = bitcast %struct.crypto_shash* %37 to %struct.crypto_kpp*
  store %struct.crypto_kpp* %38, %struct.crypto_kpp** %9, align 8
  %39 = load %struct.crypto_kpp*, %struct.crypto_kpp** %9, align 8
  %40 = bitcast %struct.crypto_kpp* %39 to %struct.crypto_shash*
  %41 = call i64 @IS_ERR(%struct.crypto_shash* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = call i32 @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %46 = call i32 @crypto_free_shash(%struct.crypto_shash* %45)
  %47 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %48 = call i32 @kzfree(%struct.smp_dev* %47)
  %49 = load %struct.crypto_kpp*, %struct.crypto_kpp** %9, align 8
  %50 = bitcast %struct.crypto_kpp* %49 to %struct.crypto_shash*
  %51 = call %struct.l2cap_chan* @ERR_CAST(%struct.crypto_shash* %50)
  store %struct.l2cap_chan* %51, %struct.l2cap_chan** %3, align 8
  br label %139

52:                                               ; preds = %35
  %53 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %54 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %56 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %57 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %56, i32 0, i32 2
  store %struct.crypto_shash* %55, %struct.crypto_shash** %57, align 8
  %58 = load %struct.crypto_kpp*, %struct.crypto_kpp** %9, align 8
  %59 = bitcast %struct.crypto_kpp* %58 to %struct.crypto_shash*
  %60 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %61 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %60, i32 0, i32 1
  store %struct.crypto_shash* %59, %struct.crypto_shash** %61, align 8
  br label %62

62:                                               ; preds = %52, %14
  %63 = call %struct.l2cap_chan* (...) @l2cap_chan_create()
  store %struct.l2cap_chan* %63, %struct.l2cap_chan** %6, align 8
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %65 = icmp ne %struct.l2cap_chan* %64, null
  br i1 %65, label %84, label %66

66:                                               ; preds = %62
  %67 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %68 = icmp ne %struct.smp_dev* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %71 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %70, i32 0, i32 2
  %72 = load %struct.crypto_shash*, %struct.crypto_shash** %71, align 8
  %73 = call i32 @crypto_free_shash(%struct.crypto_shash* %72)
  %74 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %75 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %74, i32 0, i32 1
  %76 = load %struct.crypto_shash*, %struct.crypto_shash** %75, align 8
  %77 = call i32 @crypto_free_kpp(%struct.crypto_shash* %76)
  %78 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %79 = call i32 @kzfree(%struct.smp_dev* %78)
  br label %80

80:                                               ; preds = %69, %66
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.l2cap_chan* @ERR_PTR(i32 %82)
  store %struct.l2cap_chan* %83, %struct.l2cap_chan** %3, align 8
  br label %139

84:                                               ; preds = %62
  %85 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  %86 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %87 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %86, i32 0, i32 7
  store %struct.smp_dev* %85, %struct.smp_dev** %87, align 8
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @l2cap_add_scid(%struct.l2cap_chan* %88, i32 %89)
  %91 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %92 = call i32 @l2cap_chan_set_defaults(%struct.l2cap_chan* %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @L2CAP_CID_SMP, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %84
  %97 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %98 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %99 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %98, i32 0, i32 6
  %100 = call i32 @hci_copy_identity_address(%struct.hci_dev* %97, i32* %99, i64* %10)
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @ADDR_LE_DEV_PUBLIC, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load i32, i32* @BDADDR_LE_PUBLIC, align 4
  %106 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %107 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  br label %112

108:                                              ; preds = %96
  %109 = load i32, i32* @BDADDR_LE_RANDOM, align 4
  %110 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %111 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %104
  br label %122

113:                                              ; preds = %84
  %114 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %115 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %114, i32 0, i32 6
  %116 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 0
  %118 = call i32 @bacpy(i32* %115, i32* %117)
  %119 = load i32, i32* @BDADDR_BREDR, align 4
  %120 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %121 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %113, %112
  %123 = load i32, i32* @BT_LISTEN, align 4
  %124 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %125 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @L2CAP_MODE_BASIC, align 4
  %127 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %128 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @L2CAP_DEFAULT_MTU, align 4
  %130 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %131 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %133 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %132, i32 0, i32 1
  store i32* @smp_root_chan_ops, i32** %133, align 8
  %134 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %135 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %134, i32 0, i32 0
  %136 = load i32, i32* @L2CAP_NESTING_PARENT, align 4
  %137 = call i32 @atomic_set(i32* %135, i32 %136)
  %138 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  store %struct.l2cap_chan* %138, %struct.l2cap_chan** %3, align 8
  br label %139

139:                                              ; preds = %122, %80, %43, %29, %20
  %140 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  ret %struct.l2cap_chan* %140
}

declare dso_local %struct.smp_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.l2cap_chan* @ERR_PTR(i32) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @kzfree(%struct.smp_dev*) #1

declare dso_local %struct.l2cap_chan* @ERR_CAST(%struct.crypto_shash*) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_kpp(i8*, i32, i32) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

declare dso_local %struct.l2cap_chan* @l2cap_chan_create(...) #1

declare dso_local i32 @crypto_free_kpp(%struct.crypto_shash*) #1

declare dso_local i32 @l2cap_add_scid(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_set_defaults(%struct.l2cap_chan*) #1

declare dso_local i32 @hci_copy_identity_address(%struct.hci_dev*, i32*, i64*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_chan_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_chan_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn*, %struct.l2cap_chan* }
%struct.hci_conn = type { i32 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32, %struct.smp_chan*, %struct.smp_chan*, %struct.smp_chan*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@SMP_FLAG_COMPLETE = common dso_local global i32 0, align 4
@SMP_LTK_P256_DEBUG = common dso_local global i64 0, align 8
@HCI_KEEP_DEBUG_KEYS = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*)* @smp_chan_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_chan_destroy(%struct.l2cap_conn* %0) #0 {
  %2 = alloca %struct.l2cap_conn*, align 8
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.smp_chan*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %2, align 8
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %8 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %7, i32 0, i32 1
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  store %struct.l2cap_chan* %9, %struct.l2cap_chan** %3, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 0
  %12 = load %struct.smp_chan*, %struct.smp_chan** %11, align 8
  store %struct.smp_chan* %12, %struct.smp_chan** %4, align 8
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %14 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %13, i32 0, i32 0
  %15 = load %struct.hci_conn*, %struct.hci_conn** %14, align 8
  store %struct.hci_conn* %15, %struct.hci_conn** %5, align 8
  %16 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %17 = icmp ne %struct.smp_chan* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %22 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %21, i32 0, i32 9
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load i32, i32* @SMP_FLAG_COMPLETE, align 4
  %25 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %26 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %25, i32 0, i32 8
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mgmt_smp_complete(%struct.hci_conn* %28, i32 %29)
  %31 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %32 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %31, i32 0, i32 7
  %33 = load %struct.smp_chan*, %struct.smp_chan** %32, align 8
  %34 = call i32 @kzfree(%struct.smp_chan* %33)
  %35 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %36 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %35, i32 0, i32 6
  %37 = load %struct.smp_chan*, %struct.smp_chan** %36, align 8
  %38 = call i32 @kzfree(%struct.smp_chan* %37)
  %39 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %40 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %39, i32 0, i32 5
  %41 = load %struct.smp_chan*, %struct.smp_chan** %40, align 8
  %42 = call i32 @kzfree(%struct.smp_chan* %41)
  %43 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %44 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @crypto_free_shash(i32 %45)
  %47 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %48 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @crypto_free_kpp(i32 %49)
  %51 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %52 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %83

55:                                               ; preds = %1
  %56 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %57 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SMP_LTK_P256_DEBUG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %55
  %64 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %65 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @HCI_KEEP_DEBUG_KEYS, align 4
  %68 = call i32 @hci_dev_test_flag(i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %63
  %71 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %72 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = call i32 @list_del_rcu(i32* %74)
  %76 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %77 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* @rcu, align 4
  %80 = call i32 @kfree_rcu(%struct.TYPE_2__* %78, i32 %79)
  %81 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %82 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %81, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %82, align 8
  br label %83

83:                                               ; preds = %70, %63, %55, %1
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %135, label %86

86:                                               ; preds = %83
  %87 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %88 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = icmp ne %struct.TYPE_2__* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %93 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = call i32 @list_del_rcu(i32* %95)
  %97 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %98 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* @rcu, align 4
  %101 = call i32 @kfree_rcu(%struct.TYPE_2__* %99, i32 %100)
  br label %102

102:                                              ; preds = %91, %86
  %103 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %104 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = icmp ne %struct.TYPE_2__* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %109 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = call i32 @list_del_rcu(i32* %111)
  %113 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %114 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* @rcu, align 4
  %117 = call i32 @kfree_rcu(%struct.TYPE_2__* %115, i32 %116)
  br label %118

118:                                              ; preds = %107, %102
  %119 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %120 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = icmp ne %struct.TYPE_2__* %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %125 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = call i32 @list_del_rcu(i32* %127)
  %129 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %130 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* @rcu, align 4
  %133 = call i32 @kfree_rcu(%struct.TYPE_2__* %131, i32 %132)
  br label %134

134:                                              ; preds = %123, %118
  br label %135

135:                                              ; preds = %134, %83
  %136 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %137 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %136, i32 0, i32 0
  store %struct.smp_chan* null, %struct.smp_chan** %137, align 8
  %138 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %139 = call i32 @kzfree(%struct.smp_chan* %138)
  %140 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %141 = call i32 @hci_conn_drop(%struct.hci_conn* %140)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mgmt_smp_complete(%struct.hci_conn*, i32) #1

declare dso_local i32 @kzfree(%struct.smp_chan*) #1

declare dso_local i32 @crypto_free_shash(i32) #1

declare dso_local i32 @crypto_free_kpp(i32) #1

declare dso_local i32 @hci_dev_test_flag(i32, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

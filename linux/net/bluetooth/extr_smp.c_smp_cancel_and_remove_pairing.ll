; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cancel_and_remove_pairing.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cancel_and_remove_pairing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_conn = type { %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i32, i32*, i32*, i32* }

@SMP_FLAG_COMPLETE = common dso_local global i32 0, align 4
@SMP_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_cancel_and_remove_pairing(%struct.hci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca %struct.l2cap_conn*, align 8
  %9 = alloca %struct.l2cap_chan*, align 8
  %10 = alloca %struct.smp_chan*, align 8
  %11 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @hci_remove_ltk(%struct.hci_dev* %12, i32* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @hci_remove_irk(%struct.hci_dev* %16, i32* %17, i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev* %20, i32* %21, i32 %22)
  store %struct.hci_conn* %23, %struct.hci_conn** %7, align 8
  %24 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %25 = icmp ne %struct.hci_conn* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %72

27:                                               ; preds = %3
  %28 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 0
  %30 = load %struct.l2cap_conn*, %struct.l2cap_conn** %29, align 8
  store %struct.l2cap_conn* %30, %struct.l2cap_conn** %8, align 8
  %31 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %32 = icmp ne %struct.l2cap_conn* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %72

34:                                               ; preds = %27
  %35 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %36 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %35, i32 0, i32 0
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %36, align 8
  store %struct.l2cap_chan* %37, %struct.l2cap_chan** %9, align 8
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %39 = icmp ne %struct.l2cap_chan* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %72

41:                                               ; preds = %34
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %43 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %42)
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %45 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %44, i32 0, i32 0
  %46 = load %struct.smp_chan*, %struct.smp_chan** %45, align 8
  store %struct.smp_chan* %46, %struct.smp_chan** %10, align 8
  %47 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %48 = icmp ne %struct.smp_chan* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %41
  %50 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %51 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  %52 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %53 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %55 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @SMP_FLAG_COMPLETE, align 4
  %57 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %58 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %57, i32 0, i32 0
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %63 = call i32 @smp_failure(%struct.l2cap_conn* %62, i32 0)
  br label %68

64:                                               ; preds = %49
  %65 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %66 = load i32, i32* @SMP_UNSPECIFIED, align 4
  %67 = call i32 @smp_failure(%struct.l2cap_conn* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %71 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %70)
  br label %72

72:                                               ; preds = %69, %40, %33, %26
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @hci_remove_ltk(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @hci_remove_irk(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @smp_failure(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

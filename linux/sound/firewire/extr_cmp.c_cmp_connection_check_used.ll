; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_check_used.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_check_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmp_connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@PCR_BCAST_CONN = common dso_local global i32 0, align 4
@PCR_P2P_CONN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_connection_check_used(%struct.cmp_connection* %0, i32* %1) #0 {
  %3 = alloca %struct.cmp_connection*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cmp_connection* %0, %struct.cmp_connection** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %8 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %12 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %13 = call i32 @pcr_address(%struct.cmp_connection* %12)
  %14 = call i32 @snd_fw_transaction(i32 %10, i32 %11, i32 %13, i32* %5, i32 4, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PCR_BCAST_CONN, align 4
  %20 = load i32, i32* @PCR_P2P_CONN_MASK, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @cpu_to_be32(i32 %21)
  %23 = and i32 %18, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %17, %2
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @pcr_address(%struct.cmp_connection*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

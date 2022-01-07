; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_pcr_set_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_pcr_set_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmp_connection = type { i32 }

@PCR_BCAST_CONN = common dso_local global i32 0, align 4
@PCR_P2P_CONN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"plug is already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PCR_ONLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"plug is not on-line\0A\00", align 1
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmp_connection*, i32)* @pcr_set_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcr_set_check(%struct.cmp_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmp_connection*, align 8
  %5 = alloca i32, align 4
  store %struct.cmp_connection* %0, %struct.cmp_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PCR_BCAST_CONN, align 4
  %8 = load i32, i32* @PCR_P2P_CONN_MASK, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @cpu_to_be32(i32 %9)
  %11 = and i32 %6, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.cmp_connection*, %struct.cmp_connection** %4, align 8
  %15 = call i32 @cmp_error(%struct.cmp_connection* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PCR_ONLINE, align 4
  %21 = call i32 @cpu_to_be32(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.cmp_connection*, %struct.cmp_connection** %4, align 8
  %26 = call i32 @cmp_error(%struct.cmp_connection* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ECONNREFUSED, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %24, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cmp_error(%struct.cmp_connection*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

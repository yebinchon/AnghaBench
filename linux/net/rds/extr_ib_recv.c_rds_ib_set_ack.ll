; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_set_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_set_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i32, i32, i32 }

@IB_ACK_REQUESTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_set_ack(%struct.rds_ib_connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rds_ib_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %9 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %14 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @IB_ACK_REQUESTED, align 4
  %19 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %20 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %24 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

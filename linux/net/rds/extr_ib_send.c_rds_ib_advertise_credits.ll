; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_advertise_credits.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_advertise_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32, i32 }

@IB_ACK_REQUESTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_advertise_credits(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_ib_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %7 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %6, i32 0, i32 0
  %8 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  store %struct.rds_ib_connection* %8, %struct.rds_ib_connection** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @IB_SET_POST_CREDITS(i32 %13)
  %15 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %16 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %15, i32 0, i32 1
  %17 = call i32 @atomic_add(i32 %14, i32* %16)
  %18 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %19 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %18, i32 0, i32 1
  %20 = call i32 @atomic_read(i32* %19)
  %21 = call i32 @IB_GET_POST_CREDITS(i32 %20)
  %22 = icmp sge i32 %21, 16
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load i32, i32* @IB_ACK_REQUESTED, align 4
  %25 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %26 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %25, i32 0, i32 0
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %11, %23, %12
  ret void
}

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @IB_SET_POST_CREDITS(i32) #1

declare dso_local i32 @IB_GET_POST_CREDITS(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

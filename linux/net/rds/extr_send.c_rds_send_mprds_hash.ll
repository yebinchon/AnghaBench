; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_mprds_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_mprds_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32 }
%struct.rds_connection = type { i32, i32 }

@RDS_MPATH_WORKERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_sock*, %struct.rds_connection*, i32)* @rds_send_mprds_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_send_mprds_hash(%struct.rds_sock* %0, %struct.rds_connection* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_sock*, align 8
  %6 = alloca %struct.rds_connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rds_sock* %0, %struct.rds_sock** %5, align 8
  store %struct.rds_connection* %1, %struct.rds_connection** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %10 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %15 = load i32, i32* @RDS_MPATH_WORKERS, align 4
  %16 = call i32 @RDS_MPATH_HASH(%struct.rds_sock* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %19 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %20 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @RDS_MPATH_HASH(%struct.rds_sock* %18, i32 %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %17, %13
  %24 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %25 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %33 = call i32 @rds_send_ping(%struct.rds_connection* %32, i32 0)
  %34 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %35 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %64

42:                                               ; preds = %38
  %43 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %44 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %47 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @wait_event_interruptible(i32 %45, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %57 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %55
  br label %62

62:                                               ; preds = %61, %28, %23
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %41
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @RDS_MPATH_HASH(%struct.rds_sock*, i32) #1

declare dso_local i32 @rds_send_ping(%struct.rds_connection*, i32) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

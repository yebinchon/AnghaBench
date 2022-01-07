; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_transport.c_rds_trans_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_transport.c_rds_trans_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_transport = type { i32, i32 }

@rds_trans_sem = common dso_local global i32 0, align 4
@RDS_TRANS_COUNT = common dso_local global i32 0, align 4
@transports = common dso_local global %struct.rds_transport** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_transport* @rds_trans_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rds_transport*, align 8
  %4 = alloca %struct.rds_transport*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.rds_transport* null, %struct.rds_transport** %3, align 8
  %6 = call i32 @down_read(i32* @rds_trans_sem)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @RDS_TRANS_COUNT, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load %struct.rds_transport**, %struct.rds_transport*** @transports, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.rds_transport*, %struct.rds_transport** %12, i64 %14
  %16 = load %struct.rds_transport*, %struct.rds_transport** %15, align 8
  store %struct.rds_transport* %16, %struct.rds_transport** %4, align 8
  %17 = load %struct.rds_transport*, %struct.rds_transport** %4, align 8
  %18 = icmp ne %struct.rds_transport* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = load %struct.rds_transport*, %struct.rds_transport** %4, align 8
  %21 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.rds_transport*, %struct.rds_transport** %4, align 8
  %27 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.rds_transport*, %struct.rds_transport** %4, align 8
  %32 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @try_module_get(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %25
  %37 = load %struct.rds_transport*, %struct.rds_transport** %4, align 8
  store %struct.rds_transport* %37, %struct.rds_transport** %3, align 8
  br label %42

38:                                               ; preds = %30, %19, %11
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %7

42:                                               ; preds = %36, %7
  %43 = call i32 @up_read(i32* @rds_trans_sem)
  %44 = load %struct.rds_transport*, %struct.rds_transport** %3, align 8
  ret %struct.rds_transport* %44
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

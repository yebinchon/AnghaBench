; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_keepalive_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_keepalive_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, i32 }
%struct.timespec64 = type { i32 }

@CEPH_FEATURE_MSGR_KEEPALIVE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_con_keepalive_expired(%struct.ceph_connection* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec64, align 4
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca %struct.timespec64, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CEPH_FEATURE_MSGR_KEEPALIVE2, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = call i32 @ktime_get_real_ts64(%struct.timespec64* %6)
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @jiffies_to_timespec64(i64 %20, %struct.timespec64* %7)
  %22 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %23 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @timespec64_add(i32 %24, i32 %26)
  %28 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.timespec64* %7 to i8*
  %30 = bitcast %struct.timespec64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = call i64 @timespec64_compare(%struct.timespec64* %6, %struct.timespec64* %7)
  %32 = icmp sge i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @jiffies_to_timespec64(i64, %struct.timespec64*) #1

declare dso_local i32 @timespec64_add(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @timespec64_compare(%struct.timespec64*, %struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

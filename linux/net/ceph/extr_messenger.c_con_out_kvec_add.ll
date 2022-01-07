; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_out_kvec_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_out_kvec_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*, i64, i8*)* @con_out_kvec_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con_out_kvec_add(%struct.ceph_connection* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.ceph_connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %18)
  %20 = icmp sge i32 %15, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %25 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %23, i64* %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %33 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %31, i8** %38, align 8
  %39 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %40 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %45 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, %43
  store i64 %47, i64* %45, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

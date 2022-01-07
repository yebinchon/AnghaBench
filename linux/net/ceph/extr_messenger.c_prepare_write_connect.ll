; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_prepare_write_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_prepare_write_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CEPH_MONC_PROTOCOL = common dso_local global i32 0, align 4
@CEPH_OSDC_PROTOCOL = common dso_local global i32 0, align 4
@CEPH_MDSC_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"prepare_write_connect %p cseq=%d gseq=%d proto=%d\0A\00", align 1
@CEPH_ENTITY_TYPE_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @prepare_write_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_write_connect(%struct.ceph_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @get_global_seq(i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %12 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 128, label %17
    i32 130, label %19
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @CEPH_MONC_PROTOCOL, align 4
  store i32 %16, i32* %5, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @CEPH_OSDC_PROTOCOL, align 4
  store i32 %18, i32* %5, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @CEPH_MDSC_PROTOCOL, align 4
  store i32 %20, i32* %5, align 4
  br label %23

21:                                               ; preds = %1
  %22 = call i32 (...) @BUG()
  br label %23

23:                                               ; preds = %21, %19, %17, %15
  %24 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %25 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dout(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %24, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_6__* @from_msgr(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_le64(i32 %36)
  %38 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %39 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @CEPH_ENTITY_TYPE_CLIENT, align 4
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %44 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %47 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %51 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %56 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %61 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %64 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %67 = call i32 @get_connect_authorizer(%struct.ceph_connection* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %23
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %75

72:                                               ; preds = %23
  %73 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %74 = call i32 @__prepare_write_connect(%struct.ceph_connection* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %70
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @get_global_seq(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dout(i8*, %struct.ceph_connection*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local %struct.TYPE_6__* @from_msgr(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @get_connect_authorizer(%struct.ceph_connection*) #1

declare dso_local i32 @__prepare_write_connect(%struct.ceph_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

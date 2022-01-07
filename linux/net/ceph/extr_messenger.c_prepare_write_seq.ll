; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_prepare_write_seq.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_prepare_write_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"prepare_write_seq %p %llu -> %llu\0A\00", align 1
@CON_FLAG_WRITE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*)* @prepare_write_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_write_seq(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %3 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %4 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %3, i32 %6, i32 %9)
  %11 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %15 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %17 = call i32 @con_out_kvec_reset(%struct.ceph_connection* %16)
  %18 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_le64(i32 %20)
  %22 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %23 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %25 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %26 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %25, i32 0, i32 0
  %27 = call i32 @con_out_kvec_add(%struct.ceph_connection* %24, i32 4, i32* %26)
  %28 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %29 = load i32, i32* @CON_FLAG_WRITE_PENDING, align 4
  %30 = call i32 @con_flag_set(%struct.ceph_connection* %28, i32 %29)
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*, i32, i32) #1

declare dso_local i32 @con_out_kvec_reset(%struct.ceph_connection*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @con_out_kvec_add(%struct.ceph_connection*, i32, i32*) #1

declare dso_local i32 @con_flag_set(%struct.ceph_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

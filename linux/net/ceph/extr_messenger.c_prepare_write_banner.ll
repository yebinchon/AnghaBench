; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_prepare_write_banner.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_prepare_write_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CEPH_BANNER = common dso_local global i32* null, align 8
@CON_FLAG_WRITE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*)* @prepare_write_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_write_banner(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %3 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %4 = load i32*, i32** @CEPH_BANNER, align 8
  %5 = call i32 @strlen(i32* %4)
  %6 = load i32*, i32** @CEPH_BANNER, align 8
  %7 = call i32 @con_out_kvec_add(%struct.ceph_connection* %3, i32 %5, i32* %6)
  %8 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %9 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @con_out_kvec_add(%struct.ceph_connection* %8, i32 4, i32* %12)
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %15 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %17 = load i32, i32* @CON_FLAG_WRITE_PENDING, align 4
  %18 = call i32 @con_flag_set(%struct.ceph_connection* %16, i32 %17)
  ret void
}

declare dso_local i32 @con_out_kvec_add(%struct.ceph_connection*, i32, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @con_flag_set(%struct.ceph_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

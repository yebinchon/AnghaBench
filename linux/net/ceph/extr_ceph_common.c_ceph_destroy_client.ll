; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_destroy_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_destroy_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_client = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"destroy_client %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"destroy_client %p done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_destroy_client(%struct.ceph_client* %0) #0 {
  %2 = alloca %struct.ceph_client*, align 8
  store %struct.ceph_client* %0, %struct.ceph_client** %2, align 8
  %3 = load %struct.ceph_client*, %struct.ceph_client** %2, align 8
  %4 = call i32 @dout(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.ceph_client* %3)
  %5 = load %struct.ceph_client*, %struct.ceph_client** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @atomic_set(i32* %7, i32 1)
  %9 = load %struct.ceph_client*, %struct.ceph_client** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %9, i32 0, i32 3
  %11 = call i32 @ceph_osdc_stop(i32* %10)
  %12 = load %struct.ceph_client*, %struct.ceph_client** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %12, i32 0, i32 2
  %14 = call i32 @ceph_monc_stop(i32* %13)
  %15 = load %struct.ceph_client*, %struct.ceph_client** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %15, i32 0, i32 1
  %17 = call i32 @ceph_messenger_fini(%struct.TYPE_2__* %16)
  %18 = load %struct.ceph_client*, %struct.ceph_client** %2, align 8
  %19 = call i32 @ceph_debugfs_client_cleanup(%struct.ceph_client* %18)
  %20 = load %struct.ceph_client*, %struct.ceph_client** %2, align 8
  %21 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ceph_destroy_options(i32 %22)
  %24 = load %struct.ceph_client*, %struct.ceph_client** %2, align 8
  %25 = call i32 @kfree(%struct.ceph_client* %24)
  %26 = load %struct.ceph_client*, %struct.ceph_client** %2, align 8
  %27 = call i32 @dout(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_client* %26)
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_client*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ceph_osdc_stop(i32*) #1

declare dso_local i32 @ceph_monc_stop(i32*) #1

declare dso_local i32 @ceph_messenger_fini(%struct.TYPE_2__*) #1

declare dso_local i32 @ceph_debugfs_client_cleanup(%struct.ceph_client*) #1

declare dso_local i32 @ceph_destroy_options(i32) #1

declare dso_local i32 @kfree(%struct.ceph_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_set_mount_transport_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_set_mount_transport_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_parsed_mount_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_parsed_mount_data*)* @nfs_set_mount_transport_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_set_mount_transport_protocol(%struct.nfs_parsed_mount_data* %0) #0 {
  %2 = alloca %struct.nfs_parsed_mount_data*, align 8
  store %struct.nfs_parsed_mount_data* %0, %struct.nfs_parsed_mount_data** %2, align 8
  %3 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %4 = call i32 @nfs_validate_transport_protocol(%struct.nfs_parsed_mount_data* %3)
  %5 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 128
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %12 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 129
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %30

17:                                               ; preds = %10
  %18 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %30 [
    i32 128, label %22
    i32 129, label %26
    i32 130, label %26
  ]

22:                                               ; preds = %17
  %23 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 128, i64* %25, align 8
  br label %30

26:                                               ; preds = %17, %17
  %27 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %2, align 8
  %28 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 129, i64* %29, align 8
  br label %30

30:                                               ; preds = %16, %26, %17, %22
  ret void
}

declare dso_local i32 @nfs_validate_transport_protocol(%struct.nfs_parsed_mount_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

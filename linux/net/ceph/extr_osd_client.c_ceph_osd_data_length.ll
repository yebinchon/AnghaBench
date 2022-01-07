; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osd_data_length.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osd_data_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_data = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"unrecognized data type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osd_data*)* @ceph_osd_data_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_osd_data_length(%struct.ceph_osd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_osd_data*, align 8
  store %struct.ceph_osd_data* %0, %struct.ceph_osd_data** %3, align 8
  %4 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %3, align 8
  %5 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %24 [
    i32 130, label %7
    i32 128, label %8
    i32 129, label %12
    i32 131, label %18
  ]

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %18, %12, %8, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

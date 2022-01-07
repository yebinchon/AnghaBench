; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_check_fsid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_check_fsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_client = type { i32, i64 }
%struct.ceph_fsid = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"bad fsid, had %pU got %pU\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_check_fsid(%struct.ceph_client* %0, %struct.ceph_fsid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_client*, align 8
  %5 = alloca %struct.ceph_fsid*, align 8
  store %struct.ceph_client* %0, %struct.ceph_client** %4, align 8
  store %struct.ceph_fsid* %1, %struct.ceph_fsid** %5, align 8
  %6 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %7 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %11, i32 0, i32 0
  %13 = load %struct.ceph_fsid*, %struct.ceph_fsid** %5, align 8
  %14 = call i64 @ceph_fsid_compare(i32* %12, %struct.ceph_fsid* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %17, i32 0, i32 0
  %19 = load %struct.ceph_fsid*, %struct.ceph_fsid** %5, align 8
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %18, %struct.ceph_fsid* %19)
  store i32 -1, i32* %3, align 4
  br label %28

21:                                               ; preds = %10
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %23, i32 0, i32 0
  %25 = load %struct.ceph_fsid*, %struct.ceph_fsid** %5, align 8
  %26 = call i32 @memcpy(i32* %24, %struct.ceph_fsid* %25, i32 4)
  br label %27

27:                                               ; preds = %22, %21
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @ceph_fsid_compare(i32*, %struct.ceph_fsid*) #1

declare dso_local i32 @pr_err(i8*, i32*, %struct.ceph_fsid*) #1

declare dso_local i32 @memcpy(i32*, %struct.ceph_fsid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

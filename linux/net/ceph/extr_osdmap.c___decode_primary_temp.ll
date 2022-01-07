; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___decode_primary_temp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___decode_primary_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_pg_mapping = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e_inval = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_pg_mapping* (i8**, i8*, i32)* @__decode_primary_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_pg_mapping* @__decode_primary_temp(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_pg_mapping*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_pg_mapping*, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i32, i32* @e_inval, align 4
  %14 = call i32 @ceph_decode_32_safe(i8** %10, i8* %11, i64 %12, i32 %13)
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store %struct.ceph_pg_mapping* null, %struct.ceph_pg_mapping** %4, align 8
  br label %39

21:                                               ; preds = %17, %3
  %22 = call %struct.ceph_pg_mapping* @alloc_pg_mapping(i32 0)
  store %struct.ceph_pg_mapping* %22, %struct.ceph_pg_mapping** %8, align 8
  %23 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  %24 = icmp ne %struct.ceph_pg_mapping* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.ceph_pg_mapping* @ERR_PTR(i32 %27)
  store %struct.ceph_pg_mapping* %28, %struct.ceph_pg_mapping** %4, align 8
  br label %39

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  %32 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  store %struct.ceph_pg_mapping* %34, %struct.ceph_pg_mapping** %4, align 8
  br label %39

35:                                               ; No predecessors!
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ceph_pg_mapping* @ERR_PTR(i32 %37)
  store %struct.ceph_pg_mapping* %38, %struct.ceph_pg_mapping** %4, align 8
  br label %39

39:                                               ; preds = %35, %29, %25, %20
  %40 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %4, align 8
  ret %struct.ceph_pg_mapping* %40
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i64, i32) #1

declare dso_local %struct.ceph_pg_mapping* @alloc_pg_mapping(i32) #1

declare dso_local %struct.ceph_pg_mapping* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_set_primary_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_set_primary_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i32, i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_OSD_DEFAULT_PRIMARY_AFFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osdmap*, i32, i32)* @set_primary_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_primary_affinity(%struct.ceph_osdmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_osdmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_osdmap* %0, %struct.ceph_osdmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %11 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %17 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %3
  %21 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %22 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @array_size(i32 %23, i32 4)
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call i32* @ceph_kvmalloc(i32 %24, i32 %25)
  %27 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %28 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %30 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %40 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i32, i32* @CEPH_OSD_DEFAULT_PRIMARY_AFFINITY, align 4
  %45 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %46 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %37

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %3
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %5, align 8
  %58 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %33
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @ceph_kvmalloc(i32, i32) #1

declare dso_local i32 @array_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_target_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_target_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request_target = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request_target*, %struct.ceph_osd_request_target*)* @target_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_copy(%struct.ceph_osd_request_target* %0, %struct.ceph_osd_request_target* %1) #0 {
  %3 = alloca %struct.ceph_osd_request_target*, align 8
  %4 = alloca %struct.ceph_osd_request_target*, align 8
  store %struct.ceph_osd_request_target* %0, %struct.ceph_osd_request_target** %3, align 8
  store %struct.ceph_osd_request_target* %1, %struct.ceph_osd_request_target** %4, align 8
  %5 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %5, i32 0, i32 17
  %7 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %8 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %7, i32 0, i32 17
  %9 = call i32 @ceph_oid_copy(i32* %6, i32* %8)
  %10 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %10, i32 0, i32 16
  %12 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %12, i32 0, i32 16
  %14 = call i32 @ceph_oloc_copy(i32* %11, i32* %13)
  %15 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %16 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %15, i32 0, i32 15
  %17 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %17, i32 0, i32 15
  %19 = call i32 @ceph_oid_copy(i32* %16, i32* %18)
  %20 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %21 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %20, i32 0, i32 14
  %22 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %23 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %22, i32 0, i32 14
  %24 = call i32 @ceph_oloc_copy(i32* %21, i32* %23)
  %25 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %29 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %31 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %34 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %39 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %41 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %44 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %46 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %45, i32 0, i32 9
  %47 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %48 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %47, i32 0, i32 9
  %49 = call i32 @ceph_osds_copy(i32* %46, i32* %48)
  %50 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %51 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %50, i32 0, i32 8
  %52 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %53 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %52, i32 0, i32 8
  %54 = call i32 @ceph_osds_copy(i32* %51, i32* %53)
  %55 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %56 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %59 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %61 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %64 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %66 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %69 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %71 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %74 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %76 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %79 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %81 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %84 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %86 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %89 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %4, align 8
  %91 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ceph_osd_request_target*, %struct.ceph_osd_request_target** %3, align 8
  %94 = getelementptr inbounds %struct.ceph_osd_request_target, %struct.ceph_osd_request_target* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  ret void
}

declare dso_local i32 @ceph_oid_copy(i32*, i32*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, i32*) #1

declare dso_local i32 @ceph_osds_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

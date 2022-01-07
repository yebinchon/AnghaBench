; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txForce.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txForce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tblock = type { i64 }
%struct.tlock = type { i32, i32, %struct.metapage*, i64 }
%struct.metapage = type { i32, i32, i32 }

@tlckBTROOT = common dso_local global i32 0, align 4
@COMMIT_PAGE = common dso_local global i32 0, align 4
@tlckWRITEPAGE = common dso_local global i32 0, align 4
@META_dirty = common dso_local global i32 0, align 4
@META_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tblock*)* @txForce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txForce(%struct.tblock* %0) #0 {
  %2 = alloca %struct.tblock*, align 8
  %3 = alloca %struct.tlock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.metapage*, align 8
  store %struct.tblock* %0, %struct.tblock** %2, align 8
  %7 = load %struct.tblock*, %struct.tblock** %2, align 8
  %8 = getelementptr inbounds %struct.tblock, %struct.tblock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.tlock* @lid_to_tlock(i64 %9)
  store %struct.tlock* %10, %struct.tlock** %3, align 8
  %11 = load %struct.tlock*, %struct.tlock** %3, align 8
  %12 = getelementptr inbounds %struct.tlock, %struct.tlock* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.tlock*, %struct.tlock** %3, align 8
  %15 = getelementptr inbounds %struct.tlock, %struct.tlock* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %19, %1
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.tlock* @lid_to_tlock(i64 %20)
  store %struct.tlock* %21, %struct.tlock** %3, align 8
  %22 = load %struct.tlock*, %struct.tlock** %3, align 8
  %23 = getelementptr inbounds %struct.tlock, %struct.tlock* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load %struct.tblock*, %struct.tblock** %2, align 8
  %26 = getelementptr inbounds %struct.tblock, %struct.tblock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tlock*, %struct.tlock** %3, align 8
  %29 = getelementptr inbounds %struct.tlock, %struct.tlock* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.tblock*, %struct.tblock** %2, align 8
  %32 = getelementptr inbounds %struct.tblock, %struct.tblock* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %4, align 8
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.tblock*, %struct.tblock** %2, align 8
  %36 = getelementptr inbounds %struct.tblock, %struct.tblock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %82, %34
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = call %struct.tlock* @lid_to_tlock(i64 %42)
  store %struct.tlock* %43, %struct.tlock** %3, align 8
  %44 = load %struct.tlock*, %struct.tlock** %3, align 8
  %45 = getelementptr inbounds %struct.tlock, %struct.tlock* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %5, align 8
  %47 = load %struct.tlock*, %struct.tlock** %3, align 8
  %48 = getelementptr inbounds %struct.tlock, %struct.tlock* %47, i32 0, i32 2
  %49 = load %struct.metapage*, %struct.metapage** %48, align 8
  store %struct.metapage* %49, %struct.metapage** %6, align 8
  %50 = icmp ne %struct.metapage* %49, null
  br i1 %50, label %51, label %81

51:                                               ; preds = %41
  %52 = load %struct.tlock*, %struct.tlock** %3, align 8
  %53 = getelementptr inbounds %struct.tlock, %struct.tlock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @tlckBTROOT, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %51
  %59 = load %struct.metapage*, %struct.metapage** %6, align 8
  %60 = getelementptr inbounds %struct.metapage, %struct.metapage* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @COMMIT_PAGE, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.tlock*, %struct.tlock** %3, align 8
  %66 = getelementptr inbounds %struct.tlock, %struct.tlock* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @tlckWRITEPAGE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %58
  %72 = load i32, i32* @tlckWRITEPAGE, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.tlock*, %struct.tlock** %3, align 8
  %75 = getelementptr inbounds %struct.tlock, %struct.tlock* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.metapage*, %struct.metapage** %6, align 8
  %79 = call i32 @force_metapage(%struct.metapage* %78)
  br label %80

80:                                               ; preds = %71, %58
  br label %81

81:                                               ; preds = %80, %51, %41
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %5, align 8
  store i64 %83, i64* %4, align 8
  br label %38

84:                                               ; preds = %38
  ret void
}

declare dso_local %struct.tlock* @lid_to_tlock(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @force_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

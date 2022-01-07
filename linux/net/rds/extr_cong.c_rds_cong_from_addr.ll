; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_from_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_from_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_cong_map = type { i64*, i32, i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RDS_CONG_MAP_PAGES = common dso_local global i64 0, align 8
@rds_cong_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"map %p for addr %pI6c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rds_cong_map* (%struct.in6_addr*)* @rds_cong_from_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rds_cong_map* @rds_cong_from_addr(%struct.in6_addr* %0) #0 {
  %2 = alloca %struct.rds_cong_map*, align 8
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.rds_cong_map*, align 8
  %5 = alloca %struct.rds_cong_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store %struct.rds_cong_map* null, %struct.rds_cong_map** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rds_cong_map* @kzalloc(i32 24, i32 %9)
  store %struct.rds_cong_map* %10, %struct.rds_cong_map** %4, align 8
  %11 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %12 = icmp ne %struct.rds_cong_map* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.rds_cong_map* null, %struct.rds_cong_map** %2, align 8
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %16 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %15, i32 0, i32 3
  %17 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %18 = bitcast %struct.in6_addr* %16 to i8*
  %19 = bitcast %struct.in6_addr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %21 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %20, i32 0, i32 2
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %24 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %43, %14
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @RDS_CONG_MAP_PAGES, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @get_zeroed_page(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %59

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %39 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %37, i64* %42, align 8
  br label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %26

46:                                               ; preds = %26
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_lock_irqsave(i32* @rds_cong_lock, i64 %47)
  %49 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %50 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %51 = call %struct.rds_cong_map* @rds_cong_tree_walk(%struct.in6_addr* %49, %struct.rds_cong_map* %50)
  store %struct.rds_cong_map* %51, %struct.rds_cong_map** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @rds_cong_lock, i64 %52)
  %54 = load %struct.rds_cong_map*, %struct.rds_cong_map** %5, align 8
  %55 = icmp ne %struct.rds_cong_map* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  %57 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  store %struct.rds_cong_map* %57, %struct.rds_cong_map** %5, align 8
  store %struct.rds_cong_map* null, %struct.rds_cong_map** %4, align 8
  br label %58

58:                                               ; preds = %56, %46
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %61 = icmp ne %struct.rds_cong_map* %60, null
  br i1 %61, label %62, label %91

62:                                               ; preds = %59
  store i64 0, i64* %7, align 8
  br label %63

63:                                               ; preds = %85, %62
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @RDS_CONG_MAP_PAGES, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %69 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %67, %63
  %76 = phi i1 [ false, %63 ], [ %74, %67 ]
  br i1 %76, label %77, label %88

77:                                               ; preds = %75
  %78 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %79 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @free_page(i64 %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %7, align 8
  br label %63

88:                                               ; preds = %75
  %89 = load %struct.rds_cong_map*, %struct.rds_cong_map** %4, align 8
  %90 = call i32 @kfree(%struct.rds_cong_map* %89)
  br label %91

91:                                               ; preds = %88, %59
  %92 = load %struct.rds_cong_map*, %struct.rds_cong_map** %5, align 8
  %93 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %94 = call i32 @rdsdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.rds_cong_map* %92, %struct.in6_addr* %93)
  %95 = load %struct.rds_cong_map*, %struct.rds_cong_map** %5, align 8
  store %struct.rds_cong_map* %95, %struct.rds_cong_map** %2, align 8
  br label %96

96:                                               ; preds = %91, %13
  %97 = load %struct.rds_cong_map*, %struct.rds_cong_map** %2, align 8
  ret %struct.rds_cong_map* %97
}

declare dso_local %struct.rds_cong_map* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.rds_cong_map* @rds_cong_tree_walk(%struct.in6_addr*, %struct.rds_cong_map*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.rds_cong_map*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_cong_map*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

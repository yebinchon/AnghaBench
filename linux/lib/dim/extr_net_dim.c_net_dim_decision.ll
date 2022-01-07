; ModuleID = '/home/carl/AnghaBench/linux/lib/dim/extr_net_dim.c_net_dim_decision.c'
source_filename = "/home/carl/AnghaBench/linux/lib/dim/extr_net_dim.c_net_dim_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_stats = type { i32 }
%struct.dim = type { i32, i32, %struct.dim_stats, i32 }

@DIM_STATS_SAME = common dso_local global i32 0, align 4
@DIM_STATS_BETTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dim_stats*, %struct.dim*)* @net_dim_decision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dim_decision(%struct.dim_stats* %0, %struct.dim* %1) #0 {
  %3 = alloca %struct.dim_stats*, align 8
  %4 = alloca %struct.dim*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dim_stats* %0, %struct.dim_stats** %3, align 8
  store %struct.dim* %1, %struct.dim** %4, align 8
  %9 = load %struct.dim*, %struct.dim** %4, align 8
  %10 = getelementptr inbounds %struct.dim, %struct.dim* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.dim*, %struct.dim** %4, align 8
  %13 = getelementptr inbounds %struct.dim, %struct.dim* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dim*, %struct.dim** %4, align 8
  %16 = getelementptr inbounds %struct.dim, %struct.dim* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %72 [
    i32 130, label %18
    i32 129, label %30
    i32 132, label %43
    i32 133, label %43
  ]

18:                                               ; preds = %2
  %19 = load %struct.dim_stats*, %struct.dim_stats** %3, align 8
  %20 = load %struct.dim*, %struct.dim** %4, align 8
  %21 = getelementptr inbounds %struct.dim, %struct.dim* %20, i32 0, i32 2
  %22 = call i32 @net_dim_stats_compare(%struct.dim_stats* %19, %struct.dim_stats* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DIM_STATS_SAME, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.dim*, %struct.dim** %4, align 8
  %28 = call i32 @net_dim_exit_parking(%struct.dim* %27)
  br label %29

29:                                               ; preds = %26, %18
  br label %72

30:                                               ; preds = %2
  %31 = load %struct.dim*, %struct.dim** %4, align 8
  %32 = getelementptr inbounds %struct.dim, %struct.dim* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.dim*, %struct.dim** %4, align 8
  %36 = getelementptr inbounds %struct.dim, %struct.dim* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load %struct.dim*, %struct.dim** %4, align 8
  %41 = call i32 @net_dim_exit_parking(%struct.dim* %40)
  br label %42

42:                                               ; preds = %39, %30
  br label %72

43:                                               ; preds = %2, %2
  %44 = load %struct.dim_stats*, %struct.dim_stats** %3, align 8
  %45 = load %struct.dim*, %struct.dim** %4, align 8
  %46 = getelementptr inbounds %struct.dim, %struct.dim* %45, i32 0, i32 2
  %47 = call i32 @net_dim_stats_compare(%struct.dim_stats* %44, %struct.dim_stats* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @DIM_STATS_BETTER, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.dim*, %struct.dim** %4, align 8
  %53 = call i32 @dim_turn(%struct.dim* %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load %struct.dim*, %struct.dim** %4, align 8
  %56 = call i32 @dim_on_top(%struct.dim* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.dim*, %struct.dim** %4, align 8
  %60 = call i32 @dim_park_on_top(%struct.dim* %59)
  br label %72

61:                                               ; preds = %54
  %62 = load %struct.dim*, %struct.dim** %4, align 8
  %63 = call i32 @net_dim_step(%struct.dim* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %71 [
    i32 131, label %65
    i32 128, label %68
  ]

65:                                               ; preds = %61
  %66 = load %struct.dim*, %struct.dim** %4, align 8
  %67 = call i32 @dim_park_on_top(%struct.dim* %66)
  br label %71

68:                                               ; preds = %61
  %69 = load %struct.dim*, %struct.dim** %4, align 8
  %70 = call i32 @dim_park_tired(%struct.dim* %69)
  br label %71

71:                                               ; preds = %61, %68, %65
  br label %72

72:                                               ; preds = %2, %71, %58, %42, %29
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 130
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load %struct.dim*, %struct.dim** %4, align 8
  %77 = getelementptr inbounds %struct.dim, %struct.dim* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 130
  br i1 %79, label %80, label %86

80:                                               ; preds = %75, %72
  %81 = load %struct.dim*, %struct.dim** %4, align 8
  %82 = getelementptr inbounds %struct.dim, %struct.dim* %81, i32 0, i32 2
  %83 = load %struct.dim_stats*, %struct.dim_stats** %3, align 8
  %84 = bitcast %struct.dim_stats* %82 to i8*
  %85 = bitcast %struct.dim_stats* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.dim*, %struct.dim** %4, align 8
  %88 = getelementptr inbounds %struct.dim, %struct.dim* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %89, %90
  %92 = zext i1 %91 to i32
  ret i32 %92
}

declare dso_local i32 @net_dim_stats_compare(%struct.dim_stats*, %struct.dim_stats*) #1

declare dso_local i32 @net_dim_exit_parking(%struct.dim*) #1

declare dso_local i32 @dim_turn(%struct.dim*) #1

declare dso_local i32 @dim_on_top(%struct.dim*) #1

declare dso_local i32 @dim_park_on_top(%struct.dim*) #1

declare dso_local i32 @net_dim_step(%struct.dim*) #1

declare dso_local i32 @dim_park_tired(%struct.dim*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

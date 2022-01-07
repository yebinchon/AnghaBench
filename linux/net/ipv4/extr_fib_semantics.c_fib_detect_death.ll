; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_detect_death.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_detect_death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.fib_info = type { i32 }
%struct.fib_nh_common = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.neighbour = type { i32 }

@NUD_NONE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@arp_tbl = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@ipv6_stub = common dso_local global %struct.TYPE_4__* null, align 8
@NUD_REACHABLE = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@NUD_INCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_info*, i32, %struct.fib_info**, i32*, i32)* @fib_detect_death to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_detect_death(%struct.fib_info* %0, i32 %1, %struct.fib_info** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib_info**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fib_nh_common*, align 8
  %13 = alloca %struct.neighbour*, align 8
  %14 = alloca i32, align 4
  store %struct.fib_info* %0, %struct.fib_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.fib_info** %2, %struct.fib_info*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.fib_info*, %struct.fib_info** %7, align 8
  %16 = call %struct.fib_nh_common* @fib_info_nhc(%struct.fib_info* %15, i32 0)
  store %struct.fib_nh_common* %16, %struct.fib_nh_common** %12, align 8
  %17 = load i32, i32* @NUD_NONE, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.fib_nh_common*, %struct.fib_nh_common** %12, align 8
  %19 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load %struct.fib_nh_common*, %struct.fib_nh_common** %12, align 8
  %28 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.fib_nh_common*, %struct.fib_nh_common** %12, align 8
  %31 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.neighbour* @neigh_lookup(i32* @arp_tbl, i32* %29, i32 %32)
  store %struct.neighbour* %33, %struct.neighbour** %13, align 8
  br label %53

34:                                               ; preds = %5
  %35 = load %struct.fib_nh_common*, %struct.fib_nh_common** %12, align 8
  %36 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_INET6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipv6_stub, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.fib_nh_common*, %struct.fib_nh_common** %12, align 8
  %45 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.fib_nh_common*, %struct.fib_nh_common** %12, align 8
  %48 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.neighbour* @neigh_lookup(i32* %43, i32* %46, i32 %49)
  store %struct.neighbour* %50, %struct.neighbour** %13, align 8
  br label %52

51:                                               ; preds = %34
  store %struct.neighbour* null, %struct.neighbour** %13, align 8
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %55 = icmp ne %struct.neighbour* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %58 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %61 = call i32 @neigh_release(%struct.neighbour* %60)
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %101

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @NUD_REACHABLE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %101

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @NUD_VALID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %101

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @NUD_VALID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @NUD_INCOMPLETE, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91, %78
  %96 = load %struct.fib_info*, %struct.fib_info** %7, align 8
  %97 = load %struct.fib_info**, %struct.fib_info*** %9, align 8
  store %struct.fib_info* %96, %struct.fib_info** %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32*, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %91, %87, %83
  store i32 1, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %77, %67, %62
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.fib_nh_common* @fib_info_nhc(%struct.fib_info*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.neighbour* @neigh_lookup(i32*, i32*, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

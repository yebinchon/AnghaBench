; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_compat_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_compat_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_set_info_v0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IPSET_DIM_ZERO = common dso_local global i32 0, align 4
@IPSET_MATCH_INV = common dso_local global i32 0, align 4
@IPSET_INV_MATCH = common dso_local global i32 0, align 4
@IPSET_DIM_MAX = common dso_local global i32 0, align 4
@IPSET_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_set_info_v0*)* @compat_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compat_flags(%struct.xt_set_info_v0* %0) #0 {
  %2 = alloca %struct.xt_set_info_v0*, align 8
  %3 = alloca i32, align 4
  store %struct.xt_set_info_v0* %0, %struct.xt_set_info_v0** %2, align 8
  %4 = load i32, i32* @IPSET_DIM_ZERO, align 4
  %5 = load %struct.xt_set_info_v0*, %struct.xt_set_info_v0** %2, align 8
  %6 = getelementptr inbounds %struct.xt_set_info_v0, %struct.xt_set_info_v0* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %4, i32* %8, align 8
  %9 = load %struct.xt_set_info_v0*, %struct.xt_set_info_v0** %2, align 8
  %10 = getelementptr inbounds %struct.xt_set_info_v0, %struct.xt_set_info_v0* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IPSET_MATCH_INV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load i32, i32* @IPSET_INV_MATCH, align 4
  %20 = load %struct.xt_set_info_v0*, %struct.xt_set_info_v0** %2, align 8
  %21 = getelementptr inbounds %struct.xt_set_info_v0, %struct.xt_set_info_v0* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %18, %1
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %76, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IPSET_DIM_MAX, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.xt_set_info_v0*, %struct.xt_set_info_v0** %2, align 8
  %34 = getelementptr inbounds %struct.xt_set_info_v0, %struct.xt_set_info_v0* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %32, %27
  %43 = phi i1 [ false, %27 ], [ %41, %32 ]
  br i1 %43, label %44, label %79

44:                                               ; preds = %42
  %45 = load %struct.xt_set_info_v0*, %struct.xt_set_info_v0** %2, align 8
  %46 = getelementptr inbounds %struct.xt_set_info_v0, %struct.xt_set_info_v0* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.xt_set_info_v0*, %struct.xt_set_info_v0** %2, align 8
  %52 = getelementptr inbounds %struct.xt_set_info_v0, %struct.xt_set_info_v0* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IPSET_SRC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %44
  %63 = load %struct.xt_set_info_v0*, %struct.xt_set_info_v0** %2, align 8
  %64 = getelementptr inbounds %struct.xt_set_info_v0, %struct.xt_set_info_v0* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 1, %67
  %69 = load %struct.xt_set_info_v0*, %struct.xt_set_info_v0** %2, align 8
  %70 = getelementptr inbounds %struct.xt_set_info_v0, %struct.xt_set_info_v0* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %62, %44
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %27

79:                                               ; preds = %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

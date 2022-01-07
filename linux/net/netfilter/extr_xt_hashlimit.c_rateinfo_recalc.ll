; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_rateinfo_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_rateinfo_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsthash_ent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i64, i64, i64 }

@XT_HASHLIMIT_RATE_MATCH = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@XT_HASHLIMIT_BYTES = common dso_local global i32 0, align 4
@CREDITS_PER_JIFFY_BYTES = common dso_local global i64 0, align 8
@CREDITS_PER_JIFFY_v1 = common dso_local global i64 0, align 8
@CREDITS_PER_JIFFY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsthash_ent*, i64, i32, i32)* @rateinfo_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rateinfo_recalc(%struct.dsthash_ent* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dsthash_ent*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dsthash_ent* %0, %struct.dsthash_ent** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %16 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %14, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %137

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @XT_HASHLIMIT_RATE_MATCH, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %33 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HZ, align 8
  %37 = mul i64 %35, %36
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %137

42:                                               ; preds = %31
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %45 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %48 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %12, align 8
  %52 = mul i64 %50, %51
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %55 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 %53, %57
  %59 = icmp ugt i64 %52, %58
  %60 = zext i1 %59 to i32
  %61 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %62 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %65 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  br label %137

67:                                               ; preds = %26, %23
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %70 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @XT_HASHLIMIT_BYTES, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %67
  %77 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %78 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* @CREDITS_PER_JIFFY_BYTES, align 8
  %82 = load i64, i64* %9, align 8
  %83 = mul i64 %81, %82
  %84 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %85 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, %83
  store i64 %88, i64* %86, align 8
  %89 = load i64, i64* @CREDITS_PER_JIFFY_BYTES, align 8
  %90 = load i64, i64* @HZ, align 8
  %91 = mul i64 %89, %90
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %94 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp uge i64 %92, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %76
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %101 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 5
  store i64 %99, i64* %102, align 8
  br label %137

103:                                              ; preds = %76
  br label %125

104:                                              ; preds = %67
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i64, i64* @CREDITS_PER_JIFFY_v1, align 8
  br label %111

109:                                              ; preds = %104
  %110 = load i64, i64* @CREDITS_PER_JIFFY, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i64 [ %108, %107 ], [ %110, %109 ]
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %11, align 8
  %115 = mul i64 %113, %114
  %116 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %117 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %115
  store i64 %120, i64* %118, align 8
  %121 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %122 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %10, align 8
  br label %125

125:                                              ; preds = %111, %103
  %126 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %127 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %10, align 8
  %131 = icmp ugt i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i64, i64* %10, align 8
  %134 = load %struct.dsthash_ent*, %struct.dsthash_ent** %5, align 8
  %135 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 5
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %22, %41, %42, %98, %132, %125
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

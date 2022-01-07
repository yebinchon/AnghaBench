; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_rtoken_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_rtoken_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link_group = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@SMC_RMBS_PER_LGR_MAX = common dso_local global i32 0, align 4
@SMC_SINGLE_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_rtoken_add(%struct.smc_link_group* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_link_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.smc_link_group* %0, %struct.smc_link_group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @be64_to_cpu(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @ntohl(i32 %13)
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %57, %3
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @SMC_RMBS_PER_LGR_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %21 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %19
  %34 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %35 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %50 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @test_bit(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %47, %33, %19
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %15

60:                                               ; preds = %15
  %61 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %62 = call i32 @smc_rmb_reserve_rtoken_idx(%struct.smc_link_group* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %91

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %70 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %68, i64* %78, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %81 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i64 %79, i64* %89, align 8
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %67, %65, %54
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @smc_rmb_reserve_rtoken_idx(%struct.smc_link_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

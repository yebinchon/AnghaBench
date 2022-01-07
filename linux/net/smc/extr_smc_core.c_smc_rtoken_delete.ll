; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_rtoken_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_rtoken_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link_group = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64 }

@SMC_RMBS_PER_LGR_MAX = common dso_local global i32 0, align 4
@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_rtoken_delete(%struct.smc_link_group* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_link_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.smc_link_group* %0, %struct.smc_link_group** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @ntohl(i32 %8)
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %62, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SMC_RMBS_PER_LGR_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %10
  %15 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %16 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %14
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %31 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @test_bit(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %28
  %36 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %37 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %47 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %58 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @clear_bit(i32 %56, i32 %59)
  store i32 0, i32* %3, align 4
  br label %68

61:                                               ; preds = %28, %14
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %10

65:                                               ; preds = %10
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %35
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

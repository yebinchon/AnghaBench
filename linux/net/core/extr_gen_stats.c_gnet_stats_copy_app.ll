; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_gen_stats.c_gnet_stats_copy_app.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_gen_stats.c_gnet_stats_copy_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnet_dump = type { i32, i64, i64, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCA_STATS_APP = common dso_local global i32 0, align 4
@TCA_STATS_PAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gnet_dump*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.gnet_dump* %0, %struct.gnet_dump** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.gnet_dump*, %struct.gnet_dump** %5, align 8
  %9 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call i32 @kmemdup(i8* %13, i32 %14, i32 %15)
  %17 = load %struct.gnet_dump*, %struct.gnet_dump** %5, align 8
  %18 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.gnet_dump*, %struct.gnet_dump** %5, align 8
  %20 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %41

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.gnet_dump*, %struct.gnet_dump** %5, align 8
  %27 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.gnet_dump*, %struct.gnet_dump** %5, align 8
  %30 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.gnet_dump*, %struct.gnet_dump** %5, align 8
  %35 = load i32, i32* @TCA_STATS_APP, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @TCA_STATS_PAD, align 4
  %39 = call i32 @gnet_stats_copy(%struct.gnet_dump* %34, i32 %35, i8* %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %54

40:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %54

41:                                               ; preds = %23
  %42 = load %struct.gnet_dump*, %struct.gnet_dump** %5, align 8
  %43 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.gnet_dump*, %struct.gnet_dump** %5, align 8
  %48 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @spin_unlock_bh(i64 %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.gnet_dump*, %struct.gnet_dump** %5, align 8
  %53 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  store i32 -1, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %40, %33
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @gnet_stats_copy(%struct.gnet_dump*, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

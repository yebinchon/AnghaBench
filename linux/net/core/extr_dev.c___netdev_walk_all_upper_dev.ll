; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_walk_all_upper_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_walk_all_upper_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { i32 }

@MAX_NEST_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32 (%struct.net_device*, i8*)*, i8*)* @__netdev_walk_all_upper_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__netdev_walk_all_upper_dev(%struct.net_device* %0, i32 (%struct.net_device*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32 (%struct.net_device*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.list_head*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 (%struct.net_device*, i8*)* %1, i32 (%struct.net_device*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load i32, i32* @MAX_NEST_DEV, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca %struct.net_device*, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* @MAX_NEST_DEV, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = alloca %struct.list_head*, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %29, %struct.net_device** %10, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.list_head* %32, %struct.list_head** %14, align 8
  br label %33

33:                                               ; preds = %91, %3
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = icmp ne %struct.net_device* %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i8*)** %6, align 8
  %40 = load %struct.net_device*, %struct.net_device** %10, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 %39(%struct.net_device* %40, i8* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %94

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %34
  store %struct.net_device* null, %struct.net_device** %9, align 8
  br label %49

49:                                               ; preds = %59, %48
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.net_device*, %struct.net_device** %10, align 8
  %52 = call %struct.net_device* @__netdev_next_upper_dev(%struct.net_device* %51, %struct.list_head** %14, i32* %18)
  store %struct.net_device* %52, %struct.net_device** %8, align 8
  %53 = load %struct.net_device*, %struct.net_device** %8, align 8
  %54 = icmp ne %struct.net_device* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %74

56:                                               ; preds = %50
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %49

60:                                               ; preds = %56
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %61, %struct.net_device** %9, align 8
  %62 = load %struct.net_device*, %struct.net_device** %8, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.list_head* %64, %struct.list_head** %13, align 8
  %65 = load %struct.net_device*, %struct.net_device** %10, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 %67
  store %struct.net_device* %65, %struct.net_device** %68, align 8
  %69 = load %struct.list_head*, %struct.list_head** %14, align 8
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.list_head*, %struct.list_head** %28, i64 %72
  store %struct.list_head* %69, %struct.list_head** %73, align 8
  br label %74

74:                                               ; preds = %60, %55
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = icmp ne %struct.net_device* %75, null
  br i1 %76, label %91, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %94

81:                                               ; preds = %77
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 %84
  %86 = load %struct.net_device*, %struct.net_device** %85, align 8
  store %struct.net_device* %86, %struct.net_device** %9, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.list_head*, %struct.list_head** %28, i64 %88
  %90 = load %struct.list_head*, %struct.list_head** %89, align 8
  store %struct.list_head* %90, %struct.list_head** %13, align 8
  br label %91

91:                                               ; preds = %81, %74
  %92 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %92, %struct.net_device** %10, align 8
  %93 = load %struct.list_head*, %struct.list_head** %13, align 8
  store %struct.list_head* %93, %struct.list_head** %14, align 8
  br label %33

94:                                               ; preds = %80, %45
  %95 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net_device* @__netdev_next_upper_dev(%struct.net_device*, %struct.list_head**, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

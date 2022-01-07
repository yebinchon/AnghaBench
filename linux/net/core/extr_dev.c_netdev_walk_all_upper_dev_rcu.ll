; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_walk_all_upper_dev_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_walk_all_upper_dev_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { i32 }

@MAX_NEST_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_walk_all_upper_dev_rcu(%struct.net_device* %0, i32 (%struct.net_device*, i8*)* %1, i8* %2) #0 {
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
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 (%struct.net_device*, i8*)* %1, i32 (%struct.net_device*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i32, i32* @MAX_NEST_DEV, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca %struct.net_device*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* @MAX_NEST_DEV, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca %struct.list_head*, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %28, %struct.net_device** %10, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.list_head* %31, %struct.list_head** %14, align 8
  br label %32

32:                                               ; preds = %86, %3
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.net_device*, %struct.net_device** %10, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = icmp ne %struct.net_device* %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i8*)** %6, align 8
  %39 = load %struct.net_device*, %struct.net_device** %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 %38(%struct.net_device* %39, i8* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %89

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %33
  store %struct.net_device* null, %struct.net_device** %9, align 8
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.net_device*, %struct.net_device** %10, align 8
  %51 = call %struct.net_device* @netdev_next_upper_dev_rcu(%struct.net_device* %50, %struct.list_head** %14)
  store %struct.net_device* %51, %struct.net_device** %8, align 8
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = icmp ne %struct.net_device* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %69

55:                                               ; preds = %49
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %56, %struct.net_device** %9, align 8
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store %struct.list_head* %59, %struct.list_head** %13, align 8
  %60 = load %struct.net_device*, %struct.net_device** %10, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 %62
  store %struct.net_device* %60, %struct.net_device** %63, align 8
  %64 = load %struct.list_head*, %struct.list_head** %14, align 8
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.list_head*, %struct.list_head** %27, i64 %67
  store %struct.list_head* %64, %struct.list_head** %68, align 8
  br label %69

69:                                               ; preds = %55, %54
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = icmp ne %struct.net_device* %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %89

76:                                               ; preds = %72
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 %79
  %81 = load %struct.net_device*, %struct.net_device** %80, align 8
  store %struct.net_device* %81, %struct.net_device** %9, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.list_head*, %struct.list_head** %27, i64 %83
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8
  store %struct.list_head* %85, %struct.list_head** %13, align 8
  br label %86

86:                                               ; preds = %76, %69
  %87 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %87, %struct.net_device** %10, align 8
  %88 = load %struct.list_head*, %struct.list_head** %13, align 8
  store %struct.list_head* %88, %struct.list_head** %14, align 8
  br label %32

89:                                               ; preds = %75, %44
  %90 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net_device* @netdev_next_upper_dev_rcu(%struct.net_device*, %struct.list_head**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

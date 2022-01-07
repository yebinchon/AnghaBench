; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pnode.c_next_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pnode.c_next_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i64, %struct.TYPE_2__, %struct.TYPE_2__, %struct.mount* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mount* (%struct.mount*, %struct.mount*)* @next_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mount* @next_group(%struct.mount* %0, %struct.mount* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.mount*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  br label %8

8:                                                ; preds = %2, %91
  br label %9

9:                                                ; preds = %8, %47
  %10 = load %struct.mount*, %struct.mount** %4, align 8
  %11 = call i32 @IS_MNT_NEW(%struct.mount* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 2
  %16 = call i32 @list_empty(%struct.TYPE_2__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load %struct.mount*, %struct.mount** %4, align 8
  %20 = call %struct.mount* @first_slave(%struct.mount* %19)
  store %struct.mount* %20, %struct.mount** %3, align 8
  br label %92

21:                                               ; preds = %13, %9
  %22 = load %struct.mount*, %struct.mount** %4, align 8
  %23 = call %struct.mount* @next_peer(%struct.mount* %22)
  store %struct.mount* %23, %struct.mount** %6, align 8
  %24 = load %struct.mount*, %struct.mount** %4, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mount*, %struct.mount** %5, align 8
  %28 = getelementptr inbounds %struct.mount, %struct.mount* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.mount*, %struct.mount** %6, align 8
  %33 = load %struct.mount*, %struct.mount** %5, align 8
  %34 = icmp eq %struct.mount* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.mount* null, %struct.mount** %3, align 8
  br label %92

36:                                               ; preds = %31
  br label %47

37:                                               ; preds = %21
  %38 = load %struct.mount*, %struct.mount** %4, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.mount*, %struct.mount** %6, align 8
  %43 = getelementptr inbounds %struct.mount, %struct.mount* %42, i32 0, i32 1
  %44 = icmp ne %struct.TYPE_2__* %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %49

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.mount*, %struct.mount** %6, align 8
  store %struct.mount* %48, %struct.mount** %4, align 8
  br label %9

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %84
  %51 = load %struct.mount*, %struct.mount** %4, align 8
  %52 = getelementptr inbounds %struct.mount, %struct.mount* %51, i32 0, i32 3
  %53 = load %struct.mount*, %struct.mount** %52, align 8
  store %struct.mount* %53, %struct.mount** %7, align 8
  %54 = load %struct.mount*, %struct.mount** %4, align 8
  %55 = getelementptr inbounds %struct.mount, %struct.mount* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.mount*, %struct.mount** %7, align 8
  %59 = getelementptr inbounds %struct.mount, %struct.mount* %58, i32 0, i32 2
  %60 = icmp ne %struct.TYPE_2__* %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load %struct.mount*, %struct.mount** %4, align 8
  %63 = call %struct.mount* @next_slave(%struct.mount* %62)
  store %struct.mount* %63, %struct.mount** %3, align 8
  br label %92

64:                                               ; preds = %50
  %65 = load %struct.mount*, %struct.mount** %7, align 8
  %66 = call %struct.mount* @next_peer(%struct.mount* %65)
  store %struct.mount* %66, %struct.mount** %4, align 8
  %67 = load %struct.mount*, %struct.mount** %7, align 8
  %68 = getelementptr inbounds %struct.mount, %struct.mount* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mount*, %struct.mount** %5, align 8
  %71 = getelementptr inbounds %struct.mount, %struct.mount* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %86

75:                                               ; preds = %64
  %76 = load %struct.mount*, %struct.mount** %7, align 8
  %77 = getelementptr inbounds %struct.mount, %struct.mount* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load %struct.mount*, %struct.mount** %4, align 8
  %81 = getelementptr inbounds %struct.mount, %struct.mount* %80, i32 0, i32 1
  %82 = icmp eq %struct.TYPE_2__* %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %86

84:                                               ; preds = %75
  %85 = load %struct.mount*, %struct.mount** %7, align 8
  store %struct.mount* %85, %struct.mount** %4, align 8
  br label %50

86:                                               ; preds = %83, %74
  %87 = load %struct.mount*, %struct.mount** %4, align 8
  %88 = load %struct.mount*, %struct.mount** %5, align 8
  %89 = icmp eq %struct.mount* %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store %struct.mount* null, %struct.mount** %3, align 8
  br label %92

91:                                               ; preds = %86
  br label %8

92:                                               ; preds = %90, %61, %35, %18
  %93 = load %struct.mount*, %struct.mount** %3, align 8
  ret %struct.mount* %93
}

declare dso_local i32 @IS_MNT_NEW(%struct.mount*) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.mount* @first_slave(%struct.mount*) #1

declare dso_local %struct.mount* @next_peer(%struct.mount*) #1

declare dso_local %struct.mount* @next_slave(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

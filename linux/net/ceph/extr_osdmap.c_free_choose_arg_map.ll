; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_free_choose_arg_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_free_choose_arg_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_choose_arg_map = type { i32, i32, %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map*, i32 }
%struct.crush_choose_arg = type { i32, i32, %struct.crush_choose_arg*, %struct.crush_choose_arg*, %struct.crush_choose_arg*, %struct.crush_choose_arg*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crush_choose_arg_map*)* @free_choose_arg_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_choose_arg_map(%struct.crush_choose_arg_map* %0) #0 {
  %2 = alloca %struct.crush_choose_arg_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.crush_choose_arg*, align 8
  store %struct.crush_choose_arg_map* %0, %struct.crush_choose_arg_map** %2, align 8
  %6 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %2, align 8
  %7 = icmp ne %struct.crush_choose_arg_map* %6, null
  br i1 %7, label %8, label %71

8:                                                ; preds = %1
  %9 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %2, align 8
  %10 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %9, i32 0, i32 6
  %11 = call i32 @RB_EMPTY_NODE(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %61, %8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %2, align 8
  %19 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %16
  %23 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %2, align 8
  %24 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %23, i32 0, i32 2
  %25 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %25, i64 %27
  %29 = bitcast %struct.crush_choose_arg_map* %28 to %struct.crush_choose_arg*
  store %struct.crush_choose_arg* %29, %struct.crush_choose_arg** %5, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %47, %22
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %5, align 8
  %33 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %5, align 8
  %38 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %37, i32 0, i32 4
  %39 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %39, i64 %41
  %43 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %42, i32 0, i32 5
  %44 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %43, align 8
  %45 = bitcast %struct.crush_choose_arg* %44 to %struct.crush_choose_arg_map*
  %46 = call i32 @kfree(%struct.crush_choose_arg_map* %45)
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %5, align 8
  %52 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %51, i32 0, i32 4
  %53 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %52, align 8
  %54 = bitcast %struct.crush_choose_arg* %53 to %struct.crush_choose_arg_map*
  %55 = call i32 @kfree(%struct.crush_choose_arg_map* %54)
  %56 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %5, align 8
  %57 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %56, i32 0, i32 3
  %58 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %57, align 8
  %59 = bitcast %struct.crush_choose_arg* %58 to %struct.crush_choose_arg_map*
  %60 = call i32 @kfree(%struct.crush_choose_arg_map* %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %2, align 8
  %66 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %65, i32 0, i32 2
  %67 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %66, align 8
  %68 = call i32 @kfree(%struct.crush_choose_arg_map* %67)
  %69 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %2, align 8
  %70 = call i32 @kfree(%struct.crush_choose_arg_map* %69)
  br label %71

71:                                               ; preds = %64, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @kfree(%struct.crush_choose_arg_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

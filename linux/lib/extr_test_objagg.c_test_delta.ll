; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_delta.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_test_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.world = type { i32 }
%struct.objagg = type { i32 }

@delta_ops = common dso_local global i32 0, align 4
@action_items = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_delta() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.world, align 4
  %3 = alloca %struct.objagg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.world* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = call %struct.objagg* @objagg_create(i32* @delta_ops, i32* null, %struct.world* %2)
  store %struct.objagg* %7, %struct.objagg** %3, align 8
  %8 = load %struct.objagg*, %struct.objagg** %3, align 8
  %9 = call i64 @IS_ERR(%struct.objagg* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load %struct.objagg*, %struct.objagg** %3, align 8
  %13 = call i32 @PTR_ERR(%struct.objagg* %12)
  store i32 %13, i32* %1, align 4
  br label %57

14:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** @action_items, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.objagg*, %struct.objagg** %3, align 8
  %22 = load i32*, i32** @action_items, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @test_delta_action_item(%struct.world* %2, %struct.objagg* %21, i32* %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %37

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.objagg*, %struct.objagg** %3, align 8
  %36 = call i32 @objagg_destroy(%struct.objagg* %35)
  store i32 0, i32* %1, align 4
  br label %57

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %50, %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.objagg*, %struct.objagg** %3, align 8
  %45 = load i32*, i32** @action_items, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @test_delta_action_item(%struct.world* %2, %struct.objagg* %44, i32* %48, i32 1)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load %struct.objagg*, %struct.objagg** %3, align 8
  %55 = call i32 @objagg_destroy(%struct.objagg* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %53, %34, %11
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.objagg* @objagg_create(i32*, i32*, %struct.world*) #2

declare dso_local i64 @IS_ERR(%struct.objagg*) #2

declare dso_local i32 @PTR_ERR(%struct.objagg*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @test_delta_action_item(%struct.world*, %struct.objagg*, i32*, i32) #2

declare dso_local i32 @objagg_destroy(%struct.objagg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

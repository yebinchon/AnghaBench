; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_algo.c_batadv_algo_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_algo.c_batadv_algo_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_algo_ops = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"Trying to register already registered routing algorithm: %s\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Routing algo '%s' does not implement required ops\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@batadv_algo_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_algo_register(%struct.batadv_algo_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.batadv_algo_ops*, align 8
  %4 = alloca %struct.batadv_algo_ops*, align 8
  store %struct.batadv_algo_ops* %0, %struct.batadv_algo_ops** %3, align 8
  %5 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %6 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.batadv_algo_ops* @batadv_algo_get(i32 %7)
  store %struct.batadv_algo_ops* %8, %struct.batadv_algo_ops** %4, align 8
  %9 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %4, align 8
  %10 = icmp ne %struct.batadv_algo_ops* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %13 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %20 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %18
  %25 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %26 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %32 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %38 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %44 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %50 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %48, %42, %36, %30, %24, %18
  %55 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %56 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %68

61:                                               ; preds = %48
  %62 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %63 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %62, i32 0, i32 0
  %64 = call i32 @INIT_HLIST_NODE(i32* %63)
  %65 = load %struct.batadv_algo_ops*, %struct.batadv_algo_ops** %3, align 8
  %66 = getelementptr inbounds %struct.batadv_algo_ops, %struct.batadv_algo_ops* %65, i32 0, i32 0
  %67 = call i32 @hlist_add_head(i32* %66, i32* @batadv_algo_list)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %54, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.batadv_algo_ops* @batadv_algo_get(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

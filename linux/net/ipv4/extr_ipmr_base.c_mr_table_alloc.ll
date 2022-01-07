; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr_base.c_mr_table_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr_base.c_mr_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32, i32, i32, %struct.mr_table_ops, i32, i32, i32 }
%struct.mr_table_ops = type { i32 }
%struct.net = type { i32 }
%struct.timer_list = type opaque
%struct.timer_list.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mr_table* @mr_table_alloc(%struct.net* %0, i32 %1, %struct.mr_table_ops* %2, void (%struct.timer_list*)* %3, void (%struct.mr_table*, %struct.net*)* %4) #0 {
  %6 = alloca %struct.mr_table*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mr_table_ops*, align 8
  %10 = alloca void (%struct.timer_list*)*, align 8
  %11 = alloca void (%struct.mr_table*, %struct.net*)*, align 8
  %12 = alloca %struct.mr_table*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mr_table_ops* %2, %struct.mr_table_ops** %9, align 8
  store void (%struct.timer_list*)* %3, void (%struct.timer_list*)** %10, align 8
  store void (%struct.mr_table*, %struct.net*)* %4, void (%struct.mr_table*, %struct.net*)** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mr_table* @kzalloc(i32 32, i32 %14)
  store %struct.mr_table* %15, %struct.mr_table** %12, align 8
  %16 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %17 = icmp ne %struct.mr_table* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.mr_table* @ERR_PTR(i32 %20)
  store %struct.mr_table* %21, %struct.mr_table** %6, align 8
  br label %67

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %25 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %27 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %26, i32 0, i32 6
  %28 = load %struct.net*, %struct.net** %7, align 8
  %29 = call i32 @write_pnet(i32* %27, %struct.net* %28)
  %30 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %31 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %30, i32 0, i32 4
  %32 = load %struct.mr_table_ops*, %struct.mr_table_ops** %9, align 8
  %33 = bitcast %struct.mr_table_ops* %31 to i8*
  %34 = bitcast %struct.mr_table_ops* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %36 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %35, i32 0, i32 5
  %37 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %38 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.mr_table_ops, %struct.mr_table_ops* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rhltable_init(i32* %36, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %22
  %45 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %46 = call i32 @kfree(%struct.mr_table* %45)
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.mr_table* @ERR_PTR(i32 %47)
  store %struct.mr_table* %48, %struct.mr_table** %6, align 8
  br label %67

49:                                               ; preds = %22
  %50 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %51 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %50, i32 0, i32 3
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %54 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %53, i32 0, i32 2
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %57 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %56, i32 0, i32 1
  %58 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %10, align 8
  %59 = bitcast void (%struct.timer_list*)* %58 to void (%struct.timer_list.0*)*
  %60 = call i32 @timer_setup(i32* %57, void (%struct.timer_list.0*)* %59, i32 0)
  %61 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %62 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 4
  %63 = load void (%struct.mr_table*, %struct.net*)*, void (%struct.mr_table*, %struct.net*)** %11, align 8
  %64 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  %65 = load %struct.net*, %struct.net** %7, align 8
  call void %63(%struct.mr_table* %64, %struct.net* %65)
  %66 = load %struct.mr_table*, %struct.mr_table** %12, align 8
  store %struct.mr_table* %66, %struct.mr_table** %6, align 8
  br label %67

67:                                               ; preds = %49, %44, %18
  %68 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  ret %struct.mr_table* %68
}

declare dso_local %struct.mr_table* @kzalloc(i32, i32) #1

declare dso_local %struct.mr_table* @ERR_PTR(i32) #1

declare dso_local i32 @write_pnet(i32*, %struct.net*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rhltable_init(i32*, i32) #1

declare dso_local i32 @kfree(%struct.mr_table*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, void (%struct.timer_list.0*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

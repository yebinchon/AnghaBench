; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_register_migration.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_register_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.z3fold_pool = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, %struct.z3fold_pool* }

@z3fold_mnt = common dso_local global %struct.TYPE_6__* null, align 8
@z3fold_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z3fold_pool*)* @z3fold_register_migration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z3fold_register_migration(%struct.z3fold_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z3fold_pool*, align 8
  store %struct.z3fold_pool* %0, %struct.z3fold_pool** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @z3fold_mnt, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_7__* @alloc_anon_inode(i32 %6)
  %8 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %9 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %8, i32 0, i32 0
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %9, align 8
  %10 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %11 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = call i64 @IS_ERR(%struct.TYPE_7__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %17 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %16, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %17, align 8
  store i32 1, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %20 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %21 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store %struct.z3fold_pool* %19, %struct.z3fold_pool** %25, align 8
  %26 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %27 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32* @z3fold_aops, i32** %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_7__* @alloc_anon_inode(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

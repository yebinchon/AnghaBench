; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_insert_rehash.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_insert_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable = type { i32, i32 }
%struct.bucket_table = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable*, %struct.bucket_table*)* @rhashtable_insert_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rhashtable_insert_rehash(%struct.rhashtable* %0, %struct.bucket_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rhashtable*, align 8
  %5 = alloca %struct.bucket_table*, align 8
  %6 = alloca %struct.bucket_table*, align 8
  %7 = alloca %struct.bucket_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rhashtable* %0, %struct.rhashtable** %4, align 8
  store %struct.bucket_table* %1, %struct.bucket_table** %5, align 8
  %10 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %11 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %14 = call %struct.bucket_table* @rht_dereference_rcu(i32 %12, %struct.rhashtable* %13)
  store %struct.bucket_table* %14, %struct.bucket_table** %6, align 8
  %15 = load %struct.bucket_table*, %struct.bucket_table** %5, align 8
  %16 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %21 = load %struct.bucket_table*, %struct.bucket_table** %5, align 8
  %22 = call i64 @rht_grow_above_75(%struct.rhashtable* %20, %struct.bucket_table* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = mul i32 %25, 2
  store i32 %26, i32* %8, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %29 = load %struct.bucket_table*, %struct.bucket_table** %5, align 8
  %30 = icmp ne %struct.bucket_table* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %67

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = load i32, i32* @__GFP_NOWARN, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.bucket_table* @bucket_table_alloc(%struct.rhashtable* %36, i32 %37, i32 %40)
  store %struct.bucket_table* %41, %struct.bucket_table** %7, align 8
  %42 = load %struct.bucket_table*, %struct.bucket_table** %7, align 8
  %43 = icmp eq %struct.bucket_table* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %67

45:                                               ; preds = %33
  %46 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %47 = load %struct.bucket_table*, %struct.bucket_table** %5, align 8
  %48 = load %struct.bucket_table*, %struct.bucket_table** %7, align 8
  %49 = call i32 @rhashtable_rehash_attach(%struct.rhashtable* %46, %struct.bucket_table* %47, %struct.bucket_table* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.bucket_table*, %struct.bucket_table** %7, align 8
  %54 = call i32 @bucket_table_free(%struct.bucket_table* %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @EEXIST, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %52
  br label %65

61:                                               ; preds = %45
  %62 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %63 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %62, i32 0, i32 0
  %64 = call i32 @schedule_work(i32* %63)
  br label %65

65:                                               ; preds = %61, %60
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %86

67:                                               ; preds = %44, %31
  %68 = load %struct.bucket_table*, %struct.bucket_table** %5, align 8
  %69 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rcu_access_pointer(i32 %70)
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %86

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %82 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %81, i32 0, i32 0
  %83 = call i32 @schedule_work(i32* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %74, %65
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.bucket_table* @rht_dereference_rcu(i32, %struct.rhashtable*) #1

declare dso_local i64 @rht_grow_above_75(%struct.rhashtable*, %struct.bucket_table*) #1

declare dso_local %struct.bucket_table* @bucket_table_alloc(%struct.rhashtable*, i32, i32) #1

declare dso_local i32 @rhashtable_rehash_attach(%struct.rhashtable*, %struct.bucket_table*, %struct.bucket_table*) #1

declare dso_local i32 @bucket_table_free(%struct.bucket_table*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

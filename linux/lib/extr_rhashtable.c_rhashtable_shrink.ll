; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bucket_table = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable*)* @rhashtable_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rhashtable_shrink(%struct.rhashtable* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rhashtable*, align 8
  %4 = alloca %struct.bucket_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rhashtable* %0, %struct.rhashtable** %3, align 8
  %7 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %8 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %11 = call %struct.bucket_table* @rht_dereference(i32 %9, %struct.rhashtable* %10)
  store %struct.bucket_table* %11, %struct.bucket_table** %4, align 8
  %12 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %13 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %12, i32 0, i32 1
  %14 = call i32 @atomic_read(i32* %13)
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 %18, 3
  %20 = udiv i32 %19, 2
  %21 = call i32 @roundup_pow_of_two(i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %25 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %31 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %36 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %56

41:                                               ; preds = %34
  %42 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %43 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %46 = call %struct.bucket_table* @rht_dereference(i32 %44, %struct.rhashtable* %45)
  %47 = icmp ne %struct.bucket_table* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EEXIST, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %53 = load %struct.bucket_table*, %struct.bucket_table** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @rhashtable_rehash_alloc(%struct.rhashtable* %52, %struct.bucket_table* %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %48, %40
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.bucket_table* @rht_dereference(i32, %struct.rhashtable*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @rhashtable_rehash_alloc(%struct.rhashtable*, %struct.bucket_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

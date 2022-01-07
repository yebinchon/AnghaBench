; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_rehash_chain.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_rehash_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable = type { i32 }
%struct.bucket_table = type { i32 }
%struct.rhash_lock_head = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable*, i32)* @rhashtable_rehash_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rhashtable_rehash_chain(%struct.rhashtable* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rhashtable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bucket_table*, align 8
  %7 = alloca %struct.rhash_lock_head**, align 8
  %8 = alloca i32, align 4
  store %struct.rhashtable* %0, %struct.rhashtable** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %10 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %13 = call %struct.bucket_table* @rht_dereference(i32 %11, %struct.rhashtable* %12)
  store %struct.bucket_table* %13, %struct.bucket_table** %6, align 8
  %14 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.rhash_lock_head** @rht_bucket_var(%struct.bucket_table* %14, i32 %15)
  store %struct.rhash_lock_head** %16, %struct.rhash_lock_head*** %7, align 8
  %17 = load %struct.rhash_lock_head**, %struct.rhash_lock_head*** %7, align 8
  %18 = icmp ne %struct.rhash_lock_head** %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %22 = load %struct.rhash_lock_head**, %struct.rhash_lock_head*** %7, align 8
  %23 = call i32 @rht_lock(%struct.bucket_table* %21, %struct.rhash_lock_head** %22)
  br label %24

24:                                               ; preds = %31, %20
  %25 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %26 = load %struct.rhash_lock_head**, %struct.rhash_lock_head*** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @rhashtable_rehash_one(%struct.rhashtable* %25, %struct.rhash_lock_head** %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %24

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %40 = load %struct.rhash_lock_head**, %struct.rhash_lock_head*** %7, align 8
  %41 = call i32 @rht_unlock(%struct.bucket_table* %39, %struct.rhash_lock_head** %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.bucket_table* @rht_dereference(i32, %struct.rhashtable*) #1

declare dso_local %struct.rhash_lock_head** @rht_bucket_var(%struct.bucket_table*, i32) #1

declare dso_local i32 @rht_lock(%struct.bucket_table*, %struct.rhash_lock_head**) #1

declare dso_local i32 @rhashtable_rehash_one(%struct.rhashtable*, %struct.rhash_lock_head**, i32) #1

declare dso_local i32 @rht_unlock(%struct.bucket_table*, %struct.rhash_lock_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

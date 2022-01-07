; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_add_owner.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_add_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i64, i32, i32 }
%struct.gen_pool_chunk = type { i64, i64, i32, i32, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_pool_add_owner(%struct.gen_pool* %0, i64 %1, i32 %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gen_pool*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gen_pool_chunk*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gen_pool* %0, %struct.gen_pool** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %19 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = lshr i64 %17, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = call i32 @BITS_TO_LONGS(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = add i64 40, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call %struct.gen_pool_chunk* @vzalloc_node(i32 %29, i32 %30)
  store %struct.gen_pool_chunk* %31, %struct.gen_pool_chunk** %14, align 8
  %32 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %14, align 8
  %33 = icmp eq %struct.gen_pool_chunk* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %71

40:                                               ; preds = %6
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %14, align 8
  %43 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %14, align 8
  %46 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %47, %48
  %50 = sub i64 %49, 1
  %51 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %14, align 8
  %52 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %14, align 8
  %55 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %14, align 8
  %57 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %56, i32 0, i32 3
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @atomic_long_set(i32* %57, i64 %58)
  %60 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %61 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %60, i32 0, i32 1
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.gen_pool_chunk*, %struct.gen_pool_chunk** %14, align 8
  %64 = getelementptr inbounds %struct.gen_pool_chunk, %struct.gen_pool_chunk* %63, i32 0, i32 2
  %65 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %66 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %65, i32 0, i32 2
  %67 = call i32 @list_add_rcu(i32* %64, i32* %66)
  %68 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %69 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock(i32* %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %40, %37
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local %struct.gen_pool_chunk* @vzalloc_node(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_long_set(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

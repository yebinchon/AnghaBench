; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zbud.c_zbud_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zbud.c_zbud_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zbud_pool = type { i32, i32*, i32 }
%struct.zbud_header = type { i64, i64, i32, i32, i64 }

@ZHDR_SIZE_ALIGNED = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zbud_free(%struct.zbud_pool* %0, i64 %1) #0 {
  %3 = alloca %struct.zbud_pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zbud_header*, align 8
  %6 = alloca i32, align 4
  store %struct.zbud_pool* %0, %struct.zbud_pool** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.zbud_pool*, %struct.zbud_pool** %3, align 8
  %8 = getelementptr inbounds %struct.zbud_pool, %struct.zbud_pool* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.zbud_header* @handle_to_zbud_header(i64 %10)
  store %struct.zbud_header* %11, %struct.zbud_header** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ZHDR_SIZE_ALIGNED, align 8
  %14 = sub i64 %12, %13
  %15 = load i64, i64* @PAGE_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %21 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %24 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %27 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.zbud_pool*, %struct.zbud_pool** %3, align 8
  %32 = getelementptr inbounds %struct.zbud_pool, %struct.zbud_pool* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %73

34:                                               ; preds = %25
  %35 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %36 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %35, i32 0, i32 2
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %39 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %44 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %49 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %48, i32 0, i32 3
  %50 = call i32 @list_del(i32* %49)
  %51 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %52 = call i32 @free_zbud_page(%struct.zbud_header* %51)
  %53 = load %struct.zbud_pool*, %struct.zbud_pool** %3, align 8
  %54 = getelementptr inbounds %struct.zbud_pool, %struct.zbud_pool* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  br label %69

57:                                               ; preds = %42, %34
  %58 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %59 = call i32 @num_free_chunks(%struct.zbud_header* %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.zbud_header*, %struct.zbud_header** %5, align 8
  %61 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %60, i32 0, i32 2
  %62 = load %struct.zbud_pool*, %struct.zbud_pool** %3, align 8
  %63 = getelementptr inbounds %struct.zbud_pool, %struct.zbud_pool* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @list_add(i32* %61, i32* %67)
  br label %69

69:                                               ; preds = %57, %47
  %70 = load %struct.zbud_pool*, %struct.zbud_pool** %3, align 8
  %71 = getelementptr inbounds %struct.zbud_pool, %struct.zbud_pool* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  br label %73

73:                                               ; preds = %69, %30
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.zbud_header* @handle_to_zbud_header(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_zbud_page(%struct.zbud_header*) #1

declare dso_local i32 @num_free_chunks(%struct.zbud_header*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

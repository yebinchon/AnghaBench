; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_sunrpc_cache_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_sunrpc_cache_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32, i32, i32*, i32 (%struct.cache_head*, %struct.cache_head*)*, i32 (%struct.cache_head*, %struct.cache_head*)*, %struct.cache_head* (...)* }
%struct.cache_head = type { i32, i32, i32 }

@CACHE_VALID = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_head* @sunrpc_cache_update(%struct.cache_detail* %0, %struct.cache_head* %1, %struct.cache_head* %2, i32 %3) #0 {
  %5 = alloca %struct.cache_head*, align 8
  %6 = alloca %struct.cache_detail*, align 8
  %7 = alloca %struct.cache_head*, align 8
  %8 = alloca %struct.cache_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_head*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %6, align 8
  store %struct.cache_head* %1, %struct.cache_head** %7, align 8
  store %struct.cache_head* %2, %struct.cache_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @CACHE_VALID, align 4
  %12 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %13 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %12, i32 0, i32 2
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %61, label %16

16:                                               ; preds = %4
  %17 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %18 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* @CACHE_VALID, align 4
  %21 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %22 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %21, i32 0, i32 2
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @CACHE_NEGATIVE, align 4
  %27 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %28 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @CACHE_NEGATIVE, align 4
  %33 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %34 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %33, i32 0, i32 2
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  br label %43

36:                                               ; preds = %25
  %37 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %38 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %37, i32 0, i32 3
  %39 = load i32 (%struct.cache_head*, %struct.cache_head*)*, i32 (%struct.cache_head*, %struct.cache_head*)** %38, align 8
  %40 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %41 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %42 = call i32 %39(%struct.cache_head* %40, %struct.cache_head* %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %45 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %46 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %49 = call i32 @cache_fresh_locked(%struct.cache_head* %44, i32 %47, %struct.cache_detail* %48)
  %50 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %51 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %54 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %55 = call i32 @cache_fresh_unlocked(%struct.cache_head* %53, %struct.cache_detail* %54)
  %56 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  store %struct.cache_head* %56, %struct.cache_head** %5, align 8
  br label %140

57:                                               ; preds = %16
  %58 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %59 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %4
  %62 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %63 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %62, i32 0, i32 5
  %64 = load %struct.cache_head* (...)*, %struct.cache_head* (...)** %63, align 8
  %65 = call %struct.cache_head* (...) %64()
  store %struct.cache_head* %65, %struct.cache_head** %10, align 8
  %66 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %67 = icmp ne %struct.cache_head* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %70 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %71 = call i32 @cache_put(%struct.cache_head* %69, %struct.cache_detail* %70)
  store %struct.cache_head* null, %struct.cache_head** %5, align 8
  br label %140

72:                                               ; preds = %61
  %73 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %74 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %75 = call i32 @cache_init(%struct.cache_head* %73, %struct.cache_detail* %74)
  %76 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %77 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %76, i32 0, i32 4
  %78 = load i32 (%struct.cache_head*, %struct.cache_head*)*, i32 (%struct.cache_head*, %struct.cache_head*)** %77, align 8
  %79 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %80 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %81 = call i32 %78(%struct.cache_head* %79, %struct.cache_head* %80)
  %82 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %83 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %82, i32 0, i32 0
  %84 = call i32 @spin_lock(i32* %83)
  %85 = load i32, i32* @CACHE_NEGATIVE, align 4
  %86 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %87 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %86, i32 0, i32 2
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %72
  %91 = load i32, i32* @CACHE_NEGATIVE, align 4
  %92 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %93 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %92, i32 0, i32 2
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  br label %102

95:                                               ; preds = %72
  %96 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %97 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %96, i32 0, i32 3
  %98 = load i32 (%struct.cache_head*, %struct.cache_head*)*, i32 (%struct.cache_head*, %struct.cache_head*)** %97, align 8
  %99 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %100 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %101 = call i32 %98(%struct.cache_head* %99, %struct.cache_head* %100)
  br label %102

102:                                              ; preds = %95, %90
  %103 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %104 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %103, i32 0, i32 1
  %105 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %106 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @hlist_add_head(i32* %104, i32* %110)
  %112 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %113 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %117 = call i32 @cache_get(%struct.cache_head* %116)
  %118 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %119 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %120 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %123 = call i32 @cache_fresh_locked(%struct.cache_head* %118, i32 %121, %struct.cache_detail* %122)
  %124 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %125 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %126 = call i32 @cache_fresh_locked(%struct.cache_head* %124, i32 0, %struct.cache_detail* %125)
  %127 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %128 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %131 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %132 = call i32 @cache_fresh_unlocked(%struct.cache_head* %130, %struct.cache_detail* %131)
  %133 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %134 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %135 = call i32 @cache_fresh_unlocked(%struct.cache_head* %133, %struct.cache_detail* %134)
  %136 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %137 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %138 = call i32 @cache_put(%struct.cache_head* %136, %struct.cache_detail* %137)
  %139 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  store %struct.cache_head* %139, %struct.cache_head** %5, align 8
  br label %140

140:                                              ; preds = %102, %68, %43
  %141 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  ret %struct.cache_head* %141
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cache_fresh_locked(%struct.cache_head*, i32, %struct.cache_detail*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cache_fresh_unlocked(%struct.cache_head*, %struct.cache_detail*) #1

declare dso_local i32 @cache_put(%struct.cache_head*, %struct.cache_detail*) #1

declare dso_local i32 @cache_init(%struct.cache_head*, %struct.cache_detail*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @cache_get(%struct.cache_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

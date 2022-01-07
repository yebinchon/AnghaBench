; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_create_pool.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_create_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_pool = type { %struct.size_class**, i32, i32 }
%struct.size_class = type { i32, i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ZS_SIZE_CLASSES = common dso_local global i32 0, align 4
@ZS_MIN_ALLOC_SIZE = common dso_local global i32 0, align 4
@ZS_SIZE_CLASS_DELTA = common dso_local global i32 0, align 4
@ZS_MAX_ALLOC_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@huge_class_size = common dso_local global i32 0, align 4
@ZS_HANDLE_SIZE = common dso_local global i32 0, align 4
@ZS_EMPTY = common dso_local global i32 0, align 4
@NR_ZS_FULLNESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zs_pool* @zs_create_pool(i8* %0) #0 {
  %2 = alloca %struct.zs_pool*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zs_pool*, align 8
  %6 = alloca %struct.size_class*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.size_class*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.size_class* null, %struct.size_class** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 16, i32 %12)
  %14 = bitcast i8* %13 to %struct.zs_pool*
  store %struct.zs_pool* %14, %struct.zs_pool** %5, align 8
  %15 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %16 = icmp ne %struct.zs_pool* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.zs_pool* null, %struct.zs_pool** %2, align 8
  br label %159

18:                                               ; preds = %1
  %19 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %20 = call i32 @init_deferred_free(%struct.zs_pool* %19)
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kstrdup(i8* %21, i32 %22)
  %24 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %25 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %27 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %156

31:                                               ; preds = %18
  %32 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %33 = call i64 @create_cache(%struct.zs_pool* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %156

36:                                               ; preds = %31
  %37 = load i32, i32* @ZS_SIZE_CLASSES, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %141, %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %144

42:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  %43 = load i32, i32* @ZS_MIN_ALLOC_SIZE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @ZS_SIZE_CLASS_DELTA, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ZS_MAX_ALLOC_SIZE, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @ZS_MAX_ALLOC_SIZE, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @get_pages_per_zspage(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* @huge_class_size, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* @huge_class_size, align 4
  %71 = load i32, i32* @ZS_HANDLE_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @huge_class_size, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* @huge_class_size, align 4
  br label %75

75:                                               ; preds = %69, %66, %63, %53
  %76 = load %struct.size_class*, %struct.size_class** %6, align 8
  %77 = icmp ne %struct.size_class* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.size_class*, %struct.size_class** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @can_merge(%struct.size_class* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.size_class*, %struct.size_class** %6, align 8
  %86 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %87 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %86, i32 0, i32 0
  %88 = load %struct.size_class**, %struct.size_class*** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.size_class*, %struct.size_class** %88, i64 %90
  store %struct.size_class* %85, %struct.size_class** %91, align 8
  br label %141

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %75
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i8* @kzalloc(i32 32, i32 %94)
  %96 = bitcast i8* %95 to %struct.size_class*
  store %struct.size_class* %96, %struct.size_class** %10, align 8
  %97 = load %struct.size_class*, %struct.size_class** %10, align 8
  %98 = icmp ne %struct.size_class* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %156

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.size_class*, %struct.size_class** %10, align 8
  %103 = getelementptr inbounds %struct.size_class, %struct.size_class* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.size_class*, %struct.size_class** %10, align 8
  %106 = getelementptr inbounds %struct.size_class, %struct.size_class* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.size_class*, %struct.size_class** %10, align 8
  %109 = getelementptr inbounds %struct.size_class, %struct.size_class* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.size_class*, %struct.size_class** %10, align 8
  %112 = getelementptr inbounds %struct.size_class, %struct.size_class* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.size_class*, %struct.size_class** %10, align 8
  %114 = getelementptr inbounds %struct.size_class, %struct.size_class* %113, i32 0, i32 5
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.size_class*, %struct.size_class** %10, align 8
  %117 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %118 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %117, i32 0, i32 0
  %119 = load %struct.size_class**, %struct.size_class*** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.size_class*, %struct.size_class** %119, i64 %121
  store %struct.size_class* %116, %struct.size_class** %122, align 8
  %123 = load i32, i32* @ZS_EMPTY, align 4
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %136, %100
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @NR_ZS_FULLNESS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load %struct.size_class*, %struct.size_class** %10, align 8
  %130 = getelementptr inbounds %struct.size_class, %struct.size_class* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i32 @INIT_LIST_HEAD(i32* %134)
  br label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %124

139:                                              ; preds = %124
  %140 = load %struct.size_class*, %struct.size_class** %10, align 8
  store %struct.size_class* %140, %struct.size_class** %6, align 8
  br label %141

141:                                              ; preds = %139, %84
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %4, align 4
  br label %39

144:                                              ; preds = %39
  %145 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %146 = load i8*, i8** %3, align 8
  %147 = call i32 @zs_pool_stat_create(%struct.zs_pool* %145, i8* %146)
  %148 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %149 = call i64 @zs_register_migration(%struct.zs_pool* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %156

152:                                              ; preds = %144
  %153 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %154 = call i32 @zs_register_shrinker(%struct.zs_pool* %153)
  %155 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  store %struct.zs_pool* %155, %struct.zs_pool** %2, align 8
  br label %159

156:                                              ; preds = %151, %99, %35, %30
  %157 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %158 = call i32 @zs_destroy_pool(%struct.zs_pool* %157)
  store %struct.zs_pool* null, %struct.zs_pool** %2, align 8
  br label %159

159:                                              ; preds = %156, %152, %17
  %160 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  ret %struct.zs_pool* %160
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @init_deferred_free(%struct.zs_pool*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i64 @create_cache(%struct.zs_pool*) #1

declare dso_local i32 @get_pages_per_zspage(i32) #1

declare dso_local i64 @can_merge(%struct.size_class*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @zs_pool_stat_create(%struct.zs_pool*, i8*) #1

declare dso_local i64 @zs_register_migration(%struct.zs_pool*) #1

declare dso_local i32 @zs_register_shrinker(%struct.zs_pool*) #1

declare dso_local i32 @zs_destroy_pool(%struct.zs_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

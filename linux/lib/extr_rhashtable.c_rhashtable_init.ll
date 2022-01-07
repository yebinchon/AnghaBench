; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i32 }
%struct.rhashtable_params = type { i32, i64, i64, i32, i64, i32 }
%struct.bucket_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@HASH_MIN_SIZE = common dso_local global i32 0, align 4
@jhash = common dso_local global i32 0, align 4
@rhashtable_jhash2 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@rht_deferred_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rhashtable_init(%struct.rhashtable* %0, %struct.rhashtable_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rhashtable*, align 8
  %5 = alloca %struct.rhashtable_params*, align 8
  %6 = alloca %struct.bucket_table*, align 8
  %7 = alloca i64, align 8
  store %struct.rhashtable* %0, %struct.rhashtable** %4, align 8
  store %struct.rhashtable_params* %1, %struct.rhashtable_params** %5, align 8
  %8 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %9 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %14 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12, %2
  %18 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %19 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %24 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %12
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %173

30:                                               ; preds = %22, %17
  %31 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %32 = call i32 @memset(%struct.rhashtable* %31, i32 0, i32 56)
  %33 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %34 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %33, i32 0, i32 7
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %37 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %36, i32 0, i32 6
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %40 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %39, i32 0, i32 5
  %41 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %42 = call i32 @memcpy(%struct.TYPE_3__* %40, %struct.rhashtable_params* %41, i32 48)
  %43 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %44 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %30
  %48 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %49 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @roundup_pow_of_two(i64 %50)
  %52 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %53 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %47, %30
  %56 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %57 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %56, i32 0, i32 0
  store i32 -2147483648, i32* %57, align 8
  %58 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %59 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %55
  %63 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %64 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @rounddown_pow_of_two(i64 %65)
  %67 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %68 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %71 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %75 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = udiv i32 %76, 2
  %78 = icmp ult i32 %73, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %62
  %80 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %81 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %83, 2
  %85 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %86 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %79, %62
  br label %88

88:                                               ; preds = %87, %55
  %89 = load i32, i32* @u16, align 4
  %90 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %91 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @HASH_MIN_SIZE, align 4
  %95 = call i8* @max_t(i32 %89, i8* %93, i32 %94)
  %96 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %97 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  %99 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %100 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %99, i32 0, i32 5
  %101 = call i64 @rounded_hashtable_size(%struct.TYPE_3__* %100)
  store i64 %101, i64* %7, align 8
  %102 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %103 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %107 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.rhashtable_params*, %struct.rhashtable_params** %5, align 8
  %109 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %88
  %113 = load i32, i32* @jhash, align 4
  %114 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %115 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  store i32 %113, i32* %116, align 8
  %117 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %118 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = and i64 %120, 3
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %112
  %124 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %125 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = udiv i64 %127, 4
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  %130 = load i32, i32* @rhashtable_jhash2, align 4
  %131 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %132 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  store i32 %130, i32* %133, align 8
  br label %134

134:                                              ; preds = %123, %112
  br label %135

135:                                              ; preds = %134, %88
  %136 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call %struct.bucket_table* @bucket_table_alloc(%struct.rhashtable* %136, i64 %137, i32 %138)
  store %struct.bucket_table* %139, %struct.bucket_table** %6, align 8
  %140 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %141 = icmp eq %struct.bucket_table* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %135
  %146 = load i32, i32* @u16, align 4
  %147 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %148 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* @HASH_MIN_SIZE, align 4
  %152 = call i8* @max_t(i32 %146, i8* %150, i32 %151)
  %153 = ptrtoint i8* %152 to i64
  store i64 %153, i64* %7, align 8
  %154 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i32, i32* @GFP_KERNEL, align 4
  %157 = load i32, i32* @__GFP_NOFAIL, align 4
  %158 = or i32 %156, %157
  %159 = call %struct.bucket_table* @bucket_table_alloc(%struct.rhashtable* %154, i64 %155, i32 %158)
  store %struct.bucket_table* %159, %struct.bucket_table** %6, align 8
  br label %160

160:                                              ; preds = %145, %135
  %161 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %162 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %161, i32 0, i32 4
  %163 = call i32 @atomic_set(i32* %162, i32 0)
  %164 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %165 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.bucket_table*, %struct.bucket_table** %6, align 8
  %168 = call i32 @RCU_INIT_POINTER(i32 %166, %struct.bucket_table* %167)
  %169 = load %struct.rhashtable*, %struct.rhashtable** %4, align 8
  %170 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %169, i32 0, i32 2
  %171 = load i32, i32* @rht_deferred_worker, align 4
  %172 = call i32 @INIT_WORK(i32* %170, i32 %171)
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %160, %27
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @memset(%struct.rhashtable*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.rhashtable_params*, i32) #1

declare dso_local i8* @roundup_pow_of_two(i64) #1

declare dso_local i32 @rounddown_pow_of_two(i64) #1

declare dso_local i8* @max_t(i32, i8*, i32) #1

declare dso_local i64 @rounded_hashtable_size(%struct.TYPE_3__*) #1

declare dso_local %struct.bucket_table* @bucket_table_alloc(%struct.rhashtable*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.bucket_table*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

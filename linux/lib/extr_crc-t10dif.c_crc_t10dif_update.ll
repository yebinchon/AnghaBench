; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_crc-t10dif.c_crc_t10dif_update.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_crc-t10dif.c_crc_t10dif_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.shash_desc, [2 x i8] }
%struct.shash_desc = type { i32 }

@crct10dif_fallback = common dso_local global i32 0, align 4
@crct10dif_tfm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc_t10dif_update(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.anon, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i64 @static_key_false(i32* @crct10dif_fallback)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @crc_t10dif_generic(i32 %13, i8* %14, i64 %15)
  store i32 %16, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load i32, i32* @crct10dif_tfm, align 4
  %20 = call i32 @rcu_dereference(i32 %19)
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %22 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0
  %26 = bitcast i8* %25 to i32*
  store i32 %23, i32* %26, align 4
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @crypto_shash_update(%struct.shash_desc* %27, i8* %28, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %34, i64 0, i64 0
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %17, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @static_key_false(i32*) #1

declare dso_local i32 @crc_t10dif_generic(i32, i8*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i8*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

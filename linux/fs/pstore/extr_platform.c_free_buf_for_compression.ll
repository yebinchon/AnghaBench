; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_free_buf_for_compression.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_free_buf_for_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_PSTORE_COMPRESS = common dso_local global i32 0, align 4
@tfm = common dso_local global i32* null, align 8
@big_oops_buf = common dso_local global i32* null, align 8
@big_oops_buf_sz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_buf_for_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buf_for_compression() #0 {
  %1 = load i32, i32* @CONFIG_PSTORE_COMPRESS, align 4
  %2 = call i64 @IS_ENABLED(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32*, i32** @tfm, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32*, i32** @tfm, align 8
  %9 = call i32 @crypto_free_comp(i32* %8)
  store i32* null, i32** @tfm, align 8
  br label %10

10:                                               ; preds = %7, %4, %0
  %11 = load i32*, i32** @big_oops_buf, align 8
  %12 = call i32 @kfree(i32* %11)
  store i32* null, i32** @big_oops_buf, align 8
  store i64 0, i64* @big_oops_buf_sz, align 8
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @crypto_free_comp(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_cache.c___fscache_release_cache_tag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_cache.c___fscache_release_cache_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cache_tag = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@fscache_addremove_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fscache_release_cache_tag(%struct.fscache_cache_tag* %0) #0 {
  %2 = alloca %struct.fscache_cache_tag*, align 8
  store %struct.fscache_cache_tag* %0, %struct.fscache_cache_tag** %2, align 8
  %3 = load %struct.fscache_cache_tag*, %struct.fscache_cache_tag** %2, align 8
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  %6 = call %struct.fscache_cache_tag* @ERR_PTR(i32 %5)
  %7 = icmp ne %struct.fscache_cache_tag* %3, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = call i32 @down_write(i32* @fscache_addremove_sem)
  %10 = load %struct.fscache_cache_tag*, %struct.fscache_cache_tag** %2, align 8
  %11 = getelementptr inbounds %struct.fscache_cache_tag, %struct.fscache_cache_tag* %10, i32 0, i32 1
  %12 = call i64 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.fscache_cache_tag*, %struct.fscache_cache_tag** %2, align 8
  %16 = getelementptr inbounds %struct.fscache_cache_tag, %struct.fscache_cache_tag* %15, i32 0, i32 0
  %17 = call i32 @list_del_init(i32* %16)
  br label %19

18:                                               ; preds = %8
  store %struct.fscache_cache_tag* null, %struct.fscache_cache_tag** %2, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = call i32 @up_write(i32* @fscache_addremove_sem)
  %21 = load %struct.fscache_cache_tag*, %struct.fscache_cache_tag** %2, align 8
  %22 = call i32 @kfree(%struct.fscache_cache_tag* %21)
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.fscache_cache_tag* @ERR_PTR(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.fscache_cache_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

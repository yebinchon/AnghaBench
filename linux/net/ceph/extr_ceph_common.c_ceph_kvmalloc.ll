; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_kvmalloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_kvmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__GFP_IO = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ceph_kvmalloc(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @__GFP_IO, align 4
  %10 = load i32, i32* @__GFP_FS, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = load i32, i32* @__GFP_IO, align 4
  %14 = load i32, i32* @__GFP_FS, align 4
  %15 = or i32 %13, %14
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @kvmalloc(i64 %18, i32 %19)
  store i8* %20, i8** %5, align 8
  br label %44

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @__GFP_IO, align 4
  %24 = load i32, i32* @__GFP_FS, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @__GFP_IO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = call i32 (...) @memalloc_nofs_save()
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kvmalloc(i64 %31, i32 %32)
  store i8* %33, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @memalloc_nofs_restore(i32 %34)
  br label %43

36:                                               ; preds = %21
  %37 = call i32 (...) @memalloc_noio_save()
  store i32 %37, i32* %7, align 4
  %38 = load i64, i64* %3, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kvmalloc(i64 %38, i32 %39)
  store i8* %40, i8** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @memalloc_noio_restore(i32 %41)
  br label %43

43:                                               ; preds = %36, %29
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i8*, i8** %5, align 8
  ret i8* %45
}

declare dso_local i8* @kvmalloc(i64, i32) #1

declare dso_local i32 @memalloc_nofs_save(...) #1

declare dso_local i32 @memalloc_nofs_restore(i32) #1

declare dso_local i32 @memalloc_noio_save(...) #1

declare dso_local i32 @memalloc_noio_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

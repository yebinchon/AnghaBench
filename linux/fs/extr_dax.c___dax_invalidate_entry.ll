; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c___dax_invalidate_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c___dax_invalidate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32 }

@xas = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@PAGECACHE_TAG_TOWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32, i32)* @__dax_invalidate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dax_invalidate_entry(%struct.address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @xas, align 4
  %10 = load %struct.address_space*, %struct.address_space** %4, align 8
  %11 = getelementptr inbounds %struct.address_space, %struct.address_space* %10, i32 0, i32 1
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @XA_STATE(i32 %9, i32* %11, i32 %12)
  store i32 0, i32* %7, align 4
  %14 = call i32 @xas_lock_irq(i32* @xas)
  %15 = call i8* @get_unlocked_entry(i32* @xas, i32 0)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @xa_is_value(i8* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %3
  br label %49

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %32 = call i64 @xas_get_mark(i32* @xas, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @PAGECACHE_TAG_TOWRITE, align 4
  %36 = call i64 @xas_get_mark(i32* @xas, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30
  br label %49

39:                                               ; preds = %34, %27
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.address_space*, %struct.address_space** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dax_disassociate_entry(i8* %40, %struct.address_space* %41, i32 %42)
  %44 = call i32 @xas_store(i32* @xas, i32* null)
  %45 = load %struct.address_space*, %struct.address_space** %4, align 8
  %46 = getelementptr inbounds %struct.address_space, %struct.address_space* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %39, %38, %26
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @put_unlocked_entry(i32* @xas, i8* %50)
  %52 = call i32 @xas_unlock_irq(i32* @xas)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @xas_lock_irq(i32*) #1

declare dso_local i8* @get_unlocked_entry(i32*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @xa_is_value(i8*) #1

declare dso_local i64 @xas_get_mark(i32*, i32) #1

declare dso_local i32 @dax_disassociate_entry(i8*, %struct.address_space*, i32) #1

declare dso_local i32 @xas_store(i32*, i32*) #1

declare dso_local i32 @put_unlocked_entry(i32*, i8*) #1

declare dso_local i32 @xas_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

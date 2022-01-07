; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_lock_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_lock_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.page = type { i32, %struct.address_space* }
%struct.address_space = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@xas = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dax_lock_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xas, i32 0, i32 0), align 8
  %6 = call i32 @XA_STATE(i32* %5, i32* null, i32 0)
  %7 = call i32 (...) @rcu_read_lock()
  br label %8

8:                                                ; preds = %49, %38, %1
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 1
  %11 = load %struct.address_space*, %struct.address_space** %10, align 8
  %12 = call %struct.address_space* @READ_ONCE(%struct.address_space* %11)
  store %struct.address_space* %12, %struct.address_space** %4, align 8
  store i8* null, i8** %3, align 8
  %13 = load %struct.address_space*, %struct.address_space** %4, align 8
  %14 = icmp ne %struct.address_space* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load %struct.address_space*, %struct.address_space** %4, align 8
  %17 = call i32 @dax_mapping(%struct.address_space* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %8
  br label %58

20:                                               ; preds = %15
  store i8* inttoptr (i64 -1 to i8*), i8** %3, align 8
  %21 = load %struct.address_space*, %struct.address_space** %4, align 8
  %22 = getelementptr inbounds %struct.address_space, %struct.address_space* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISCHR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %58

29:                                               ; preds = %20
  %30 = load %struct.address_space*, %struct.address_space** %4, align 8
  %31 = getelementptr inbounds %struct.address_space, %struct.address_space* %30, i32 0, i32 0
  store i32* %31, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xas, i32 0, i32 0), align 8
  %32 = call i32 @xas_lock_irq(%struct.TYPE_11__* @xas)
  %33 = load %struct.address_space*, %struct.address_space** %4, align 8
  %34 = load %struct.page*, %struct.page** %2, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 1
  %36 = load %struct.address_space*, %struct.address_space** %35, align 8
  %37 = icmp ne %struct.address_space* %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @xas_unlock_irq(%struct.TYPE_11__* @xas)
  br label %8

40:                                               ; preds = %29
  %41 = load %struct.page*, %struct.page** %2, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @xas_set(%struct.TYPE_11__* @xas, i32 %43)
  %45 = call i8* @xas_load(%struct.TYPE_11__* @xas)
  store i8* %45, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @dax_is_locked(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = call i32 (...) @rcu_read_unlock()
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @wait_entry_unlocked(%struct.TYPE_11__* @xas, i8* %51)
  %53 = call i32 (...) @rcu_read_lock()
  br label %8

54:                                               ; preds = %40
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @dax_lock_entry(%struct.TYPE_11__* @xas, i8* %55)
  %57 = call i32 @xas_unlock_irq(%struct.TYPE_11__* @xas)
  br label %58

58:                                               ; preds = %54, %28, %19
  %59 = call i32 (...) @rcu_read_unlock()
  %60 = load i8*, i8** %3, align 8
  %61 = ptrtoint i8* %60 to i32
  ret i32 %61
}

declare dso_local i32 @XA_STATE(i32*, i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.address_space* @READ_ONCE(%struct.address_space*) #1

declare dso_local i32 @dax_mapping(%struct.address_space*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @xas_lock_irq(%struct.TYPE_11__*) #1

declare dso_local i32 @xas_unlock_irq(%struct.TYPE_11__*) #1

declare dso_local i32 @xas_set(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @xas_load(%struct.TYPE_11__*) #1

declare dso_local i64 @dax_is_locked(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @wait_entry_unlocked(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dax_lock_entry(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_page_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_page_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.iomap_page = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @iomap_page_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomap_page_release(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.iomap_page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call %struct.iomap_page* @to_iomap_page(%struct.page* %4)
  store %struct.iomap_page* %5, %struct.iomap_page** %3, align 8
  %6 = load %struct.iomap_page*, %struct.iomap_page** %3, align 8
  %7 = icmp ne %struct.iomap_page* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.iomap_page*, %struct.iomap_page** %3, align 8
  %11 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %10, i32 0, i32 1
  %12 = call i32 @atomic_read(i32* %11)
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.iomap_page*, %struct.iomap_page** %3, align 8
  %15 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @ClearPagePrivate(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @set_page_private(%struct.page* %20, i32 0)
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = call i32 @put_page(%struct.page* %22)
  %24 = load %struct.iomap_page*, %struct.iomap_page** %3, align 8
  %25 = call i32 @kfree(%struct.iomap_page* %24)
  br label %26

26:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.iomap_page* @to_iomap_page(%struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.iomap_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

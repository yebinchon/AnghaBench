; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_try_to_release_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_try_to_release_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_to_release_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load %struct.address_space*, %struct.address_space** %8, align 8
  store %struct.address_space* %9, %struct.address_space** %6, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @PageLocked(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i64 @PageWriteback(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.address_space*, %struct.address_space** %6, align 8
  %22 = icmp ne %struct.address_space* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.address_space*, %struct.address_space** %6, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.page*, i32)**
  %29 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.page*, i32)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.address_space*, %struct.address_space** %6, align 8
  %33 = getelementptr inbounds %struct.address_space, %struct.address_space* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.page*, i32)**
  %37 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %36, align 8
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %37(%struct.page* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %23, %20
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @try_to_free_buffers(%struct.page* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %31, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

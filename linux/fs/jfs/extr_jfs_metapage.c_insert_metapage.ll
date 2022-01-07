; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_metapage.c_insert_metapage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_metapage.c_insert_metapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.metapage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.metapage*)* @insert_metapage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_metapage(%struct.page* %0, %struct.metapage* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.metapage*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.metapage* %1, %struct.metapage** %4, align 8
  %5 = load %struct.metapage*, %struct.metapage** %4, align 8
  %6 = icmp ne %struct.metapage* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = load %struct.metapage*, %struct.metapage** %4, align 8
  %10 = ptrtoint %struct.metapage* %9 to i64
  %11 = call i32 @set_page_private(%struct.page* %8, i64 %10)
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @SetPagePrivate(%struct.page* %12)
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @kmap(%struct.page* %14)
  br label %16

16:                                               ; preds = %7, %2
  ret i32 0
}

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @SetPagePrivate(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

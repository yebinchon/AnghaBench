; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32, i64*, i32 }
%struct.btree_geo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_head*, %struct.btree_geo*)* @btree_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_shrink(%struct.btree_head* %0, %struct.btree_geo* %1) #0 {
  %3 = alloca %struct.btree_head*, align 8
  %4 = alloca %struct.btree_geo*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.btree_head* %0, %struct.btree_head** %3, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %4, align 8
  %7 = load %struct.btree_head*, %struct.btree_head** %3, align 8
  %8 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.btree_head*, %struct.btree_head** %3, align 8
  %14 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %5, align 8
  %16 = load %struct.btree_geo*, %struct.btree_geo** %4, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = call i32 @getfill(%struct.btree_geo* %16, i64* %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.btree_geo*, %struct.btree_geo** %4, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = call i64* @bval(%struct.btree_geo* %23, i64* %24, i32 0)
  %26 = load %struct.btree_head*, %struct.btree_head** %3, align 8
  %27 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %26, i32 0, i32 1
  store i64* %25, i64** %27, align 8
  %28 = load %struct.btree_head*, %struct.btree_head** %3, align 8
  %29 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load %struct.btree_head*, %struct.btree_head** %3, align 8
  %34 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mempool_free(i64* %32, i32 %35)
  br label %37

37:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @getfill(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64* @bval(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @mempool_free(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

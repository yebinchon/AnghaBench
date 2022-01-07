; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_remove.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i64 }
%struct.btree_geo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @btree_remove(%struct.btree_head* %0, %struct.btree_geo* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.btree_head*, align 8
  %6 = alloca %struct.btree_geo*, align 8
  %7 = alloca i64*, align 8
  store %struct.btree_head* %0, %struct.btree_head** %5, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.btree_head*, %struct.btree_head** %5, align 8
  %9 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %18

13:                                               ; preds = %3
  %14 = load %struct.btree_head*, %struct.btree_head** %5, align 8
  %15 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = call i8* @btree_remove_level(%struct.btree_head* %14, %struct.btree_geo* %15, i64* %16, i32 1)
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i8*, i8** %4, align 8
  ret i8* %19
}

declare dso_local i8* @btree_remove_level(%struct.btree_head*, %struct.btree_geo*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
